$(function(){
/*function dragOverHandler(ev) {
  console.log('File(s) in drop zone'); 

  // Prevent default behavior (Prevent file from being opened)
  ev.preventDefault();
}*/
var sentAjax; // keep track of the last sent ajax request, so as to abort if the need arise;
$("#drop_zone").on('dragover', function (ev) {
  console.log('File(s) in drop zone'); 

  // Prevent default behavior (Prevent file from being opened)
  ev.preventDefault();
})

function pick(event, destination) {
  var x = event.layerX;
  var y = event.layerY;
  var pixel = ctx.getImageData(x, y, 1, 1);
  var data = pixel.data;
  console.log('data', data)
    r = data[0]; g = data[1]; b = data[2]; a = data[3];
    const rgba = `rgba(${r}, ${g}, ${b}, ${a / 255})`;
    destination.style.background = rgba;
    destination.textContent = rgba +' ' + hexify(r, g, b);
    if (r>255/2 && g>255/2 && b>255/2){ destination.style.color='black' }
    else { destination.style.color='white'}
    try{console.log(sentAjax.abort(), 'see am')}
    catch{}
    //try{ajax.abort(); console.log(ajax, 'exists already')}
    //catch(error) {console.error(error)}
    // make sure there are no pending ajax requests when about to request another one, don't comman crash my server
    ajax = $.ajax({
        type: 'POST',
        data: {'name': 'color-name', 'csrfmiddlewaretoken': csrf_token, 'rgb': `${r}, ${g}, ${b}`},
        success: function(data){
            console.log('success inc', data['color-name']);
            $('span.color-name').text(data['color-name']+' '+data['color-rgb']);
        }
    })
    sentAjax = ajax
}
    
var original = function() {
	ctx.drawImage(img, 0, 0);
};

var sepia = function() {
	ctx.drawImage(img, 0, 0);
	const imageData = ctx.getImageData(0, 0, canvas.width, canvas.height);
	const data = imageData.data;
	for (var i = 0; i < data.length; i += 4) {
		let red = data[i], green = data[i + 1], blue = data[i + 2];

		data[i] = Math.min(Math.round(0.393 * red + 0.769 * green + 0.189 * blue), 255);
		data[i + 1] = Math.min(Math.round(0.349 * red + 0.686 * green + 0.168 * blue), 255);
		data[i + 2] = Math.min(Math.round(0.272 * red + 0.534 * green + 0.131 * blue), 255);
	}
	ctx.putImageData(imageData, 0, 0);
}

var invert = function() {
	ctx.drawImage(img, 0, 0);
	const imageData = ctx.getImageData(0, 0, canvas.width, canvas.height);
	const data = imageData.data;
	for (var i = 0; i < data.length; i += 4) {
		data[i]     = 255 - data[i];     // red
		data[i + 1] = 255 - data[i + 1]; // green
		data[i + 2] = 255 - data[i + 2]; // blue
	}
	ctx.putImageData(imageData, 0, 0);
};

var grayscale = function() {
	ctx.drawImage(img, 0, 0);
	const imageData = ctx.getImageData(0, 0, canvas.width, canvas.height);
	const data = imageData.data;
	for (var i = 0; i < data.length; i += 4) {
		var avg = (data[i] + data[i + 1] + data[i + 2]) / 3;
		data[i]     = avg; // red
		data[i + 1] = avg; // green
		data[i + 2] = avg; // blue
	}
	ctx.putImageData(imageData, 0, 0);
};

const inputs = document.querySelectorAll('[name=color]');
for (const input of inputs) {
	input.addEventListener("change", function(evt) {
		switch (evt.target.value) {
			case "inverted":
				return invert();
			case "grayscale":
				return grayscale();
			case "sepia":
				return sepia();
			default:
				return original();
		}
	});
}

var canvas = $('#canvas');
cs = canvas[0]
var ctx = canvas[0].getContext('2d');
var dropZone = $("#drop_zone")
function componentToHex(c) {
  var hex = c.toString(16);
  return hex.length == 1 ? "0" + hex : hex;
}

function hexify(r, g, b) {
  return "#" + componentToHex(r) + componentToHex(g) + componentToHex(b);
}

function addToCanvas(file){
        var img = new Image();
        img.crossOrigin = 'anonymous';
        frd = new FileReader()
        frd.onload = function(e){
            console.log(e, e.target, 'reich')
            img.src = e.target.result
            //$('span.dimension').text(e.target.size)
        }
        console.log(frd)
        frd.readAsDataURL(file)
        //dropZone.empty()
        dropZone.css('width', 'auto')
        dropZone.css('height', 'auto')
        //image.appendTo(dropZone)
        
        img.onload = function() {
            console.log(img, img.width, img.height, $(window).height())
            if (img.height > $(window).height()) {
                    dropZone.css('position', 'initial')
                }
            cs.width=img.width
            cs.height=img.height
            dropZone.remove('p')
            $('p.drop-text').remove()
            $('#file-button').parent().remove()
        	ctx.drawImage(img, 0, 0);
        	canvas.removeClass('d-none')
        };
    }


$("#drop_zone").on('drop', function(ev) {
  ev = ev.originalEvent
  console.log('File(s) dropped');
  dropZone.css('position', 'relative')
  // Prevent default behavior (Prevent file from being opened in new tab by browser)
  ev.preventDefault();

  if (ev.dataTransfer.items) {
    // Use DataTransferItemList interface to access the file(s)
    for (var i = 0; i < ev.dataTransfer.items.length; i++) {
      // If dropped items aren't files, reject them
      item = ev.dataTransfer.items[i]
      if (item.kind === 'file') {
        var file = item.getAsFile();
        console.log('... file[' + i + '].name = ' + file.name, file, 'iff');
        addToCanvas(file)
        //image = $('<img>')
    
      }
    }
  } else {
    // Use DataTransfer interface to access the file(s)
    for (var i = 0; i < ev.dataTransfer.files.length; i++) {
      file = ev.dataTransfer.files[i]
      console.log('... file[' + i + '].name = ', file, typeof file, 'else');
    }
  }
})

cs.addEventListener('mousemove', function(event) {
    pick(event, $('span.color-preview')[0]);
});    

$("#file-button").on('click', function(){
    $("#file-select").click()    
})

$("#file-select").on('change', function(){
    file = $('#file-select')[0].files
    console.log(file[0], 'file it')
    if (file.length > 0){
        addToCanvas(file[0])
        
    }
})

})