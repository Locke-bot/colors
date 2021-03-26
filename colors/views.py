from django.shortcuts import render
from django.http import JsonResponse
import random, re, math, time
from functools import reduce
from .models import Color
# Create your views here.

x = [i for i in range(200)]
all_colors = list(Color.objects.all())

def subtract_list(a, b): # returns absolute, a is the reference
    abs_lst = []
    for i, val in enumerate(a):
        abs_lst.append(abs(a[i]-b[i]))
    return abs_lst

def calc_resultant(a):
    return math.sqrt(sum([i**2 for i in a]))

def color_adam(rgb): # a spin on namer, the input is an rgb array in that order.
    print(rgb, 'KGB')
    rgb_query = Color.objects.filter(rgb=rgb)
    print(rgb_query, '..,.,/,.')
    if rgb_query.exists():
        rgb_query = rgb_query[0]
        return rgb_query.name, rgb
    
    mini = float('inf')
    closest_color = None
    closest_rgb = None
    for color in all_colors:
        RGB = color.rgb
        diff_list = subtract_list(rgb, RGB)
        if mini > max(diff_list):
            mini = calc_resultant(diff_list)
            closest_color = color.name
            closest_rgb = RGB
    return closest_color, closest_rgb

def HomePageView(request):
    template_name = 'homepage.html'
    start = time.time()
    if request.is_ajax():
        post = request.POST
        print(post, 'postal service')
        if post.get('name') == 'color-name':
            ajax_rgb = [int(i) for i in post['rgb'].split(',')]
            res = color_adam(ajax_rgb) 
            # for some reason, [] was added somewhere along the pipeline
            print(res)
            print(f'ajax took {time.time() - start}')
            return JsonResponse({'color-name': res[0], 'color-rgb': res[1]})
    return render(request, template_name)