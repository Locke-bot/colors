toc.dat                                                                                             0000600 0004000 0002000 00000110013 14030052235 0014425 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           y            rainbow    13.2    13.2 j    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         @           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         A           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         B           1262    100817    rainbow    DATABASE     l   CREATE DATABASE rainbow WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United Kingdom.1252';
    DROP DATABASE rainbow;
                postgres    false         ?            1259    100849 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false         ?            1259    100847    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207         C           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206         ?            1259    100859    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false         ?            1259    100857    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209         D           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208         ?            1259    100841    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false         ?            1259    100839    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205         E           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204         ?            1259    108842    colors_color    TABLE     ?  CREATE TABLE public.colors_color (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    hex character varying(7) NOT NULL,
    rgb integer[] NOT NULL,
    hsl_sat character varying(5) NOT NULL,
    hsl_light character varying(5) NOT NULL,
    hsv_sat character varying(5) NOT NULL,
    hsv_val character varying(5) NOT NULL,
    hue character varying(10) NOT NULL
);
     DROP TABLE public.colors_color;
       public         heap    postgres    false         ?            1259    108840    colors_color_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.colors_color_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.colors_color_id_seq;
       public          postgres    false    220         F           0    0    colors_color_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.colors_color_id_seq OWNED BY public.colors_color.id;
          public          postgres    false    219         ?            1259    100893    colors_rainbowuser    TABLE     ?  CREATE TABLE public.colors_rainbowuser (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
 &   DROP TABLE public.colors_rainbowuser;
       public         heap    postgres    false         ?            1259    100906    colors_rainbowuser_groups    TABLE     ?   CREATE TABLE public.colors_rainbowuser_groups (
    id integer NOT NULL,
    rainbowuser_id integer NOT NULL,
    group_id integer NOT NULL
);
 -   DROP TABLE public.colors_rainbowuser_groups;
       public         heap    postgres    false         ?            1259    100904     colors_rainbowuser_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.colors_rainbowuser_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.colors_rainbowuser_groups_id_seq;
       public          postgres    false    213         G           0    0     colors_rainbowuser_groups_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.colors_rainbowuser_groups_id_seq OWNED BY public.colors_rainbowuser_groups.id;
          public          postgres    false    212         ?            1259    100891    colors_rainbowuser_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.colors_rainbowuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.colors_rainbowuser_id_seq;
       public          postgres    false    211         H           0    0    colors_rainbowuser_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.colors_rainbowuser_id_seq OWNED BY public.colors_rainbowuser.id;
          public          postgres    false    210         ?            1259    100914 #   colors_rainbowuser_user_permissions    TABLE     ?   CREATE TABLE public.colors_rainbowuser_user_permissions (
    id integer NOT NULL,
    rainbowuser_id integer NOT NULL,
    permission_id integer NOT NULL
);
 7   DROP TABLE public.colors_rainbowuser_user_permissions;
       public         heap    postgres    false         ?            1259    100912 *   colors_rainbowuser_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.colors_rainbowuser_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.colors_rainbowuser_user_permissions_id_seq;
       public          postgres    false    215         I           0    0 *   colors_rainbowuser_user_permissions_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.colors_rainbowuser_user_permissions_id_seq OWNED BY public.colors_rainbowuser_user_permissions.id;
          public          postgres    false    214         ?            1259    100951    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false         ?            1259    100949    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217         J           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216         ?            1259    100831    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false         ?            1259    100829    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203         K           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202         ?            1259    100820    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false         ?            1259    100818    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201         L           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200         ?            1259    100973    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false         d           2604    100852    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207         e           2604    100862    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209         c           2604    100844    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205         k           2604    108845    colors_color id    DEFAULT     r   ALTER TABLE ONLY public.colors_color ALTER COLUMN id SET DEFAULT nextval('public.colors_color_id_seq'::regclass);
 >   ALTER TABLE public.colors_color ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220         f           2604    100896    colors_rainbowuser id    DEFAULT     ~   ALTER TABLE ONLY public.colors_rainbowuser ALTER COLUMN id SET DEFAULT nextval('public.colors_rainbowuser_id_seq'::regclass);
 D   ALTER TABLE public.colors_rainbowuser ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211         g           2604    100909    colors_rainbowuser_groups id    DEFAULT     ?   ALTER TABLE ONLY public.colors_rainbowuser_groups ALTER COLUMN id SET DEFAULT nextval('public.colors_rainbowuser_groups_id_seq'::regclass);
 K   ALTER TABLE public.colors_rainbowuser_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213         h           2604    100917 &   colors_rainbowuser_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.colors_rainbowuser_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.colors_rainbowuser_user_permissions_id_seq'::regclass);
 U   ALTER TABLE public.colors_rainbowuser_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215         i           2604    100954    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217         b           2604    100834    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203         a           2604    100823    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201         /          0    100849 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207       3119.dat 1          0    100859    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209       3121.dat -          0    100841    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205       3117.dat <          0    108842    colors_color 
   TABLE DATA           e   COPY public.colors_color (id, name, hex, rgb, hsl_sat, hsl_light, hsv_sat, hsv_val, hue) FROM stdin;
    public          postgres    false    220       3132.dat 3          0    100893    colors_rainbowuser 
   TABLE DATA           ?   COPY public.colors_rainbowuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    211       3123.dat 5          0    100906    colors_rainbowuser_groups 
   TABLE DATA           Q   COPY public.colors_rainbowuser_groups (id, rainbowuser_id, group_id) FROM stdin;
    public          postgres    false    213       3125.dat 7          0    100914 #   colors_rainbowuser_user_permissions 
   TABLE DATA           `   COPY public.colors_rainbowuser_user_permissions (id, rainbowuser_id, permission_id) FROM stdin;
    public          postgres    false    215       3127.dat 9          0    100951    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217       3129.dat +          0    100831    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203       3115.dat )          0    100820    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201       3113.dat :          0    100973    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    218       3130.dat M           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206         N           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208         O           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 28, true);
          public          postgres    false    204         P           0    0    colors_color_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.colors_color_id_seq', 971, true);
          public          postgres    false    219         Q           0    0     colors_rainbowuser_groups_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.colors_rainbowuser_groups_id_seq', 1, false);
          public          postgres    false    212         R           0    0    colors_rainbowuser_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.colors_rainbowuser_id_seq', 1, false);
          public          postgres    false    210         S           0    0 *   colors_rainbowuser_user_permissions_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.colors_rainbowuser_user_permissions_id_seq', 1, false);
          public          postgres    false    214         T           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    216         U           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);
          public          postgres    false    202         V           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);
          public          postgres    false    200         y           2606    100889    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207         ~           2606    100875 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209         ?           2606    100864 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209         {           2606    100854    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207         t           2606    100866 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205         v           2606    100846 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205         ?           2606    108850    colors_color colors_color_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.colors_color
    ADD CONSTRAINT colors_color_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.colors_color DROP CONSTRAINT colors_color_pkey;
       public            postgres    false    220         ?           2606    100911 8   colors_rainbowuser_groups colors_rainbowuser_groups_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.colors_rainbowuser_groups
    ADD CONSTRAINT colors_rainbowuser_groups_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.colors_rainbowuser_groups DROP CONSTRAINT colors_rainbowuser_groups_pkey;
       public            postgres    false    213         ?           2606    100922 Y   colors_rainbowuser_groups colors_rainbowuser_groups_rainbowuser_id_group_id_03f00d0a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.colors_rainbowuser_groups
    ADD CONSTRAINT colors_rainbowuser_groups_rainbowuser_id_group_id_03f00d0a_uniq UNIQUE (rainbowuser_id, group_id);
 ?   ALTER TABLE ONLY public.colors_rainbowuser_groups DROP CONSTRAINT colors_rainbowuser_groups_rainbowuser_id_group_id_03f00d0a_uniq;
       public            postgres    false    213    213         ?           2606    100901 *   colors_rainbowuser colors_rainbowuser_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.colors_rainbowuser
    ADD CONSTRAINT colors_rainbowuser_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.colors_rainbowuser DROP CONSTRAINT colors_rainbowuser_pkey;
       public            postgres    false    211         ?           2606    100936 c   colors_rainbowuser_user_permissions colors_rainbowuser_user__rainbowuser_id_permissio_fe851296_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.colors_rainbowuser_user_permissions
    ADD CONSTRAINT colors_rainbowuser_user__rainbowuser_id_permissio_fe851296_uniq UNIQUE (rainbowuser_id, permission_id);
 ?   ALTER TABLE ONLY public.colors_rainbowuser_user_permissions DROP CONSTRAINT colors_rainbowuser_user__rainbowuser_id_permissio_fe851296_uniq;
       public            postgres    false    215    215         ?           2606    100919 L   colors_rainbowuser_user_permissions colors_rainbowuser_user_permissions_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.colors_rainbowuser_user_permissions
    ADD CONSTRAINT colors_rainbowuser_user_permissions_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.colors_rainbowuser_user_permissions DROP CONSTRAINT colors_rainbowuser_user_permissions_pkey;
       public            postgres    false    215         ?           2606    100903 2   colors_rainbowuser colors_rainbowuser_username_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.colors_rainbowuser
    ADD CONSTRAINT colors_rainbowuser_username_key UNIQUE (username);
 \   ALTER TABLE ONLY public.colors_rainbowuser DROP CONSTRAINT colors_rainbowuser_username_key;
       public            postgres    false    211         ?           2606    100960 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217         o           2606    100838 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203         q           2606    100836 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203         m           2606    100828 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201         ?           2606    100980 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    218         w           1259    100890    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207         |           1259    100886 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209                    1259    100887 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209         r           1259    100872 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205         ?           1259    100934 +   colors_rainbowuser_groups_group_id_f7027207    INDEX     u   CREATE INDEX colors_rainbowuser_groups_group_id_f7027207 ON public.colors_rainbowuser_groups USING btree (group_id);
 ?   DROP INDEX public.colors_rainbowuser_groups_group_id_f7027207;
       public            postgres    false    213         ?           1259    100933 1   colors_rainbowuser_groups_rainbowuser_id_64f36c5e    INDEX     ?   CREATE INDEX colors_rainbowuser_groups_rainbowuser_id_64f36c5e ON public.colors_rainbowuser_groups USING btree (rainbowuser_id);
 E   DROP INDEX public.colors_rainbowuser_groups_rainbowuser_id_64f36c5e;
       public            postgres    false    213         ?           1259    100948 :   colors_rainbowuser_user_permissions_permission_id_d70c909d    INDEX     ?   CREATE INDEX colors_rainbowuser_user_permissions_permission_id_d70c909d ON public.colors_rainbowuser_user_permissions USING btree (permission_id);
 N   DROP INDEX public.colors_rainbowuser_user_permissions_permission_id_d70c909d;
       public            postgres    false    215         ?           1259    100947 ;   colors_rainbowuser_user_permissions_rainbowuser_id_3ba17742    INDEX     ?   CREATE INDEX colors_rainbowuser_user_permissions_rainbowuser_id_3ba17742 ON public.colors_rainbowuser_user_permissions USING btree (rainbowuser_id);
 O   DROP INDEX public.colors_rainbowuser_user_permissions_rainbowuser_id_3ba17742;
       public            postgres    false    215         ?           1259    100920 )   colors_rainbowuser_username_ec5c6de6_like    INDEX     ?   CREATE INDEX colors_rainbowuser_username_ec5c6de6_like ON public.colors_rainbowuser USING btree (username varchar_pattern_ops);
 =   DROP INDEX public.colors_rainbowuser_username_ec5c6de6_like;
       public            postgres    false    211         ?           1259    100971 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217         ?           1259    100972 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217         ?           1259    100982 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    218         ?           1259    100981 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    218         ?           2606    100881 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    209    2934    205         ?           2606    100876 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    2939    207         ?           2606    100867 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2929    203    205         ?           2606    100923 S   colors_rainbowuser_groups colors_rainbowuser_g_rainbowuser_id_64f36c5e_fk_colors_ra    FK CONSTRAINT     ?   ALTER TABLE ONLY public.colors_rainbowuser_groups
    ADD CONSTRAINT colors_rainbowuser_g_rainbowuser_id_64f36c5e_fk_colors_ra FOREIGN KEY (rainbowuser_id) REFERENCES public.colors_rainbowuser(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.colors_rainbowuser_groups DROP CONSTRAINT colors_rainbowuser_g_rainbowuser_id_64f36c5e_fk_colors_ra;
       public          postgres    false    211    2947    213         ?           2606    100928 V   colors_rainbowuser_groups colors_rainbowuser_groups_group_id_f7027207_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.colors_rainbowuser_groups
    ADD CONSTRAINT colors_rainbowuser_groups_group_id_f7027207_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.colors_rainbowuser_groups DROP CONSTRAINT colors_rainbowuser_groups_group_id_f7027207_fk_auth_group_id;
       public          postgres    false    213    2939    207         ?           2606    100942 \   colors_rainbowuser_user_permissions colors_rainbowuser_u_permission_id_d70c909d_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.colors_rainbowuser_user_permissions
    ADD CONSTRAINT colors_rainbowuser_u_permission_id_d70c909d_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.colors_rainbowuser_user_permissions DROP CONSTRAINT colors_rainbowuser_u_permission_id_d70c909d_fk_auth_perm;
       public          postgres    false    205    2934    215         ?           2606    100937 ]   colors_rainbowuser_user_permissions colors_rainbowuser_u_rainbowuser_id_3ba17742_fk_colors_ra    FK CONSTRAINT     ?   ALTER TABLE ONLY public.colors_rainbowuser_user_permissions
    ADD CONSTRAINT colors_rainbowuser_u_rainbowuser_id_3ba17742_fk_colors_ra FOREIGN KEY (rainbowuser_id) REFERENCES public.colors_rainbowuser(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.colors_rainbowuser_user_permissions DROP CONSTRAINT colors_rainbowuser_u_rainbowuser_id_3ba17742_fk_colors_ra;
       public          postgres    false    211    2947    215         ?           2606    100961 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2929    203    217         ?           2606    100966 K   django_admin_log django_admin_log_user_id_c564eba6_fk_colors_rainbowuser_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_colors_rainbowuser_id FOREIGN KEY (user_id) REFERENCES public.colors_rainbowuser(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_colors_rainbowuser_id;
       public          postgres    false    2947    217    211                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             3119.dat                                                                                            0000600 0004000 0002000 00000000005 14030052235 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3121.dat                                                                                            0000600 0004000 0002000 00000000005 14030052235 0014225 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3117.dat                                                                                            0000600 0004000 0002000 00000002046 14030052235 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user	6	add_rainbowuser
22	Can change user	6	change_rainbowuser
23	Can delete user	6	delete_rainbowuser
24	Can view user	6	view_rainbowuser
25	Can add color	7	add_color
26	Can change color	7	change_color
27	Can delete color	7	delete_color
28	Can view color	7	view_color
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          3132.dat                                                                                            0000600 0004000 0002000 00000152572 14030052235 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Absolute Zero	#0048B	{0,72,186}	100%	37%	100%	73%	217
2	Acid green	#B0BF1	{176,191,26}	76%	43%	76%	43%	65
3	Aero	#7CB9E	{124,185,232}	70%	70%	47%	91%	206
4	Aero blue	#C0E8D	{192,232,213}	47%	83%	17.2%	91%	151.5
5	African violet	#B284B	{178,132,190}	31%	63%	31%	75%	288
6	Air superiority blue	#72A0C	{114,160,193}	39%	60%	41%	76%	205
7	Alabaster	#EDEAE	{237,234,224}	27%	90%	6%	93%	50
8	Alice blue	#F0F8F	{240,248,255}	100%	97%	6%	100%	208
9	Alloy orange	#C4621	{196,98,16}	85%	42%	92%	77%	27
10	Almond	#EFDEC	{239,222,205}	52%	87%	14%	94%	30
11	Amaranth	#E52B5	{229,43,80}	78%	53%	81%	90%	348
12	Amaranth (M&P)	#9F2B6	{159,43,104}	57%	40%	73%	62%	328
13	Amaranth pink	#F19CB	{241,156,187}	75%	78%	35%	95%	338
14	Amaranth purple	#AB274	{171,39,79}	63%	41%	77%	67%	342
15	Amaranth red	#D3212	{211,33,45}	73%	48%	84%	83%	356
16	Amazon	#3B7A5	{59,122,87}	35%	36%	52%	48%	147
17	Amber	#FFBF0	{255,191,0}	100%	50%	100%	100%	45
18	Amber (SAE/ECE)	#FF7E0	{255,126,0}	100%	50%	100%	100%	30
19	Amethyst	#9966C	{153,102,204}	50%	60%	50%	80%	270
20	Android green	#A4C63	{164,198,57}	55%	50%	71%	78%	74
21	Antique brass	#CD957	{205,149,117}	47%	63%	43%	80%	22
22	Antique bronze	#665D1	{102,93,30}	55%	26%	71%	40%	53
23	Antique fuchsia	#915C8	{145,92,131}	22%	46%	37%	57%	316
24	Antique ruby	#841B2	{132,27,45}	66%	31%	80%	52%	350
25	Antique white	#FAEBD	{250,235,215}	78%	91%	14%	98%	34
26	Ao (English)	#00800	{0,128,0}	100%	25%	100%	50%	120
27	Apple green	#8DB60	{141,182,0}	100%	36%	100%	71%	74
28	Apricot	#FBCEB	{251,206,177}	90%	84%	29%	98%	24
29	Aqua	#00FFF	{0,255,255}	100%	50%	100%	100%	180
30	Aquamarine	#7FFFD	{127,255,212}	100%	75%	50%	100%	160
31	Arctic lime	#D0FF1	{208,255,20}	100%	54%	92%	100%	72
32	Army green	#4B532	{75,83,32}	44%	23%	61%	33%	69
33	Artichoke	#8F977	{143,151,121}	13%	53%	20%	59%	76
34	Arylide yellow	#E9D66	{233,214,107}	74%	67%	54%	91%	51
35	Ash gray	#B2BEB	{178,190,181}	8%	72%	6%	75%	135
36	Asparagus	#87A96	{135,169,107}	26%	54%	37%	66%	93
37	Atomic tangerine	#FF996	{255,153,102}	100%	70%	60%	100%	20
38	Auburn	#A52A2	{165,42,42}	59%	41%	75%	65%	0
39	Aureolin	#FDEE0	{253,238,0}	100%	50%	100%	99%	56
40	Avocado	#56820	{86,130,3}	95%	26%	98%	51%	81
41	Azure	#007FF	{0,127,255}	100%	50%	100%	100%	210
42	Azure (X11/web color)	#F0FFF	{240,255,255}	100%	97%	6%	100%	180
43	Baby blue	#89CFF	{137,207,240}	77%	74%	43%	94%	199
44	Baby blue eyes	#A1CAF	{161,202,241}	74%	79%	33%	95%	209
45	Baby pink	#F4C2C	{244,194,194}	69%	86%	20%	96%	0
46	Baby powder	#FEFEF	{254,254,250}	67%	99%	2%	100%	60
47	Baker-Miller pink	#FF91A	{255,145,175}	100%	78%	43%	100%	344
48	Banana Mania	#FAE7B	{250,231,181}	87%	85%	28%	98%	43
49	Barbie Pink	#DA188	{218,24,132}	80%	48%	89%	85%	327
50	Barn red	#7C0A0	{124,10,2}	97%	25%	98%	49%	4
51	Battleship grey	#84848	{132,132,130}	1%	51%	2%	52%	60
52	Beau blue	#BCD4E	{188,212,230}	46%	82%	18%	90%	206
53	Beaver	#9F817	{159,129,112}	20%	53%	30%	62%	22
54	Beige	#F5F5D	{245,245,220}	56%	91%	10%	96%	60
55	B'dazzled blue	#2E589	{46,88,148}	53%	38%	69%	58%	215
56	Big dip o’ruby	#9C254	{156,37,66}	62%	38%	76%	61%	345
57	Bisque	#FFE4C	{255,228,196}	100%	88%	23%	100%	33
58	Bistre	#3D2B1	{61,43,31}	33%	18%	49%	24%	24
59	Bistre brown	#96711	{150,113,23}	73%	34%	85%	59%	43
60	Bitter lemon	#CAE00	{202,224,13}	89%	46%	94%	88%	66
61	Bitter lime	#BFFF0	{191,255,0}	100%	50%	100%	100%	75
62	Bittersweet	#FE6F5	{254,111,94}	99%	68%	63%	100%	6
63	Bittersweet shimmer	#BF4F5	{191,79,81}	47%	53%	59%	75%	359
64	Black	#00000	{0,0,0}	0%	0%	0%	0%	
65	Black bean	#3D0C0	{61,12,2}	94%	12%	97%	24%	10
66	Black chocolate	#1B181	{27,24,17}	23%	9%	37%	11%	42
67	Black coffee	#3B2F2	{59,47,47}	11%	21%	20%	23%	0
68	Black coral	#54626	{84,98,111}	14%	38%	24%	44%	209
69	Black olive	#3B3C3	{59,60,54}	5%	22%	10%	24%	70
70	Black Shadows	#BFAFB	{191,175,178}	11%	72%	8%	75%	349
71	Blanched almond	#FFEBC	{255,235,205}	100%	90%	20%	100%	36
72	Blast-off bronze	#A5716	{165,113,100}	27%	52%	39%	65%	12
73	Bleu de France	#318CE	{49,140,231}	79%	55%	79%	91%	210
74	Blizzard blue	#ACE5E	{172,229,238}	66%	80%	28%	93%	188
75	Blond	#FAF0B	{250,240,190}	86%	86%	24%	98%	50
76	Blood red	#66000	{102,0,0}	100%	20%	100%	40%	0
77	Blue	#0000F	{0,0,255}	100%	50%	100%	100%	240
78	Blue (Crayola)	#1F75F	{31,117,254}	99%	56%	88%	100%	217
79	Blue (Munsell)	#0093A	{0,147,175}	100%	34%	100%	69%	190
80	Blue (NCS)	#0087B	{0,135,189}	100%	37%	100%	74%	197
81	Blue (Pantone)	#0018A	{0,24,168}	100%	33%	100%	66%	231
82	Blue (pigment)	#33339	{51,51,153}	50%	40%	67%	60%	240
83	Blue (RYB)	#0247F	{2,71,254}	99%	50%	99%	100%	224
84	Blue bell	#A2A2D	{162,162,208}	33%	73%	22%	82%	240
85	Blue-gray	#6699C	{102,153,204}	50%	60%	50%	80%	210
86	Blue-green	#0D98B	{13,152,186}	87%	39%	93%	73%	192
87	Blue-green (color wheel)	#064E4	{6,78,64}	86%	17%	92%	31%	168
88	Blue jeans	#5DADE	{93,173,236}	79%	65%	61%	93%	206
89	Blue sapphire	#12618	{18,97,128}	75%	29%	86%	50%	197
90	Blue-violet	#8A2BE	{138,43,226}	76%	53%	81%	89%	271
91	Blue-violet (Crayola)	#7366B	{115,102,189}	40%	57%	46%	74%	249
92	Blue-violet (color wheel)	#4D1A7	{77,26,127}	66%	30%	46%	74%	270
93	Blue yonder	#5072A	{80,114,167}	35%	48%	52%	65%	217
94	Bluetiful	#3C69E	{60,105,231}	78%	57%	74%	91%	224
95	Blush	#DE5D8	{222,93,131}	66%	62%	58%	87%	342
96	Bole	#79443	{121,68,59}	34%	35%	51%	47%	9
97	Bone	#E3DAC	{227,218,201}	32%	84%	11%	89%	39
98	Bottle green	#006A4	{0,106,78}	100%	21%	100%	42%	164
99	Brandy	#87413	{135,65,63}	36%	39%	53%	53%	2
100	Brick red	#CB415	{203,65,84}	57%	53%	68%	80%	352
101	Bright green	#66FF0	{102,255,0}	100%	50%	100%	100%	96
102	Bright lilac	#D891E	{216,145,239}	75%	75%	39%	94%	285
103	Bright maroon	#C3214	{195,33,72}	71%	45%	83%	76%	346
104	Bright navy blue	#1974D	{25,116,210}	79%	46%	88%	82%	210
105	Bright yellow (Crayola)	#FFAA1	{255,170,29}	100%	56%	89%	100%	37
106	Brilliant rose	#FF55A	{255,85,163}	100%	67%	67%	100%	332
107	Brink pink	#FB607	{251,96,127}	95%	68%	62%	98%	348
108	British racing green	#00422	{0,66,37}	100%	13%	100%	26%	154
109	Bronze	#CD7F3	{205,127,50}	61%	50%	76%	80%	30
110	Brown	#88540	{136,84,11}	85%	29%	92%	53%	35
111	Brown sugar	#AF6E4	{175,110,77}	39%	49%	56%	69%	20
112	Brunswick green	#1B4D3	{27,77,62}	48%	20%	65%	30%	162
113	Bud green	#7BB66	{123,182,97}	37%	55%	47%	71%	102
114	Buff	#FFC68	{255,198,128}	100%	75%	50%	100%	33
115	Burgundy	#80002	{128,0,32}	100%	25%	100%	50%	345
116	Burlywood	#DEB88	{222,184,135}	57%	70%	39%	87%	34
117	Burnished brown	#A17A7	{161,122,116}	19%	54%	28%	63%	8
118	Burnt orange	#CC550	{204,85,0}	100%	40%	100%	80%	25
119	Burnt sienna	#E9745	{233,116,81}	78%	62%	65%	91%	14
120	Burnt umber	#8A332	{138,51,36}	59%	34%	74%	54%	9
121	Byzantine	#BD33A	{189,51,164}	58%	47%	73%	74%	311
122	Byzantium	#70296	{112,41,99}	46%	30%	63%	44%	311
123	Cadet	#53687	{83,104,114}	16%	39%	27%	45%	199
124	Cadet blue	#5F9EA	{95,158,160}	25%	50%	41%	63%	182
125	Cadet blue (Crayola)	#A9B2C	{169,178,195}	18%	71%	13%	76%	219
126	Cadet grey	#91A3B	{145,163,176}	16%	63%	18%	69%	205
127	Cadmium green	#006B3	{0,107,60}	100%	21%	100%	42%	154
128	Cadmium orange	#ED872	{237,135,45}	84%	55%	81%	93%	28
129	Cadmium red	#E3002	{227,0,34}	100%	45%	100%	89%	351
130	Cadmium yellow	#FFF60	{255,246,0}	100%	50%	100%	100%	58
131	Café au lait	#A67B5	{166,123,91}	30%	50%	45%	65%	26
132	Café noir	#4B362	{75,54,33}	39%	21%	56%	29%	30
133	Cambridge blue	#A3C1A	{163,193,173}	19%	70%	16%	76%	140
134	Camel	#C19A6	{193,154,107}	41%	59%	45%	76%	33
135	Cameo pink	#EFBBC	{239,187,204}	62%	84%	22%	94%	340
136	Canary	#FFFF9	{255,255,153}	100%	80%	40%	100%	60
137	Canary yellow	#FFEF0	{255,239,0}	100%	50%	100%	100%	56
138	Candy apple red	#FF080	{255,8,0}	100%	50%	100%	100%	2
139	Candy pink	#E4717	{228,113,122}	68%	67%	50%	89%	355
140	Capri	#00BFF	{0,191,255}	100%	50%	100%	100%	195
141	Caput mortuum	#59272	{89,39,32}	47%	24%	64%	35%	7
142	Cardinal	#C41E3	{196,30,58}	74%	44%	85%	77%	350
143	Caribbean green	#00CC9	{0,204,153}	100%	40%	100%	80%	165
144	Carmine	#96001	{150,0,24}	100%	29%	100%	59%	350
145	Carmine (M&P)	#D7004	{215,0,64}	100%	42%	100%	84%	342
146	Carnation pink	#FFA6C	{255,166,201}	100%	83%	35%	100%	336
147	Carnelian	#B31B1	{179,27,27}	74%	40%	85%	70%	0
148	Carolina blue	#56A0D	{86,160,211}	59%	58%	59%	83%	204
149	Carrot orange	#ED912	{237,145,33}	85%	53%	86%	93%	33
150	Castleton green	#00563	{0,86,63}	100%	17%	100%	34%	164
151	Catawba	#70364	{112,54,66}	35%	33%	52%	44%	348
152	Cedar Chest	#C95A4	{201,90,73}	54%	54%	64%	79%	8
153	Celadon	#ACE1A	{172,225,175}	47%	78%	24%	88%	123
154	Celadon blue	#007BA	{0,123,167}	100%	33%	100%	65%	196
155	Celadon green	#2F847	{47,132,124}	47%	35%	64%	52%	174
156	Celeste	#B2FFF	{178,255,255}	100%	85%	30%	100%	180
157	Celtic blue	#246BC	{36,107,206}	70%	48%	83%	81%	215
158	Cerise	#DE316	{222,49,99}	72%	53%	78%	87%	343
159	Cerulean	#007BA	{0,123,167}	100%	33%	100%	65%	196
160	Cerulean blue	#2A52B	{42,82,190}	64%	45%	78%	75%	224
161	Cerulean frost	#6D9BC	{109,155,195}	42%	60%	44%	76%	208
162	Cerulean (Crayola)	#1DACD	{29,172,214}	76%	48%	86%	84%	194
163	CG blue	#007AA	{0,122,165}	100%	32%	100%	65%	196
164	 CG red	#E03C3	{224,60,49}	74%	54%	78%	88%	4
165	Champagne	#F7E7C	{247,231,206}	72%	89%	17%	97%	37
166	Champagne pink	#F1DDC	{241,221,207}	55%	88%	14%	95%	25
167	Charcoal	#36454	{54,69,79}	19%	26%	32%	31%	204
168	Charleston green	#232B2	{35,43,43}	10%	15%	19%	17%	180
169	Charm pink	#E68FA	{230,143,172}	64%	73%	38%	90%	340
170	Chartreuse (traditional)	#DFFF0	{223,255,0}	100%	50%	100%	100%	68
171	Chartreuse (web)	#7FFF0	{127,255,0}	100%	50%	100%	100%	90
172	Cherry blossom pink	#FFB7C	{255,183,197}	100%	86%	28%	100%	348
173	Chestnut	#95453	{149,69,53}	48%	40%	64%	58%	10
174	Chili red	#E23D2	{226,61,40}	76%	52%	183%	125%	5
175	China pink	#DE6FA	{222,111,161}	63%	65%	50%	87%	333
176	China rose	#A8516	{168,81,110}	35%	49%	52%	66%	340
177	Chinese red	#AA381	{170,56,30}	70%	39%	82%	67%	11
178	Chinese violet	#85608	{133,96,136}	17%	46%	29%	53%	296
179	Chinese yellow	#FFB20	{255,178,0}	100%	50%	100%	100%	42
180	Chocolate (traditional)	#7B3F0	{123,63,0}	100%	24%	100%	48%	31
181	Chocolate (web)	#D2691	{210,105,30}	75%	47%	86%	82%	25
182	Chocolate Cosmos	#58111	{88,17,26}	68%	21%	80%	34%	352
183	Chrome yellow	#FFA70	{255,167,0}	100%	50%	100%	100%	39
184	Cinereous	#98817	{152,129,123}	12%	54%	19%	60%	12
185	Cinnabar	#E3423	{227,66,52}	76%	55%	77%	89%	5
186	Cinnamon Satin	#CD607	{205,96,126}	52%	59%	53%	80%	343
187	Citrine	#E4D00	{228,208,10}	92%	47%	96%	89%	54
188	Citron	#9FA91	{158,169,31}	69%	39%	82%	66%	64
189	Claret	#7F173	{127,23,52}	69%	29%	82%	50%	343
190	Cobalt blue	#0047A	{0,71,171}	100%	34%	100%	67%	215
191	Cocoa brown	#D2691	{210,105,30}	75%	47%	86%	82%	25
192	Coffee	#6F4E3	{111,78,55}	34%	33%	50%	44%	25
193	Columbia Blue	#B9D9E	{185,217,235}	56%	82%	21%	92%	202
194	Congo pink	#F8837	{248,131,121}	90%	72%	51%	97%	5
195	Cool grey	#8C92A	{140,146,172}	16%	61%	19%	67%	229
196	Copper	#B8733	{184,115,51}	57%	46%	72%	72%	29
197	Copper (Crayola)	#DA8A6	{218,138,103}	61%	63%	53%	85%	18
198	Copper penny	#AD6F6	{173,111,105}	29%	55%	39%	68%	5
199	Copper red	#CB6D5	{203,109,81}	54%	56%	60%	80%	14
200	Copper rose	#99666	{153,102,102}	20%	50%	33%	60%	0
201	Coquelicot	#FF380	{255,56,0}	100%	50%	100%	100%	13
202	Coral	#FF7F5	{255,127,80}	100%	66%	69%	100%	16
203	Coral pink	#F8837	{248,131,121}	90%	72%	51%	97%	5
204	Cordovan	#893F4	{137,63,69}	37%	39%	54%	54%	355
205	Corn	#FBEC5	{251,236,93}	95%	68%	63%	98%	54
206	Cornell red	#B31B1	{179,27,27}	74%	40%	85%	70%	0
207	Cornflower blue	#6495E	{100,149,237}	79%	66%	58%	93%	219
208	Cornsilk	#FFF8D	{255,248,220}	100%	93%	14%	100%	48
209	Cosmic cobalt	#2E2D8	{46,45,136}	50%	36%	67%	53%	241
210	Cosmic latte	#FFF8E	{255,248,231}	100%	95%	9%	100%	43
211	Coyote brown	#81613	{129,97,60}	37%	37%	52%	51%	32
212	Cotton candy	#FFBCD	{255,188,217}	100%	87%	26%	100%	334
213	Cream	#FFFDD	{255,253,208}	100%	91%	18%	100%	57
214	Crimson	#DC143	{220,20,60}	83%	47%	91%	86%	348
215	Crimson (UA)	#9E1B3	{158,27,50}	71%	36%	83%	62%	349
216	Crystal	#A7D8D	{167,216,222}	46%	76%	45%	87%	187
217	Cultured	#F5F5F	{245,245,245}	0%	96%	0%	96%	
218	Cyan	#00FFF	{0,255,255}	100%	50%	100%	100%	180
219	Cyan (process)	#00B7E	{0,183,235}	100%	46%	100%	92%	193
220	Cyber grape	#58427	{88,66,124}	31%	37%	47%	49%	263
221	Cyber yellow	#FFD30	{255,211,0}	100%	50%	100%	100%	50
222	Cyclamen	#F56FA	{245,111,161}	87%	70%	54%	96%	338
223	Dark blue-gray	#66669	{102,102,153}	20%	50%	33%	60%	240
224	Dark brown	#65432	{101,67,33}	51%	26%	67%	40%	30
225	Dark byzantium	#5D395	{93,57,84}	24%	29%	39%	36%	315
226	Dark cornflower blue	#26428	{38,66,139}	57%	35%	73%	55%	223
227	Dark cyan	#008B8	{0,139,139}	100%	27%	100%	55%	180
228	Dark electric blue	#53687	{83,104,120}	18%	40%	31%	47%	206
229	Dark goldenrod	#B8860	{184,134,11}	89%	38%	94%	72%	43
230	Dark green	#01322	{1,50,32}	96%	10%	98%	20%	158
231	Dark green (X11)	#00640	{0,100,0}	100%	20%	100%	39%	120
232	Dark jungle green	#1A242	{26,36,33}	16%	12%	28%	14%	162
233	Dark khaki	#BDB76	{189,183,107}	38%	58%	43%	74%	56
234	Dark lava	#483C3	{72,60,50}	18%	24%	31%	28%	27
235	Dark liver	#534B4	{83,75,79}	5%	31%	10%	33%	330
236	Dark liver (horses)	#543D3	{84,61,55}	21%	27%	35%	33%	12
237	Dark magenta	#8B008	{139,0,139}	100%	27%	100%	55%	300
238	Dark moss green	#4A5D2	{74,93,35}	45%	25%	62%	36%	80
239	Dark olive green	#556B2	{85,107,47}	39%	30%	56%	42%	82
240	Dark orange	#FF8C0	{255,140,0}	100%	50%	100%	100%	33
241	Dark orchid	#9932C	{153,50,204}	61%	50%	75%	80%	280
242	Dark pastel green	#03C03	{3,192,60}	97%	38%	98%	75%	138
243	Dark purple	#30193	{48,25,52}	35%	15%	51%	20%	291
244	Dark red	#8B000	{139,0,0}	100%	27%	100%	55%	0
245	Dark salmon	#E9967	{233,150,122}	72%	70%	48%	91%	15
246	Dark sea green	#8FBC8	{143,188,143}	25%	65%	24%	74%	120
247	Dark sienna	#3C141	{60,20,20}	50%	16%	67%	24%	0
248	Dark sky blue	#8CBED	{140,190,214}	47%	69%	35%	84%	199
249	Dark slate blue	#483D8	{72,61,139}	39%	39%	56%	55%	248
250	Dark slate gray	#2F4F4	{47,79,79}	25%	25%	41%	31%	180
251	Dark spring green	#17724	{23,114,69}	66%	27%	80%	45%	150
252	Dark turquoise	#00CED	{0,206,209}	100%	41%	100%	82%	181
253	Dark violet	#9400D	{148,0,211}	100%	41%	100%	83%	282
254	Dartmouth green	#00703	{0,112,60}	100%	22%	100%	44%	152
255	Davy's grey	#55555	{85,85,85}	0%	33%	0%	33%	
256	Deep cerise	#DA328	{218,50,135}	69%	53%	77%	85%	330
257	Deep champagne	#FAD6A	{250,214,165}	90%	81%	34%	98%	35
258	Deep chestnut	#B94E4	{185,78,72}	45%	50%	61%	73%	3
259	Deep jungle green	#004B4	{0,75,73}	100%	15%	100%	29%	178
260	Deep pink	#FF149	{255,20,147}	100%	54%	92%	100%	328
261	Deep saffron	#FF993	{255,153,51}	100%	60%	80%	100%	30
262	Deep sky blue	#00BFF	{0,191,255}	100%	50%	100%	100%	195
263	Deep Space Sparkle	#4A646	{74,100,108}	19%	36%	31%	42%	194
264	Deep taupe	#7E5E6	{126,94,96}	15%	43%	25%	49%	356
265	Denim	#1560B	{21,96,189}	80%	41%	89%	74%	213
266	Denim blue	#2243B	{34,67,182}	69%	42%	81%	71%	227
267	Desert	#C19A6	{193,154,107}	41%	59%	45%	76%	33
268	Desert sand	#EDC9A	{237,201,175}	63%	81%	26%	93%	25
269	Dim gray	#69696	{105,105,105}	0%	41%	0%	41%	
270	Dodger blue	#1E90F	{30,144,255}	100%	56%	88%	100%	210
271	Dogwood rose	#D7186	{215,24,104}	80%	47%	89%	84%	335
272	Drab	#96711	{150,113,23}	73%	34%	85%	59%	43
273	Duke blue	#00009	{0,0,156}	100%	31%	100%	61%	240
274	Dutch white	#EFDFB	{239,223,187}	62%	84%	22%	94%	42
275	Earth yellow	#E1A95	{225,169,95}	68%	63%	58%	88%	34
276	Ebony	#555D5	{85,93,80}	8%	34%	14%	36%	97
277	Ecru	#C2B28	{194,178,128}	35%	63%	34%	76%	45
278	Eerie black	#1B1B1	{27,27,27}	0%	11%	0%	11%	
279	Eggplant	#61405	{97,64,81}	20%	32%	34%	38%	329
280	Eggshell	#F0EAD	{240,234,214}	46%	89%	11%	94%	46
281	Egyptian blue	#1034A	{16,52,166}	82%	36%	90%	65%	226
282	Eigengrau	#16161	{22,22,29}	14%	10%	24%	11%	240
283	Electric blue	#7DF9F	{125,249,255}	100%	75%	51%	100%	183
284	Electric green	#00FF0	{0,255,0}	100%	50%	100%	100%	120
285	Electric indigo	#6F00F	{111,0,255}	100%	50%	100%	100%	266
286	Electric lime	#CCFF0	{204,255,0}	100%	50%	100%	100%	72
287	Electric purple	#BF00F	{191,0,255}	100%	50%	100%	100%	285
288	Electric violet	#8F00F	{143,0,255}	100%	50%	100%	100%	274
289	Emerald	#50C87	{80,200,120}	52%	55%	60%	78%	140
290	Eminence	#6C308	{108,48,130}	46%	35%	63%	51%	284
291	English green	#1B4D3	{27,77,62}	48%	20%	65%	30%	162
292	English lavender	#B4839	{180,131,149}	25%	61%	27%	71%	338
293	English red	#AB4B5	{171,75,82}	39%	48%	56%	67%	356
294	English vermillion	#CC474	{204,71,75}	57%	54%	65%	80%	358
295	English violet	#563C5	{86,60,92}	21%	30%	35%	36%	289
296	Erin	#00FF4	{0,255,64}	100%	50%	100%	100%	135
297	Eton blue	#96C8A	{150,200,162}	31%	69%	25%	78%	134
298	Fallow	#C19A6	{193,154,107}	41%	59%	45%	76%	33
299	Falu red	#80181	{128,24,24}	68%	30%	81%	50%	0
300	Fandango	#B5338	{181,51,137}	56%	45%	72%	71%	320
301	Fandango pink	#DE528	{222,82,133}	68%	60%	63%	87%	338
302	Fashion fuchsia	#F400A	{244,0,161}	100%	48%	100%	96%	320
303	Fawn	#E5AA7	{229,170,112}	69%	67%	51%	90%	30
304	Feldgrau	#4D5D5	{77,93,83}	9%	33%	17%	36%	143
305	Fern green	#4F794	{79,121,66}	29%	37%	45%	47%	106
306	Field drab	#6C541	{108,84,30}	57%	27%	72%	42%	42
307	Fiery rose	#FF547	{255,84,112}	100%	67%	67%	100%	350
308	Firebrick	#B2222	{178,34,34}	68%	42%	81%	70%	0
309	Fire engine red	#CE202	{206,32,41}	73%	47%	84%	81%	357
310	Fire opal	#E95C4	{233,92,75}	78%	60%	68%	91%	6
311	Flame	#E2582	{226,88,34}	77%	51%	85%	89%	17
312	Flax	#EEDC8	{238,220,130}	76%	72%	45%	93%	50
313	Flirt	#A2006	{162,0,109}	100%	32%	100%	64%	320
314	Floral white	#FFFAF	{255,250,240}	100%	97%	6%	100%	40
315	Fluorescent blue	#15F4E	{21,244,238}	91%	52%	91%	96%	178
316	Forest green (Crayola)	#5FA77	{95,167,119}	29%	51%	43%	65%	140
317	Forest green (traditional)	#01442	{1,68,33}	97%	14%	99%	27%	149
318	Forest green (web)	#228B2	{34,139,34}	61%	34%	76%	55%	120
319	French beige	#A67B5	{166,123,91}	30%	50%	45%	65%	26
320	French bistre	#856D4	{133,109,77}	27%	41%	42%	52%	34
321	French blue	#0072B	{0,114,187}	100%	37%	100%	73%	203
322	French fuchsia	#FD3F9	{253,63,146}	98%	62%	75%	99%	334
323	French lilac	#86608	{134,96,142}	19%	47%	32%	56%	290
324	French lime	#9EFD3	{158,253,56}	98%	61%	78%	99%	89
325	French mauve	#D473D	{212,115,212}	53%	64%	46%	83%	300
326	French pink	#FD6C9	{253,108,158}	97%	71%	57%	99%	339
327	French raspberry	#C72C4	{199,44,72}	64%	48%	78%	78%	349
328	French rose	#F64A8	{246,74,138}	91%	63%	70%	96%	338
329	French sky blue	#77B5F	{119,181,254}	99%	73%	53%	100%	212
330	French violet	#8806C	{136,6,206}	94%	42%	97%	81%	279
331	Frostbite	#E936A	{233,54,167}	80%	56%	77%	91%	322
332	Fuchsia	#FF00F	{255,0,255}	100%	50%	100%	100%	300
333	Fuchsia (Crayola)	#C154C	{193,84,193}	47%	54%	56%	76%	300
334	Fuchsia purple	#CC397	{204,57,123}	59%	51%	72%	80%	333
335	Fuchsia rose	#C7437	{199,67,117}	54%	52%	66%	78%	337
336	Fulvous	#E4840	{228,132,0}	100%	45%	100%	89%	35
337	Fuzzy Wuzzy	#87421	{135,66,31}	63%	33%	77%	53%	20
338	Gainsboro	#DCDCD	{220,220,220}	0%	86%	0%	86%	
339	Gamboge	#E49B0	{228,155,15}	88%	48%	93%	89%	39
340	Generic viridian	#007F6	{0,127,102}	100%	25%	100%	50%	168
341	Ghost white	#F8F8F	{248,248,255}	100%	99%	3%	100%	240
342	Glaucous	#6082B	{96,130,182}	37%	55%	47%	71%	216
343	Glossy grape	#AB92B	{171,146,179}	18%	64%	18%	70%	285
344	GO green	#00AB6	{0,171,102}	100%	34%	100%	67%	156
345	Gold	#A57C0	{165,124,0}	100%	32%	100%	65%	46
346	Gold (metallic)	#D4AF3	{212,175,55}	65%	52%	74%	83%	46
347	Gold (web) (Golden)	#FFD70	{255,215,0}	100%	50%	100%	100%	51
348	Gold (Crayola)	#E6BE8	{230,190,138}	65%	72%	40%	90%	34
349	Gold Fusion	#85754	{133,117,78}	26%	41%	41%	52%	43
350	Golden brown	#99651	{153,101,21}	76%	34%	86%	60%	36
351	Golden poppy	#FCC20	{252,194,0}	100%	49%	100%	99%	46
352	Golden yellow	#FFDF0	{255,223,0}	100%	50%	100%	100%	52
353	Goldenrod	#DAA52	{218,165,32}	74%	49%	85%	85%	43
354	Granite gray	#67676	{103,103,103}	0%	40%	0%	40%	
355	Granny Smith apple	#A8E4A	{168,228,160}	56%	76%	30%	89%	113
356	Gray (web)	#80808	{128,128,128}	0%	50%	0%	50%	
357	Gray (X11 gray)	#BEBEB	{190,190,190}	0%	75%	0%	75%	
358	Green	#00FF0	{0,255,0}	100%	50%	100%	100%	120
359	Green (Crayola)	#1CAC7	{28,172,120}	72%	39%	84%	67%	158
360	Green (web)	#00800	{0,128,0}	100%	25%	100%	50%	120
361	Green (Munsell)	#00A87	{0,168,119}	100%	33%	100%	66%	163
362	Green (NCS)	#009F6	{0,159,107}	100%	31%	100%	62%	160
363	Green (Pantone)	#00AD4	{0,173,67}	100%	34%	100%	68%	143
364	Green (pigment)	#00A55	{0,165,80}	100%	32%	100%	65%	149
365	Green (RYB)	#66B03	{102,176,50}	56%	44%	72%	69%	95
366	Green-blue	#1164B	{17,100,180}	83%	39%	91%	71%	209
367	Green-blue (Crayola)	#2887C	{40,135,200}	67%	47%	80%	78%	204
368	Green-cyan	#00996	{0,153,102}	100%	30%	100%	60%	160
369	Green Lizard	#A7F43	{167,244,50}	90%	58%	80%	96%	84
370	Green Sheen	#6EAEA	{110,174,161}	28%	56%	37%	68%	168
371	Green-yellow	#ADFF2	{173,255,47}	100%	59%	82%	100%	84
372	Green-yellow (Crayola)	#F0E89	{240,232,145}	76%	76%	40%	94%	55
373	Grullo	#A99A8	{169,154,134}	17%	59%	21%	66%	34
374	Gunmetal	#2a343	{42,52,57}	15%	19%	15%	19%	200
375	Han blue	#446CC	{68,108,207}	59%	54%	67%	81%	223
376	Han purple	#5218F	{82,24,250}	96%	54%	90%	98%	255
377	Hansa yellow	#E9D66	{233,214,107}	74%	67%	54%	91%	51
378	Harlequin	#3FFF0	{63,255,0}	100%	50%	100%	100%	105
379	Harvest gold	#DA910	{218,145,0}	100%	43%	100%	85%	40
380	Heat Wave	#FF7A0	{255,122,0}	100%	50%	100%	100%	29
381	Heliotrope	#DF73F	{223,115,255}	100%	73%	55%	100%	286
382	Heliotrope gray	#AA98A	{170,152,168}	10%	63%	11%	67%	303
383	Hollywood cerise	#F400A	{244,0,161}	100%	48%	100%	96%	320
384	Honeydew	#F0FFF	{240,255,240}	100%	97%	6%	100%	120
385	Honolulu blue	#006DB	{0,109,176}	100%	35%	100%	69%	203
386	Hooker's green	#49796	{73,121,107}	25%	38%	40%	47%	163
387	Hot magenta	#FF1DC	{255,29,206}	100%	56%	89%	100%	313
388	Hot pink	#FF69B	{255,105,180}	100%	71%	59%	100%	330
389	Hunter green	#355E3	{53,94,59}	28%	29%	44%	37%	129
390	Iceberg	#71A6D	{113,166,210}	52%	63%	46%	82%	207
391	Icterine	#FCF75	{252,247,94}	96%	68%	63%	99%	58
392	Illuminating emerald	#31917	{49,145,119}	49%	38%	66%	57%	164
393	Imperial red	#ED293	{237,41,57}	84%	55%	83%	93%	355
394	Inchworm	#B2EC5	{178,236,93}	79%	65%	61%	93%	84
395	Independence	#4C516	{76,81,109}	18%	36%	30%	43%	231
396	India green	#13880	{19,136,8}	89%	28%	94%	53%	115
397	Indian red	#CD5C5	{205,92,92}	53%	58%	55%	80%	0
398	Indian yellow	#E3A85	{227,168,87}	71%	62%	62%	89%	35
399	Indigo	#4B008	{75,0,130}	100%	26%	100%	51%	266
400	Indigo dye	#00416	{0,65,106}	100%	21%	100%	42%	203
401	International orange (aerospace)	#FF4F0	{255,79,0}	100%	50%	100%	100%	19
402	International orange (engineering)	#BA160	{186,22,12}	88%	39%	94%	73%	3
403	International orange (Golden Gate Bridge)	#C0362	{192,54,44}	63%	46%	77%	75%	4
404	Iris	#5A4FC	{90,79,207}	57%	56%	62%	81%	245
405	Irresistible	#B3446	{179,68,108}	45%	48%	62%	70%	338
406	Isabelline	#F4F0E	{244,240,236}	27%	94%	3%	96%	30
407	Italian sky blue	#B2FFF	{178,255,255}	100%	85%	30%	100%	180
408	Ivory	#FFFFF	{255,255,240}	100%	97%	6%	100%	60
409	Jade	#00A86	{0,168,107}	100%	33%	100%	66%	158
410	Japanese carmine	#9D293	{157,41,51}	59%	39%	74%	62%	355
411	Japanese violet	#5B325	{91,50,86}	29%	28%	45%	36%	307
412	Jasmine	#F8DE7	{248,222,126}	90%	73%	49%	97%	47
413	Jazzberry jam	#A50B5	{165,11,94}	88%	35%	93%	65%	328
414	Jet	#34343	{52,52,52}	0%	20%	0%	20%	
415	Jonquil	#F4CA1	{244,202,22}	91%	52%	91%	96%	49
416	June bud	#BDDA5	{189,218,87}	64%	60%	60%	85%	73
417	Jungle green	#29AB8	{41,171,135}	61%	42%	76%	67%	163
418	Kelly green	#4CBB1	{76,187,23}	78%	41%	88%	73%	101
419	Keppel	#3AB09	{58,176,158}	50%	46%	67%	69%	171
420	Key lime	#E8F48	{232,244,140}	83%	75%	43%	96%	67
421	Khaki (web)	#C3B09	{195,176,145}	29%	67%	26%	76%	37
422	Khaki (X11) (Light khaki)	#F0E68	{240,230,140}	77%	75%	42%	94%	54
423	Kobe	#882D1	{136,45,23}	71%	31%	83%	53%	12
424	Kobi	#E79FC	{231,159,196}	60%	76%	31%	91%	329
425	Kobicha	#6B442	{107,68,35}	51%	28%	67%	42%	28
426	Kombu green	#35423	{53,66,48}	16%	22%	27%	26%	103
427	KSU purple	#51288	{79,38,131}	55%	33%	71%	53%	266
428	Languid lavender	#D6CAD	{214,202,221}	22%	83%	9%	87%	278
429	Lapis lazuli	#26619	{38,97,156}	61%	38%	76%	61%	210
430	Laser lemon	#FFFF6	{255,255,102}	100%	70%	60%	100%	60
431	Laurel green	#A9BA9	{169,186,157}	17%	67%	16%	73%	95
432	Lava	#CF102	{207,16,32}	86%	44%	92%	81%	355
433	Lavender (floral)	#B57ED	{181,126,220}	57%	68%	43%	86%	275
434	Lavender (web)	#E6E6F	{230,230,250}	67%	94%	8%	98%	240
435	Lavender blue	#CCCCF	{204,204,255}	100%	90%	20%	100%	240
436	Lavender blush	#FFF0F	{255,240,245}	100%	97%	6%	100%	340
437	Lavender gray	#C4C3D	{196,195,208}	12%	79%	6%	82%	245
438	Lawn green	#7CFC0	{124,252,0}	100%	49%	100%	99%	90
439	Lemon	#FFF70	{255,247,0}	100%	50%	100%	100%	58
440	Lemon chiffon	#FFFAC	{255,250,205}	100%	90%	20%	100%	54
441	Lemon curry	#CCA01	{204,160,29}	75%	46%	86%	80%	45
442	Lemon glacier	#FDFF0	{253,255,0}	100%	50%	100%	100%	60
443	Lemon meringue	#F6EAB	{246,234,190}	76%	85%	23%	96%	47
444	Lemon yellow	#FFF44	{255,244,79}	100%	65%	69%	100%	56
445	Lemon yellow (Crayola)	#FFFF9	{255,255,159}	100%	81%	38%	100%	60
446	Liberty	#545AA	{84,90,167}	33%	49%	50%	65%	236
447	Light blue	#ADD8E	{173,216,230}	53%	79%	25%	90%	195
448	Light coral	#F0808	{240,128,128}	79%	72%	47%	94%	0
449	Light cornflower blue	#93CCE	{147,204,234}	67%	75%	37%	92%	201
450	Light cyan	#E0FFF	{224,255,255}	100%	94%	12%	100%	180
451	Light French beige	#C8AD7	{200,173,127}	40%	64%	37%	78%	38
452	Light goldenrod yellow	#FAFAD	{250,250,210}	80%	90%	16%	98%	60
453	Light gray	#D3D3D	{211,211,211}	0%	83%	0%	83%	
454	Light green	#90EE9	{144,238,144}	73%	75%	39%	93%	120
455	Light orange	#FED8B	{254,216,177}	98%	85%	30%	100%	30
456	Light periwinkle	#C5CBE	{197,203,225}	32%	83%	12%	88%	228
457	Light pink	#FFB6C	{255,182,193}	100%	86%	29%	100%	351
458	Light salmon	#FFA07	{255,160,122}	100%	74%	52%	100%	17
459	Light sea green	#20B2A	{32,178,170}	70%	41%	82%	70%	177
460	Light sky blue	#87CEF	{135,206,250}	92%	75%	46%	98%	203
461	Light slate gray	#77889	{119,136,153}	14%	53%	22%	60%	210
462	Light steel blue	#B0C4D	{176,196,222}	41%	78%	21%	87%	214
463	Light yellow	#FFFFE	{255,255,224}	100%	94%	12%	100%	60
464	Lilac	#C8A2C	{200,162,200}	26%	71%	19%	78%	300
465	Lilac Luster	#AE98A	{174,152,170}	12%	64%	13%	68%	311
466	Lime (color wheel)	#BFFF0	{191,255,0}	100%	50%	100%	100%	75
467	Lime (web) (X11 green)	#00FF0	{0,255,0}	100%	50%	100%	100%	120
468	Lime green	#32CD3	{50,205,50}	61%	50%	76%	80%	120
469	Lincoln green	#19590	{25,89,5}	89%	18%	94%	35%	106
470	Linen	#FAF0E	{250,240,230}	67%	94%	8%	98%	30
471	Lion	#C19A6	{193,154,107}	41%	59%	45%	76%	33
472	Liseran purple	#DE6FA	{222,111,161}	63%	65%	50%	87%	333
473	Little boy blue	#6CA0D	{108,160,220}	62%	64%	51%	86%	212
474	Liver	#674C4	{103,76,71}	18%	34%	31%	40%	9
475	Liver (dogs)	#B86D2	{184,109,41}	64%	44%	78%	72%	29
476	Liver (organ)	#6C2E1	{108,46,31}	55%	27%	71%	42%	12
477	Liver chestnut	#98745	{152,116,86}	28%	47%	43%	60%	27
478	Livid	#6699C	{102,153,204}	50%	60%	50%	80%	210
479	Macaroni and Cheese	#FFBD8	{255,189,136}	100%	77%	47%	100%	27
480	Madder Lake	#CC333	{204,51,54}	60%	50%	75%	80%	359
481	Magenta	#FF00F	{255,0,255}	100%	50%	100%	100%	300
482	Magenta (Crayola)	#F653A	{246,83,166}	90%	65%	66%	97%	329
483	Magenta (dye)	#CA1F7	{202,31,123}	73%	46%	85%	79%	328
484	Magenta (Pantone)	#D0417	{208,65,126}	60%	54%	69%	82%	334
485	Magenta (process)	#FF009	{255,0,144}	100%	50%	100%	100%	326
486	Magenta haze	#9F457	{159,69,118}	39%	45%	57%	62%	327
487	Magic mint	#AAF0D	{170,240,209}	70%	80%	29%	94%	153
488	Magnolia	#F2E8D	{242,232,215}	51%	90%	11%	95%	38
489	Mahogany	#C0400	{192,64,0}	100%	38%	100%	75%	20
490	Maize	#FBEC5	{251,236,93}	95%	67%	63%	98%	54
491	Maize (Crayola)	#F2C64	{242,198,73}	87%	62%	70%	95%	44
492	Majorelle blue	#6050D	{96,80,220}	67%	59%	64%	86%	247
493	Malachite	#0BDA5	{11,218,81}	90%	45%	95%	85%	140
494	Manatee	#979AA	{151,154,170}	10%	63%	11%	67%	231
495	Mandarin	#F37A4	{243,122,72}	88%	62%	70%	95%	18
496	Mango	#FDBE0	{253,190,2}	98%	50%	99%	99%	46
497	Mango Tango	#FF824	{255,130,67}	100%	63%	74%	100%	20
498	Mantis	#74C36	{116,195,101}	44%	58%	48%	76%	110
499	Mardi Gras	#88008	{136,0,133}	100%	27%	100%	53%	301
500	Marigold	#EAA22	{234,162,33}	83%	52%	85%	91%	39
501	Maroon (Crayola)	#C3214	{195,33,72}	71%	45%	83%	76%	346
502	Maroon (web)	#80000	{128,0,0}	100%	25%	100%	50%	0
503	Maroon (X11)	#B0306	{176,48,96}	57%	44%	73%	69%	338
504	Mauve	#E0B0F	{224,176,255}	100%	85%	31%	100%	276
505	Mauve taupe	#915F6	{145,95,109}	21%	47%	34%	57%	343
506	Mauvelous	#EF98A	{239,152,170}	73%	77%	36%	94%	348
507	Maximum blue	#47ABC	{71,171,204}	57%	54%	65%	80%	195
508	Maximum blue green	#30BFB	{48,191,191}	60%	47%	75%	75%	180
509	Maximum blue purple	#ACACE	{172,172,230}	54%	79%	25%	90%	240
510	Maximum green	#5E8C3	{94,140,49}	48%	37%	65%	55%	90
511	Maximum green yellow	#D9E65	{217,230,80}	75%	61%	65%	90%	65
512	Maximum purple	#73338	{115,51,128}	43%	35%	60%	50%	290
513	Maximum red	#D9212	{217,33,33}	74%	49%	85%	85%	0
514	Maximum red purple	#A63A7	{166,58,121}	48%	44%	65%	65%	325
515	Maximum yellow	#FAFA3	{250,250,55}	95%	60%	78%	98%	60
516	Maximum yellow red	#F2BA4	{242,186,73}	87%	62%	70%	95%	40
517	May green	#4C914	{76,145,65}	38%	41%	55%	57%	112
518	Maya blue	#73C2F	{115,194,251}	94%	72%	54%	98%	205
519	Medium aquamarine	#66DDA	{102,221,170}	64%	63%	54%	87%	154
520	Medium blue	#0000C	{0,0,205}	100%	40%	100%	80%	240
521	Medium candy apple red	#E2062	{226,6,44}	95%	45%	97%	89%	350
522	Medium carmine	#AF403	{175,64,53}	54%	45%	70%	69%	5
523	Medium champagne	#F3E5A	{243,229,171}	75%	81%	30%	95%	48
524	Medium orchid	#BA55D	{186,85,211}	59%	58%	60%	83%	288
525	Medium purple	#9370D	{147,112,219}	60%	65%	49%	86%	260
526	Medium sea green	#3CB37	{60,179,113}	50%	47%	66%	70%	147
527	Medium slate blue	#7B68E	{123,104,238}	80%	67%	56%	93%	249
528	Medium spring green	#00FA9	{0,250,154}	100%	49%	100%	98%	157
529	Medium turquoise	#48D1C	{72,209,204}	60%	55%	66%	82%	178
530	Medium violet-red	#C7158	{199,21,133}	81%	43%	89%	78%	322
531	Mellow apricot	#F8B87	{248,184,120}	90%	72%	52%	97%	30
532	Mellow yellow	#F8DE7	{248,222,126}	90%	73%	49%	97%	47
533	Melon	#FEBAA	{254,186,173}	98%	84%	32%	100%	10
534	Metallic gold	#D3AF3	{211,175,55}	64%	52%	74%	83%	46
535	Metallic Seaweed	#0A7E8	{10,126,140}	87%	29%	93%	55%	186
536	Metallic Sunburst	#9C7C3	{156,124,56}	47%	42%	64%	61%	41
537	Mexican pink	#E4007	{228,0,124}	100%	45%	100%	89%	327
538	Middle blue	#7ED4E	{126,212,230}	68%	70%	45%	90%	190
539	Middle blue green	#8DD9C	{141,217,204}	50%	70%	35%	85%	170
540	Middle blue purple	#8B72B	{139,114,190}	37%	60%	40%	75%	260
541	Middle grey	#8B868	{139,134,128}	5%	52%	8%	55%	33
542	Middle green	#4D8C5	{77,140,87}	29%	43%	45%	55%	130
543	Middle green yellow	#ACBF6	{172,191,96}	43%	56%	50%	75%	72
544	Middle purple	#D982B	{217,130,181}	53%	68%	40%	85%	325
545	Middle red	#E58E7	{229,144,115}	69%	68%	50%	90%	15
546	Middle red purple	#A5535	{165,83,83}	33%	49%	50%	65%	0
547	Middle yellow	#FFEB0	{255,235,0}	100%	50%	100%	100%	55
548	Middle yellow red	#ECB17	{236,177,118}	76%	69%	50%	93%	30
549	Midnight	#70267	{112,38,112}	49%	29%	66%	44%	300
550	Midnight blue	#19197	{25,25,112}	64%	27%	78%	44%	240
551	Midnight green (eagle green)	#00495	{0,73,83}	100%	16%	100%	33%	187
552	Mikado yellow	#FFC40	{255,196,12}	100%	52%	95%	100%	45
553	Mimi pink	#FFDAE	{255,218,233}	100%	93%	15%	100%	336
554	Mindaro	#E3F98	{227,249,136}	90%	75%	45%	98%	72
555	Ming	#36747	{54,116,125}	40%	35%	56%	49%	188
556	Minion yellow	#F5E05	{245,220,80}	89%	64%	67%	96%	52
557	Mint	#3EB48	{62,180,137}	49%	47%	66%	71%	158
558	Mint cream	#F5FFF	{245,255,250}	100%	98%	4%	100%	150
559	Mint green	#98FF9	{152,255,152}	100%	80%	40%	100%	120
560	Misty moss	#BBB47	{187,180,119}	33%	60%	36%	73%	54
561	Misty rose	#FFE4E	{255,228,225}	100%	94%	12%	100%	6
562	Mode beige	#96711	{150,113,23}	73%	34%	85%	59%	43
563	Morning blue	#8DA39	{141,163,153}	11%	60%	14%	64%	153
564	Moss green	#8A9A5	{138,154,91}	26%	48%	41%	60%	75
565	Mountain Meadow	#30BA8	{48,186,143}	59%	46%	74%	73%	161
566	Mountbatten pink	#997A8	{153,122,141}	13%	54%	20%	60%	323
567	MSU green	#18453	{24,69,59}	48%	18%	65%	27%	167
568	Mulberry	#C54B8	{197,75,140}	51%	53%	62%	77%	328
569	Mulberry (Crayola)	#C8509	{200,80,155}	52%	55%	60%	78%	323
570	Mustard	#FFDB5	{255,219,88}	100%	67%	65%	100%	47
571	Myrtle green	#31787	{49,120,115}	42%	33%	59%	47%	176
572	Mystic	#D6528	{214,82,130}	62%	58%	62%	84%	338
573	Mystic maroon	#AD437	{173,67,121}	44%	47%	62%	68%	329
574	Nadeshiko pink	#F6ADC	{246,173,198}	80%	82%	80%	82%	339
575	Naples yellow	#FADA5	{250,218,94}	94%	67%	62%	98%	48
576	Navajo white	#FFDEA	{255,222,173}	100%	84%	32%	100%	36
577	Navy blue	#00008	{0,0,128}	100%	25%	100%	50%	240
578	Navy blue (Crayola)	#1974D	{25,116,210}	79%	46%	88%	82%	210
579	Neon blue	#4666F	{70,102,255}	100%	64%	73%	100%	230
580	Neon Carrot	#FFA34	{255,163,67}	100%	63%	74%	100%	31
581	Neon green	#39FF1	{57,255,20}	100%	54%	92%	100%	111
582	Neon fuchsia	#FE416	{254,65,100}	99%	63%	74%	100%	349
583	New York pink	#D7837	{215,131,127}	52%	67%	41%	84%	3
584	Nickel	#72747	{114,116,114}	1%	45%	2%	46%	120
585	Non-photo blue	#A4DDE	{164,221,237}	67%	79%	31%	93%	193
586	Nyanza	#E9FFD	{233,255,219}	100%	93%	14%	100%	97
587	Ocean Blue	#4F42B	{79,66,181}	47%	48%	64%	71%	247
588	Ocean green	#48BF9	{72,191,145}	48%	52%	62%	75%	157
589	Ochre	#CC772	{204,119,34}	71%	47%	83%	80%	30
590	Old burgundy	#43302	{67,48,46}	19%	22%	31%	26%	6
591	Old gold	#CFB53	{207,181,59}	61%	52%	71%	81%	49
592	Old lace	#FDF5E	{253,245,230}	85%	95%	9%	99%	39
593	Old lavender	#79687	{121,104,120}	8%	44%	14%	47%	304
594	Old mauve	#67314	{103,49,71}	36%	30%	52%	40%	336
595	Old rose	#C0808	{192,128,129}	34%	63%	33%	75%	359
596	Old silver	#84848	{132,132,130}	1%	51%	2%	52%	60
597	Olive	#80800	{128,128,0}	100%	25%	100%	50%	60
598	Olive Drab (#3)	#6B8E2	{107,142,35}	61%	35%	75%	56%	80
599	Olive Drab #7	#3C341	{60,52,31}	32%	18%	48%	24%	43
600	Olive green	#B5B35	{181,179,92}	38%	54%	49%	71%	59
601	Olivine	#9AB97	{154,185,115}	33%	59%	38%	73%	87
602	Onyx	#35383	{53,56,57}	4%	22%	7%	22%	195
603	Opal	#A8C3B	{168,195,188}	18%	71%	14%	76%	164
604	Opera mauve	#B784A	{183,132,167}	26%	62%	28%	72%	319
605	Orange	#FF7F0	{255,127,0}	100%	50%	100%	100%	30
606	Orange (Crayola)	#FF753	{255,117,56}	100%	61%	78%	100%	18
607	Orange (Pantone)	#FF580	{255,88,0}	100%	50%	100%	100%	21
608	Orange (web)	#FFA50	{255,165,0}	100%	50%	100%	100%	39
609	Orange peel	#FF9F0	{255,159,0}	100%	50%	100%	100%	37
610	Orange-red	#FF681	{255,104,31}	100%	56%	88%	100%	20
611	Orange-red (Crayola)	#FF534	{255,83,73}	100%	64%	71%	100%	4
612	Orange soda	#FA5B3	{250,91,61}	95%	61%	76%	98%	10
613	Orange-yellow	#F5BD1	{245,189,31}	92%	54%	87%	96%	44
614	Orange-yellow (Crayola)	#F8D56	{248,213,104}	91%	69%	58%	97%	45
615	Orchid	#DA70D	{218,112,214}	59%	65%	49%	85%	302
616	Orchid pink	#F2BDC	{242,189,205}	67%	85%	22%	95%	342
617	Orchid (Crayola)	#E29CD	{226,156,210}	55%	75%	31%	89%	314
618	Outer space (Crayola)	#2D383	{45,56,58}	13%	20%	22%	23%	189
619	Outrageous Orange	#FF6E4	{255,110,74}	100%	65%	71%	100%	12
620	Oxblood	#4A000	{74,0,0}	100%	15%	100%	29%	0
621	Oxford blue	#00214	{0,33,71}	100%	14%	100%	28%	212
622	OU Crimson red	#84161	{132,22,23}	71%	30%	83%	52%	360
623	Pacific blue	#1CA9C	{28,169,201}	76%	45%	86%	79%	191
624	Pakistan green	#00660	{0,102,0}	100%	20%	100%	40%	120
625	Palatinate purple	#68286	{104,40,96}	44%	28%	62%	41%	308
626	Pale aqua	#BCD4E	{188,212,230}	46%	82%	18%	90%	206
627	Pale cerulean	#9BC4E	{155,196,226}	55%	75%	31%	89%	205
628	Pale Dogwood	#ED7A9	{237,122,155}	76%	70%	48%	92%	334
629	Pale pink	#FADAD	{250,218,221}	76%	92%	13%	98%	354
630	Pale purple (Pantone)	#FAE6F	{250,230,250}	67%	94%	8%	98%	300
631	Pale silver	#C9C0B	{201,192,187}	12%	76%	7%	79%	21
632	Pale spring bud	#ECEBB	{236,235,189}	55%	83%	20%	93%	59
633	Pansy purple	#78184	{120,24,74}	67%	28%	80%	47%	329
634	Paolo Veronese green	#009B7	{0,155,125}	100%	30%	100%	61%	168
635	Papaya whip	#FFEFD	{255,239,213}	100%	92%	16%	100%	37
636	Paradise pink	#E63E6	{230,62,98}	77%	57%	73%	90%	347
637	Parchment	#F1E9D	{241,233,210}	53%	88%	13%	95%	45
638	Paris Green	#50C87	{80,200,120}	52%	55%	60%	78%	140
639	Pastel pink	#DEA5A	{222,165,164}	47%	76%	26%	87%	1
640	Patriarch	#80008	{128,0,128}	100%	25%	100%	50%	300
641	Payne's grey	#53687	{83,104,120}	18%	40%	31%	47%	206
642	Peach	#FFE5B	{255,229,180}	100%	85%	29%	100%	39
643	Peach (Crayola)	#FFCBA	{255,203,164}	100%	82%	36%	100%	26
644	Peach puff	#FFDAB	{255,218,185}	100%	86%	27%	100%	28
645	Pear	#D1E23	{209,226,49}	75%	54%	78%	89%	66
646	Pearly purple	#B768A	{183,104,162}	35%	56%	43%	72%	316
647	Periwinkle	#CCCCF	{204,204,255}	100%	90%	20%	100%	240
648	Periwinkle (Crayola)	#C3CDE	{195,205,230}	41%	83%	15%	90%	223
649	Permanent Geranium Lake	#E12C2	{225,44,44}	75%	53%	80%	88%	0
650	Persian blue	#1C39B	{28,57,187}	74%	42%	85%	73%	229
651	Persian green	#00A69	{0,166,147}	100%	33%	100%	65%	173
652	Persian indigo	#32127	{50,18,122}	74%	27%	85%	48%	258
653	Persian orange	#D9905	{217,144,88}	63%	60%	59%	85%	26
654	Persian pink	#F77FB	{247,127,190}	88%	73%	49%	97%	329
655	Persian plum	#701C1	{112,28,28}	60%	27%	75%	44%	0
656	Persian red	#CC333	{204,51,51}	60%	50%	75%	80%	0
657	Persian rose	#FE28A	{254,40,162}	99%	58%	84%	100%	326
658	Persimmon	#EC580	{236,88,0}	100%	46%	100%	93%	22
659	Pewter Blue	#8BA8B	{139,168,183}	23%	63%	24%	72%	200
660	Phlox	#DF00F	{223,0,255}	100%	50%	100%	100%	292
661	Phthalo blue	#000F8	{0,15,137}	100%	27%	100%	54%	233
662	Phthalo green	#12352	{18,53,36}	49%	14%	66%	21%	151
663	Picotee blue	#2E278	{46,39,135}	55%	34%	71%	53%	244
664	Pictorial carmine	#C30B4	{195,11,78}	89%	40%	94%	76%	338
665	Piggy pink	#FDDDE	{253,221,230}	89%	93%	13%	99%	343
666	Pine green	#01796	{1,121,111}	98%	24%	99%	47%	175
667	Pine tree	#2A2F2	{42,47,35}	15%	16%	26%	18%	85
668	Pink	#FFC0C	{255,192,203}	100%	88%	25%	100%	350
669	Pink (Pantone)	#D7489	{215,72,148}	64%	56%	67%	84%	328
670	Pink flamingo	#FC74F	{252,116,253}	97%	72%	54%	99%	300
671	Pink lace	#FFDDF	{255,221,244}	100%	93%	13%	100%	319
672	Pink lavender	#D8B2D	{216,178,209}	33%	77%	18%	85%	311
673	Pink Sherbet	#F78FA	{247,143,167}	87%	76%	42%	97%	346
674	Pistachio	#93C57	{147,197,114}	42%	61%	42%	77%	96
675	Platinum	#E5E4E	{229,228,226}	6%	89%	1%	90%	40
676	Plum	#8E458	{142,69,133}	35%	41%	51%	56%	307
677	Plum (web)	#DDA0D	{221,160,221}	47%	75%	28%	87%	300
678	Plump Purple	#5946B	{89,70,178}	44%	49%	61%	70%	251
679	Polished Pine	#5DA49	{93,164,147}	28%	50%	43%	64%	166
680	Pomp and Power	#86608	{134,96,142}	19%	47%	32%	56%	290
681	Popstar	#BE4F6	{190,79,98}	46%	53%	58%	75%	350
682	Portland Orange	#FF5A3	{255,90,54}	100%	61%	79%	100%	11
683	Powder blue	#B0E0E	{176,224,230}	52%	80%	23%	90%	187
684	Princeton orange	#F5802	{245,128,37}	91%	55%	85%	96%	26
685	Process yellow	#FFEF0	{255,239,0}	100%	50%	100%	100%	56
686	Prune	#701C1	{112,28,28}	60%	27%	75%	44%	0
687	Prussian blue	#00315	{0,49,83}	100%	16%	100%	33%	205
688	Psychedelic purple	#DF00F	{223,0,255}	100%	50%	100%	100%	292
689	Puce	#CC889	{204,136,153}	40%	67%	33%	80%	345
690	Pullman Brown (UPS Brown)	#64411	{100,65,23}	63%	24%	77%	39%	33
691	Pumpkin	#FF751	{255,117,24}	100%	55%	91%	100%	24
692	Purple	#6A0DA	{96,0,128}	100%	37%	92%	68%	275
693	Purple (web)	#80008	{128,0,128}	100%	25%	100%	50%	300
694	Purple (Munsell)	#9F00C	{159,0,197}	100%	39%	100%	77%	288
695	Purple (X11)	#A020F	{160,32,240}	87%	53%	87%	94%	277
696	Purple mountain majesty	#9678B	{150,120,182}	30%	59%	34%	71%	269
697	Purple navy	#4E518	{78,81,128}	24%	40%	39%	50%	236
698	Purple pizzazz	#FE4ED	{254,78,218}	99%	65%	69%	100%	312
699	Purple Plum	#9C51B	{156,81,182}	41%	52%	56%	71%	285
700	Purpureus	#9A4EA	{154,78,174}	38%	49%	55%	68%	288
701	Queen blue	#436B9	{67,107,149}	38%	42%	55%	58%	211
702	Queen pink	#E8CCD	{232,204,215}	38%	85%	12%	91%	336
703	Quick Silver	#A6A6A	{166,166,166}	0%	65%	0%	65%	
704	Quinacridone magenta	#8E3A5	{142,58,89}	42%	39%	59%	56%	338
705	Radical Red	#FF355	{255,53,94}	100%	60%	79%	100%	348
706	Raisin black	#24212	{36,33,36}	4%	14%	8%	14%	300
707	Rajah	#FBAB6	{251,171,96}	95%	68%	62%	98%	29
708	Raspberry	#E30B5	{227,11,92}	91%	47%	95%	89%	337
709	Raspberry glace	#915F6	{145,95,109}	21%	47%	34%	57%	343
710	Raspberry rose	#B3446	{179,68,108}	45%	48%	62%	70%	338
711	Raw sienna	#D68A5	{214,138,89}	60%	59%	58%	84%	24
712	Raw umber	#82664	{130,102,68}	31%	39%	48%	51%	33
713	Razzle dazzle rose	#FF33C	{255,51,204}	100%	60%	80%	100%	315
714	Razzmatazz	#E3256	{227,37,107}	77%	52%	84%	89%	338
715	Razzmic Berry	#8D4E8	{141,78,133}	29%	43%	45%	55%	308
716	Rebecca Purple	#66339	{102,52,153}	49%	40%	67%	60%	270
717	Red	#FF000	{255,0,0}	100%	50%	100%	100%	0
718	Red (Crayola)	#EE204	{238,32,77}	86%	53%	87%	93%	347
719	Red (Munsell)	#F2003	{242,0,60}	100%	47%	100%	95%	345
720	Red (NCS)	#C4023	{196,2,51}	98%	39%	99%	77%	345
721	Red (Pantone)	#ED293	{237,41,57}	85%	55%	83%	93%	355
722	Red (pigment)	#ED1C2	{237,28,36}	85%	52%	88%	93%	358
723	Red (RYB)	#FE271	{254,39,18}	99%	53%	93%	100%	5
724	Red-orange	#FF534	{255,83,73}	100%	64%	71%	100%	3
725	Red-orange (Crayola)	#FF681	{255,104,31}	100%	56%	88%	100%	20
726	Red-orange (Color wheel)	#FF450	{255,69,0}	100%	50%	100%	100%	16
727	Red-purple	#E4007	{228,0,120}	100%	45%	100%	89%	328
728	Red Salsa	#FD3A4	{253,58,74}	98%	61%	77%	99%	355
729	Red-violet	#C7158	{199,21,133}	81%	43%	89%	78%	322
730	Red-violet (Crayola)	#C0448	{192,68,143}	50%	51%	65%	75%	324
731	Red-violet (Color wheel)	#922B3	{146,43,62}	55%	37%	71%	57%	350
732	Redwood	#A45A5	{164,90,82}	33%	48%	50%	64%	6
733	Resolution blue	#00238	{0,35,135}	100%	26%	100%	53%	224
734	Rhythm	#77769	{119,118,150}	13%	53%	21%	59%	242
735	Rich black	#00404	{0,64,64}	100%	13%	100%	25%	180
736	Rich black (FOGRA29)	#010B1	{1,11,19}	90%	4%	95%	8%	207
737	Rich black (FOGRA39)	#01020	{1,2,3}	50%	1%	67%	1%	210
738	Rifle green	#444C3	{68,76,56}	15%	26%	26%	30%	84
739	Robin egg blue	#00CCC	{0,204,204}	100%	40%	100%	80%	180
740	Rocket metallic	#8A7F8	{138,127,128}	5%	52%	8%	54%	355
741	Rojo Spanish red	#A9110	{169,17,1}	99%	33%	99%	66%	6
742	Roman silver	#83899	{131,137,150}	8%	55%	13%	59%	221
743	Rose	#FF007	{255,0,127}	100%	50%	100%	100%	330
744	Rose bonbon	#F9429	{249,66,158}	94%	62%	73%	98%	330
745	Rose Dust	#9E5E6	{158,94,111}	25%	49%	41%	62%	344
746	Rose ebony	#67484	{103,72,70}	19%	34%	32%	40%	4
747	Rose madder	#E3263	{227,38,54}	77%	52%	83%	89%	355
748	Rose pink	#FF66C	{255,102,204}	100%	70%	60%	100%	320
749	Rose Pompadour	#ED7A9	{237,122,155}	76%	70%	48%	92%	334
750	Rose quartz	#AA98A	{170,152,169}	10%	63%	11%	67%	303
751	Rose red	#C21E5	{194,30,86}	73%	44%	85%	76%	340
752	Rose taupe	#905D5	{144,93,93}	22%	46%	35%	56%	0
753	Rose vale	#AB4E5	{171,78,82}	37%	49%	54%	67%	357
754	Rosewood	#65000	{101,0,11}	100%	20%	100%	40%	353
755	Rosso corsa	#D4000	{212,0,0}	100%	42%	100%	83%	0
756	Rosy brown	#BC8F8	{188,143,143}	25%	65%	24%	74%	0
757	Royal blue (dark)	#00236	{0,35,102}	100%	20%	100%	40%	219
758	Royal blue (light)	#4169E	{65,105,225}	73%	57%	71%	88%	225
759	Royal purple	#7851A	{120,81,169}	35%	49%	52%	66%	267
760	Royal yellow	#FADA5	{250,218,94}	94%	67%	62%	98%	48
761	Ruber	#CE467	{206,70,118}	58%	54%	66%	81%	339
762	Rubine red	#D1005	{209,0,86}	100%	41%	100%	82%	335
763	Ruby	#E0115	{224,17,95}	86%	47%	92%	88%	337
764	Ruby red	#9B111	{155,17,30}	80%	34%	89%	61%	354
765	Rufous	#A81C0	{168,28,7}	92%	34%	96%	66%	8
766	Russet	#80461	{128,70,27}	65%	30%	79%	50%	26
767	Russian green	#67926	{103,146,103}	17%	49%	29%	57%	120
768	Russian violet	#32174	{50,23,77}	54%	20%	70%	30%	270
769	Rust	#B7410	{183,65,14}	86%	39%	92%	72%	18
770	Rusty red	#DA2C4	{218,44,67}	70%	51%	80%	85%	352
771	Sacramento State green	#04392	{4,57,39}	87%	12%	93%	22%	160
772	Saddle brown	#8B451	{139,69,19}	76%	31%	86%	55%	25
773	Safety orange	#FF780	{255,120,0}	100%	50%	100%	100%	28
774	Safety orange (blaze orange)	#FF670	{255,103,0}	100%	50%	100%	100%	24
775	Safety yellow	#EED20	{238,210,2}	98%	47%	99%	93%	53
776	Saffron	#F4C43	{244,196,48}	90%	57%	80%	96%	45
777	Sage	#BCB88	{188,184,138}	27%	64%	27%	74%	55
778	St. Patrick's blue	#23297	{35,41,122}	55%	31%	71%	48%	236
779	Salmon	#FA807	{250,128,114}	93%	71%	54%	98%	6
780	Salmon pink	#FF91A	{255,145,164}	100%	78%	43%	100%	350
781	Sand	#C2B28	{194,178,128}	35%	63%	34%	76%	45
782	Sand dune	#96711	{150,113,23}	73%	34%	85%	59%	43
783	Sandy brown	#F4A46	{244,164,96}	87%	67%	61%	96%	28
784	Sap green	#507D2	{80,125,42}	50%	33%	66%	49%	93
785	Sapphire	#0F52B	{15,82,186}	85%	39%	92%	73%	216
786	Sapphire blue	#0067A	{0,103,165}	100%	32%	100%	65%	203
787	Sapphire (Crayola)	#0067A	{45,93,161}	56%	40%	72%	35%	215
788	Satin sheen gold	#CBA13	{203,161,53}	59%	50%	74%	80%	43
789	Scarlet	#FF240	{255,36,0}	100%	50%	100%	100%	8
790	Schauss pink	#FF91A	{255,145,175}	100%	78%	43%	100%	344
791	School bus yellow	#FFD80	{255,216,0}	100%	50%	100%	100%	51
792	Screamin' Green	#66FF6	{102,255,102}	100%	70%	60%	100%	120
793	Sea green	#2E8B5	{46,139,87}	50%	36%	67%	55%	146
794	Sea green (Crayola)	#00FFC	{1,255,205}	100%	50%	100%	100%	168
795	Seal brown	#59260	{50,20,20}	43%	14%	60%	20%	0
796	Seashell	#FFF5E	{255,245,238}	100%	97%	7%	100%	25
797	Selective yellow	#FFBA0	{255,186,0}	100%	50%	100%	100%	44
798	Sepia	#70421	{112,66,20}	70%	26%	82%	44%	30
799	Shadow	#8A795	{138,121,93}	20%	45%	33%	54%	37
800	Shadow blue	#778BA	{119,139,165}	20%	56%	28%	65%	214
801	Shamrock green	#009E6	{0,158,96}	100%	31%	100%	62%	156
802	Sheen green	#8FD40	{143,212,0}	100%	42%	100%	83%	80
803	Shimmering Blush	#D9869	{217,134,149}	52%	69%	38%	85%	349
804	Shiny Shamrock	#5FA77	{95,167,120}	29%	51%	43%	66%	141
805	Shocking pink	#FC0FC	{252,15,192}	98%	52%	94%	99%	315
806	Shocking pink (Crayola)	#FF6FF	{255,111,255}	100%	72%	56%	100%	300
807	Sienna	#882D1	{136,45,23}	71%	31%	83%	53%	12
808	Silver	#C0C0C	{192,192,192}	0%	75%	0%	75%	
809	Silver (Crayola)	#C9C0B	{201,192,187}	12%	76%	7%	79%	21
810	Silver (Metallic)	#AAA9A	{170,169,173}	2%	67%	2%	68%	255
811	Silver chalice	#ACACA	{172,172,172}	0%	67%	0%	67%	
812	Silver pink	#C4AEA	{196,174,173}	16%	72%	12%	77%	3
813	Silver sand	#BFC1C	{191,193,194}	2%	75%	2%	76%	200
814	Sinopia	#CB410	{203,65,11}	90%	42%	95%	80%	17
815	Sizzling Red	#FF385	{255,56,85}	100%	61%	78%	100%	351
816	Sizzling Sunrise	#FFDB0	{255,219,0}	100%	50%	100%	100%	52
817	Skobeloff	#00747	{0,116,116}	100%	23%	100%	45%	180
818	Sky blue	#87CEE	{135,206,235}	71%	73%	43%	92%	197
819	Sky blue (Crayola)	#76D7E	{118,215,234}	73%	69%	50%	92%	190
820	Sky magenta	#CF71A	{207,113,175}	50%	63%	45%	81%	320
821	Slate blue	#6A5AC	{106,90,205}	54%	58%	56%	80%	248
822	Slate gray	#70809	{112,128,144}	13%	50%	22%	56%	210
823	Slimy green	#29961	{41,150,23}	73%	34%	85%	59%	111
824	Smitten	#C8418	{200,65,134}	55%	52%	68%	78%	329
825	Smoky black	#100C0	{16,12,8}	33%	5%	50%	6%	30
826	Snow	#FFFAF	{255,250,250}	100%	99%	2%	76%	0
827	Solid pink	#89384	{137,56,67}	42%	38%	59%	54%	352
828	Sonic silver	#75757	{117,117,117}	0%	46%	0%	46%	
829	Space cadet	#1D295	{29,41,81}	47%	22%	64%	32%	226
830	Spanish bistre	#80753	{128,117,50}	44%	35%	61%	50%	52
831	Spanish blue	#0070B	{0,112,184}	100%	36%	100%	72%	203
832	Spanish carmine	#D1004	{209,0,71}	100%	41%	100%	82%	340
833	Spanish gray	#98989	{152,152,152}	0%	60%	0%	60%	
834	Spanish green	#00915	{0,145,80}	100%	28%	100%	57%	153
835	Spanish orange	#E8610	{232,97,0}	100%	45%	100%	91%	25
836	Spanish pink	#F7BFB	{247,191,190}	78%	86%	23%	97%	1
837	Spanish red	#E6002	{230,0,38}	100%	45%	100%	90%	350
838	Spanish sky blue	#00FFF	{0,255,255}	100%	50%	100%	100%	180
839	Spanish violet	#4C288	{76,40,130}	53%	33%	69%	51%	264
840	Spanish viridian	#007F5	{0,127,92}	100%	25%	100%	50%	163
841	Spring bud	#A7FC0	{167,252,0}	100%	49%	100%	99%	80
842	Spring Frost	#87FF2	{135,255,42}	100%	58%	84%	100%	94
843	Spring green	#00FF7	{0,255,127}	100%	50%	100%	100%	150
844	Spring green (Crayola)	#ECEBB	{236,235,189}	55%	83%	20%	93%	59
845	Star command blue	#007BB	{0,123,184}	100%	36%	100%	72%	200
846	Steel blue	#4682B	{70,130,180}	44%	49%	61%	71%	207
847	Steel pink	#CC33C	{204,51,204}	60%	50%	75%	80%	300
848	Steel Teal	#5F8A8	{95,138,139}	19%	46%	32%	55%	181
849	Stil de grain yellow	#FADA5	{250,218,94}	94%	67%	62%	98%	48
850	Straw	#E4D96	{228,217,111}	68%	66%	51%	89%	54
851	Strawberry	#FA505	{250,80,83}	94%	65%	68%	98%	359
852	Strawberry Blonde	#ff936	{255,147,97}	100%	69%	62%	100%	19
853	Sugar Plum	#914E7	{145,78,117}	30%	44%	46%	57%	325
854	Sunglow	#FFCC3	{255,204,51}	100%	60%	80%	100%	45
855	Sunray	#E3AB5	{227,171,87}	71%	62%	62%	89%	36
856	Sunset	#FAD6A	{250,214,165}	90%	81%	34%	98%	35
857	Super pink	#CF6BA	{207,107,169}	51%	62%	48%	81%	323
858	Sweet Brown	#A8373	{168,55,49}	55%	43%	71%	66%	3
859	Syracuse Orange	#D4450	{212,69,0}	100%	42%	72%	100%	9
860	Tan	#D2B48	{210,180,140}	44%	69%	33%	82%	25
861	Tan (Crayola)	#D99A6	{217,154,108}	59%	64%	50%	85%	34
862	Tangerine	#F2850	{242,133,0}	100%	47%	100%	95%	33
863	Tango pink	#E4717	{228,113,122}	68%	67%	50%	89%	355
864	Tart Orange	#FB4D4	{251,77,70}	96%	63%	72%	98%	2
865	Taupe	#483C3	{72,60,50}	18%	24%	31%	28%	27
866	Taupe gray	#8B858	{139,133,137}	3%	53%	4%	55%	320
867	Tea green	#D0F0C	{208,240,192}	62%	85%	20%	94%	100
868	Tea rose	#F8837	{248,131,121}	90%	72%	51%	97%	5
869	Tea rose	#F4C2C	{244,194,194}	69%	86%	20%	96%	0
870	Teal	#00808	{0,128,128}	100%	25%	100%	50%	180
871	Teal blue	#36758	{54,117,136}	43%	37%	60%	53%	194
872	Telemagenta	#CF347	{207,52,118}	62%	51%	75%	81%	334
873	Tenné	#CD570	{205,87,0}	100%	40%	100%	80%	25
874	Terra cotta	#E2725	{226,114,91}	70%	62%	60%	89%	10
875	Thistle	#D8BFD	{216,191,216}	24%	80%	12%	85%	300
876	Thulian pink	#DE6FA	{222,111,161}	63%	65%	50%	87%	333
877	Tickle Me Pink	#FC89A	{252,137,172}	95%	76%	46%	99%	342
878	Tiffany Blue	#0ABAB	{10,186,181}	90%	38%	95%	73%	178
879	Timberwolf	#DBD7D	{219,215,210}	11%	84%	4%	86%	33
880	Titanium yellow	#EEE60	{238,230,0}	100%	47%	100%	93%	58
881	Tomato	#FF634	{255,99,71}	100%	64%	72%	100%	9
882	Tropical rainforest	#00755	{0,117,94}	100%	23%	100%	46%	168
883	True Blue	#2D68C	{0,115,207}	100%	41%	100%	81%	207
884	Trypan Blue	#1C05B	{28,5,179}	95%	36%	95%	70%	248
885	Tufts blue	#3E8ED	{62,142,222}	71%	56%	70.7%	87.1%	210
886	Tumbleweed	#DEAA8	{222,170,136}	57%	70%	39%	87%	24
887	Turquoise	#40E0D	{64,224,208}	72%	56%	71%	88%	174
888	Turquoise blue	#00FFE	{0,255,239}	100%	50%	100%	100%	176
889	Turquoise green	#A0D6B	{160,214,180}	40%	73%	25%	84%	142
890	Turtle green	#8A9A5	{138,154,91}	26%	48%	41%	60%	75
891	Tuscan	#FAD6A	{250,214,165}	90%	81%	34%	98%	35
892	Tuscan brown	#6F4E3	{111,78,55}	34%	33%	50%	44%	25
893	Tuscan red	#7C484	{124,72,72}	27%	38%	42%	49%	0
894	Tuscan tan	#A67B5	{166,123,91}	30%	50%	45%	65%	26
895	Tuscany	#C0999	{192,153,153}	24%	68%	20%	75%	0
896	Twilight lavender	#8A496	{138,73,107}	31%	41%	47%	54%	329
897	Tyrian purple	#66023	{102,2,60}	96%	20%	98%	40%	325
898	UA blue	#0033A	{0,51,170}	100%	33%	100%	67%	222
899	UA red	#D9004	{217,0,76}	100%	43%	100%	85%	339
900	Ultramarine	#3F00F	{18,10,143}	87%	30%	93%	56%	244
901	Ultramarine blue	#4166F	{65,102,245}	90%	61%	73%	96%	228
902	Ultra pink	#FF6FF	{255,111,255}	100%	72%	56%	100%	300
903	Ultra red	#FC6C8	{252,108,133}	96%	71%	57%	99%	350
904	Umber	#63514	{99,81,71}	17%	33%	28%	39%	21
905	Unbleached silk	#FFDDC	{255,221,202}	100%	90%	21%	100%	22
906	United Nations blue	#5B92E	{91,146,229}	73%	63%	60%	90%	216
907	University of Pennsylvania red	#A5002	{165,0,33}	100%	32%	100%	65%	348
908	Unmellow yellow	#FFFF6	{255,255,102}	100%	70%	60%	100%	60
909	UP Forest green	#01442	{1,68,33}	97%	14%	99%	27%	149
910	UP maroon	#7B111	{123,17,19}	76%	27%	86%	48%	359
911	Upsdell red	#AE202	{174,32,41}	69%	40%	82%	68%	356
912	Uranian blue	#AFDBF	{175,219,245}	78%	82%	29%	96%	202
913	USAFA blue	#004F9	{0,79,152}	100%	30%	100%	60%	209
914	Van Dyke brown	#66422	{102,66,40}	44%	28%	60%	0%	25
915	Vanilla	#F3E5A	{243,229,171}	75%	81%	30%	95%	48
916	Vanilla ice	#F38FA	{243,143,169}	81%	76%	41%	95%	344
917	Vegas gold	#C5B35	{197,179,88}	48%	56%	55%	77%	50
918	Venetian red	#C8081	{200,8,21}	92%	41%	96%	78%	356
919	Verdigris	#43B3A	{67,179,174}	46%	48%	63%	70%	177
920	Vermilion	#E3423	{227,66,52}	76%	55%	77%	89%	5
921	Vermilion	#D9381	{217,56,30}	76%	48%	86%	85%	8
922	Veronica	#A020F	{160,32,240}	87%	53%	87%	94%	277
923	Violet	#8F00F	{143,0,255}	100%	50%	100%	100%	274
924	Violet (color wheel)	#7F00F	{127,0,255}	100%	50%	100%	100%	270
925	Violet (crayola)	#963D7	{150,61,127}	42%	41%	59%	59%	316
926	Violet (RYB)	#8601A	{134,1,175}	99%	35%	99%	69%	286
927	Violet (web)	#EE82E	{238,130,238}	76%	72%	45%	93%	300
928	Violet-blue	#324AB	{50,74,178}	56%	45%	72%	70%	229
929	Violet-blue (Crayola)	#766EC	{118,110,200}	45%	61%	45%	78%	246
930	Violet-red	#F7539	{247,83,148}	91%	65%	66%	97%	336
931	Viridian	#40826	{64,130,109}	34%	38%	51%	51%	161
932	Viridian green	#00969	{0,150,152}	100%	30%	100%	60%	181
933	Vivid burgundy	#9F1D3	{159,29,53}	69%	37%	82%	62%	349
934	Vivid sky blue	#00CCF	{0,204,255}	100%	50%	100%	100%	192
935	Vivid tangerine	#FFA08	{255,160,137}	100%	77%	46%	100%	12
936	Vivid violet	#9F00F	{159,0,255}	100%	50%	100%	100%	277
937	Volt	#CEFF0	{205,255,0}	100%	50%	100%	100%	72
938	Warm black	#00424	{0,66,66}	100%	13%	100%	25%	180
939	Wheat	#F5DEB	{245,222,179}	77%	83%	27%	96%	39
940	White	#FFFFF	{255,255,255}	0%	100%	0%	100%	
941	Wild blue yonder	#A2ADD	{162,173,208}	33%	73%	22%	82%	226
942	Wild orchid	#D470A	{212,112,162}	54%	64%	47%	83%	330
943	Wild Strawberry	#FF43A	{255,67,164}	100%	63%	74%	100%	329
944	Wild watermelon	#FC6C8	{252,108,133}	96%	71%	57%	99%	350
945	Windsor tan	#A7550	{167,85,2}	98%	33%	99%	65%	30
946	Wine	#722F3	{114,47,55}	42%	32%	59%	45%	353
947	Wine dregs	#67314	{103,49,71}	36%	30%	52%	40%	336
948	Winter Sky	#FF007	{255,0,124}	100%	50%	100%	100%	331
949	Wintergreen Dream	#56887	{86,136,125}	23%	44%	37%	53%	167
950	Wisteria	#C9A0D	{201,160,220}	46%	75%	27%	86%	281
951	Wood brown	#C19A6	{193,154,107}	41%	59%	45%	76%	33
952	Xanadu	#73867	{115,134,120}	8%	49%	14%	53%	136
953	Xanthic	#EEED0	{238,237,9}	93%	48%	97%	93%	60
954	Xanthous	#F1B42	{241,180,47}	87%	57%	80%	95%	41
955	Yale Blue	#00356	{0,53,107}	100%	21%	100%	42%	210
956	Yellow	#FFFF0	{255,255,0}	100%	50%	100%	100%	60
957	Yellow (Crayola)	#FCE88	{252,232,131}	95%	75%	48%	99%	50
958	Yellow (Munsell)	#EFCC0	{239,204,0}	100%	47%	100%	94%	51
959	Yellow (NCS)	#FFD30	{255,211,0}	100%	50%	100%	100%	50
960	Yellow (Pantone)	#FEDF0	{254,223,0}	100%	50%	100%	100%	53
961	Yellow (process)	#FFEF0	{255,239,0}	100%	50%	100%	100%	56
962	Yellow (RYB)	#FEFE3	{254,254,51}	99%	60%	80%	100%	60
963	Yellow-green	#9ACD3	{154,205,50}	61%	50%	76%	80%	80
964	Yellow-green (Crayola)	#C5E38	{197,227,132}	63%	70%	42%	89%	79
965	Yellow-green (Color Wheel)	#30B21	{48,178,26}	75%	40%	85%	70%	112
966	Yellow Orange	#FFAE4	{255,174,66}	100%	63%	74%	100%	34
967	Yellow Orange (Color Wheel)	#FF950	{255,149,5}	100%	51%	98%	100%	36
968	Yellow Sunshine	#FFF70	{255,247,0}	100%	50%	100%	100%	58
969	YInMn Blue	#2E509	{46,80,144}	52%	37%	68%	56%	219
970	Zaffre	#0014A	{0,20,168}	100%	33%	100%	66%	233
971	Zomp	#39A78	{57,167,142}	49%	44%	66%	65%	166
\.


                                                                                                                                      3123.dat                                                                                            0000600 0004000 0002000 00000000005 14030052235 0014227 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3125.dat                                                                                            0000600 0004000 0002000 00000000005 14030052235 0014231 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3127.dat                                                                                            0000600 0004000 0002000 00000000005 14030052235 0014233 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3129.dat                                                                                            0000600 0004000 0002000 00000000005 14030052235 0014235 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3115.dat                                                                                            0000600 0004000 0002000 00000000207 14030052235 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	colors	rainbowuser
7	colors	color
\.


                                                                                                                                                                                                                                                                                                                                                                                         3113.dat                                                                                            0000600 0004000 0002000 00000002566 14030052235 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	contenttypes	0001_initial	2021-03-23 19:20:39.782745+00
2	contenttypes	0002_remove_content_type_name	2021-03-23 19:20:39.803749+00
3	auth	0001_initial	2021-03-23 19:20:39.979772+00
4	auth	0002_alter_permission_name_max_length	2021-03-23 19:20:40.252749+00
5	auth	0003_alter_user_email_max_length	2021-03-23 19:20:40.269751+00
6	auth	0004_alter_user_username_opts	2021-03-23 19:20:40.288753+00
7	auth	0005_alter_user_last_login_null	2021-03-23 19:20:40.305756+00
8	auth	0006_require_contenttypes_0002	2021-03-23 19:20:40.310756+00
9	auth	0007_alter_validators_add_error_messages	2021-03-23 19:20:40.327758+00
10	auth	0008_alter_user_username_max_length	2021-03-23 19:20:40.343759+00
11	auth	0009_alter_user_last_name_max_length	2021-03-23 19:20:40.360763+00
12	auth	0010_alter_group_name_max_length	2021-03-23 19:20:40.383765+00
13	auth	0011_update_proxy_permissions	2021-03-23 19:20:40.400766+00
14	auth	0012_alter_user_first_name_max_length	2021-03-23 19:20:40.41677+00
15	colors	0001_initial	2021-03-23 19:20:40.630829+00
16	admin	0001_initial	2021-03-23 19:20:41.037524+00
17	admin	0002_logentry_remove_auto_add	2021-03-23 19:20:41.117957+00
18	admin	0003_logentry_add_action_flag_choices	2021-03-23 19:20:41.140817+00
19	sessions	0001_initial	2021-03-23 19:20:41.375795+00
20	colors	0002_color	2021-03-26 12:26:28.902841+00
21	colors	0003_auto_20210326_1348	2021-03-26 12:48:56.18936+00
\.


                                                                                                                                          3130.dat                                                                                            0000600 0004000 0002000 00000000005 14030052235 0014225 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000067046 14030052235 0015373 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE rainbow;
--
-- Name: rainbow; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE rainbow WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United Kingdom.1252';


ALTER DATABASE rainbow OWNER TO postgres;

\connect rainbow

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: colors_color; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colors_color (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    hex character varying(7) NOT NULL,
    rgb integer[] NOT NULL,
    hsl_sat character varying(5) NOT NULL,
    hsl_light character varying(5) NOT NULL,
    hsv_sat character varying(5) NOT NULL,
    hsv_val character varying(5) NOT NULL,
    hue character varying(10) NOT NULL
);


ALTER TABLE public.colors_color OWNER TO postgres;

--
-- Name: colors_color_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.colors_color_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colors_color_id_seq OWNER TO postgres;

--
-- Name: colors_color_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.colors_color_id_seq OWNED BY public.colors_color.id;


--
-- Name: colors_rainbowuser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colors_rainbowuser (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.colors_rainbowuser OWNER TO postgres;

--
-- Name: colors_rainbowuser_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colors_rainbowuser_groups (
    id integer NOT NULL,
    rainbowuser_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.colors_rainbowuser_groups OWNER TO postgres;

--
-- Name: colors_rainbowuser_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.colors_rainbowuser_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colors_rainbowuser_groups_id_seq OWNER TO postgres;

--
-- Name: colors_rainbowuser_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.colors_rainbowuser_groups_id_seq OWNED BY public.colors_rainbowuser_groups.id;


--
-- Name: colors_rainbowuser_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.colors_rainbowuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colors_rainbowuser_id_seq OWNER TO postgres;

--
-- Name: colors_rainbowuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.colors_rainbowuser_id_seq OWNED BY public.colors_rainbowuser.id;


--
-- Name: colors_rainbowuser_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colors_rainbowuser_user_permissions (
    id integer NOT NULL,
    rainbowuser_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.colors_rainbowuser_user_permissions OWNER TO postgres;

--
-- Name: colors_rainbowuser_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.colors_rainbowuser_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colors_rainbowuser_user_permissions_id_seq OWNER TO postgres;

--
-- Name: colors_rainbowuser_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.colors_rainbowuser_user_permissions_id_seq OWNED BY public.colors_rainbowuser_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: colors_color id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors_color ALTER COLUMN id SET DEFAULT nextval('public.colors_color_id_seq'::regclass);


--
-- Name: colors_rainbowuser id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors_rainbowuser ALTER COLUMN id SET DEFAULT nextval('public.colors_rainbowuser_id_seq'::regclass);


--
-- Name: colors_rainbowuser_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors_rainbowuser_groups ALTER COLUMN id SET DEFAULT nextval('public.colors_rainbowuser_groups_id_seq'::regclass);


--
-- Name: colors_rainbowuser_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors_rainbowuser_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.colors_rainbowuser_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.
COPY public.auth_group (id, name) FROM '$$PATH$$/3119.dat';

--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.
COPY public.auth_group_permissions (id, group_id, permission_id) FROM '$$PATH$$/3121.dat';

--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
\.
COPY public.auth_permission (id, name, content_type_id, codename) FROM '$$PATH$$/3117.dat';

--
-- Data for Name: colors_color; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.colors_color (id, name, hex, rgb, hsl_sat, hsl_light, hsv_sat, hsv_val, hue) FROM stdin;
\.
COPY public.colors_color (id, name, hex, rgb, hsl_sat, hsl_light, hsv_sat, hsv_val, hue) FROM '$$PATH$$/3132.dat';

--
-- Data for Name: colors_rainbowuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.colors_rainbowuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.
COPY public.colors_rainbowuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM '$$PATH$$/3123.dat';

--
-- Data for Name: colors_rainbowuser_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.colors_rainbowuser_groups (id, rainbowuser_id, group_id) FROM stdin;
\.
COPY public.colors_rainbowuser_groups (id, rainbowuser_id, group_id) FROM '$$PATH$$/3125.dat';

--
-- Data for Name: colors_rainbowuser_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.colors_rainbowuser_user_permissions (id, rainbowuser_id, permission_id) FROM stdin;
\.
COPY public.colors_rainbowuser_user_permissions (id, rainbowuser_id, permission_id) FROM '$$PATH$$/3127.dat';

--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.
COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM '$$PATH$$/3129.dat';

--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
\.
COPY public.django_content_type (id, app_label, model) FROM '$$PATH$$/3115.dat';

--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
\.
COPY public.django_migrations (id, app, name, applied) FROM '$$PATH$$/3113.dat';

--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.
COPY public.django_session (session_key, session_data, expire_date) FROM '$$PATH$$/3130.dat';

--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 28, true);


--
-- Name: colors_color_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colors_color_id_seq', 971, true);


--
-- Name: colors_rainbowuser_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colors_rainbowuser_groups_id_seq', 1, false);


--
-- Name: colors_rainbowuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colors_rainbowuser_id_seq', 1, false);


--
-- Name: colors_rainbowuser_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colors_rainbowuser_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: colors_color colors_color_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors_color
    ADD CONSTRAINT colors_color_pkey PRIMARY KEY (id);


--
-- Name: colors_rainbowuser_groups colors_rainbowuser_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors_rainbowuser_groups
    ADD CONSTRAINT colors_rainbowuser_groups_pkey PRIMARY KEY (id);


--
-- Name: colors_rainbowuser_groups colors_rainbowuser_groups_rainbowuser_id_group_id_03f00d0a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors_rainbowuser_groups
    ADD CONSTRAINT colors_rainbowuser_groups_rainbowuser_id_group_id_03f00d0a_uniq UNIQUE (rainbowuser_id, group_id);


--
-- Name: colors_rainbowuser colors_rainbowuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors_rainbowuser
    ADD CONSTRAINT colors_rainbowuser_pkey PRIMARY KEY (id);


--
-- Name: colors_rainbowuser_user_permissions colors_rainbowuser_user__rainbowuser_id_permissio_fe851296_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors_rainbowuser_user_permissions
    ADD CONSTRAINT colors_rainbowuser_user__rainbowuser_id_permissio_fe851296_uniq UNIQUE (rainbowuser_id, permission_id);


--
-- Name: colors_rainbowuser_user_permissions colors_rainbowuser_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors_rainbowuser_user_permissions
    ADD CONSTRAINT colors_rainbowuser_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: colors_rainbowuser colors_rainbowuser_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors_rainbowuser
    ADD CONSTRAINT colors_rainbowuser_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: colors_rainbowuser_groups_group_id_f7027207; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX colors_rainbowuser_groups_group_id_f7027207 ON public.colors_rainbowuser_groups USING btree (group_id);


--
-- Name: colors_rainbowuser_groups_rainbowuser_id_64f36c5e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX colors_rainbowuser_groups_rainbowuser_id_64f36c5e ON public.colors_rainbowuser_groups USING btree (rainbowuser_id);


--
-- Name: colors_rainbowuser_user_permissions_permission_id_d70c909d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX colors_rainbowuser_user_permissions_permission_id_d70c909d ON public.colors_rainbowuser_user_permissions USING btree (permission_id);


--
-- Name: colors_rainbowuser_user_permissions_rainbowuser_id_3ba17742; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX colors_rainbowuser_user_permissions_rainbowuser_id_3ba17742 ON public.colors_rainbowuser_user_permissions USING btree (rainbowuser_id);


--
-- Name: colors_rainbowuser_username_ec5c6de6_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX colors_rainbowuser_username_ec5c6de6_like ON public.colors_rainbowuser USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: colors_rainbowuser_groups colors_rainbowuser_g_rainbowuser_id_64f36c5e_fk_colors_ra; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors_rainbowuser_groups
    ADD CONSTRAINT colors_rainbowuser_g_rainbowuser_id_64f36c5e_fk_colors_ra FOREIGN KEY (rainbowuser_id) REFERENCES public.colors_rainbowuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: colors_rainbowuser_groups colors_rainbowuser_groups_group_id_f7027207_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors_rainbowuser_groups
    ADD CONSTRAINT colors_rainbowuser_groups_group_id_f7027207_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: colors_rainbowuser_user_permissions colors_rainbowuser_u_permission_id_d70c909d_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors_rainbowuser_user_permissions
    ADD CONSTRAINT colors_rainbowuser_u_permission_id_d70c909d_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: colors_rainbowuser_user_permissions colors_rainbowuser_u_rainbowuser_id_3ba17742_fk_colors_ra; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colors_rainbowuser_user_permissions
    ADD CONSTRAINT colors_rainbowuser_u_rainbowuser_id_3ba17742_fk_colors_ra FOREIGN KEY (rainbowuser_id) REFERENCES public.colors_rainbowuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_colors_rainbowuser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_colors_rainbowuser_id FOREIGN KEY (user_id) REFERENCES public.colors_rainbowuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          