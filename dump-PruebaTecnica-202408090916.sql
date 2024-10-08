PGDMP  %        	    	        |            PruebaTecnica    16.1    16.1 &    	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    51443    PruebaTecnica    DATABASE     �   CREATE DATABASE "PruebaTecnica" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Guatemala.1252';
    DROP DATABASE "PruebaTecnica";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    51446    clientes    TABLE     �   CREATE TABLE public.clientes (
    clienteid integer NOT NULL,
    nombre character varying(100) NOT NULL,
    correo character varying(100) NOT NULL
);
    DROP TABLE public.clientes;
       public         heap    postgres    false    4            �            1259    51445    clientes_clienteid_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_clienteid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.clientes_clienteid_seq;
       public          postgres    false    216    4                       0    0    clientes_clienteid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.clientes_clienteid_seq OWNED BY public.clientes.clienteid;
          public          postgres    false    215            �            1259    51498    detalleorden    TABLE     �   CREATE TABLE public.detalleorden (
    detalleid integer NOT NULL,
    ordenid integer,
    productoid integer,
    cantidad integer NOT NULL,
    preciounitario numeric(10,2) NOT NULL
);
     DROP TABLE public.detalleorden;
       public         heap    postgres    false    4            �            1259    51497    detalleorden_detalleid_seq    SEQUENCE     �   CREATE SEQUENCE public.detalleorden_detalleid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.detalleorden_detalleid_seq;
       public          postgres    false    222    4                       0    0    detalleorden_detalleid_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.detalleorden_detalleid_seq OWNED BY public.detalleorden.detalleid;
          public          postgres    false    221            �            1259    51455    ordenes    TABLE     n   CREATE TABLE public.ordenes (
    ordenid integer NOT NULL,
    clienteid integer,
    fecha date NOT NULL
);
    DROP TABLE public.ordenes;
       public         heap    postgres    false    4            �            1259    51454    ordenes_ordenid_seq    SEQUENCE     �   CREATE SEQUENCE public.ordenes_ordenid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ordenes_ordenid_seq;
       public          postgres    false    218    4                       0    0    ordenes_ordenid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ordenes_ordenid_seq OWNED BY public.ordenes.ordenid;
          public          postgres    false    217            �            1259    51491 	   productos    TABLE     �   CREATE TABLE public.productos (
    productoid integer NOT NULL,
    nombre character varying(100) NOT NULL,
    precio numeric(10,2) NOT NULL,
    cantidad integer NOT NULL
);
    DROP TABLE public.productos;
       public         heap    postgres    false    4            �            1259    51490    productos_productoid_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_productoid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.productos_productoid_seq;
       public          postgres    false    220    4                       0    0    productos_productoid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.productos_productoid_seq OWNED BY public.productos.productoid;
          public          postgres    false    219            _           2604    51449    clientes clienteid    DEFAULT     x   ALTER TABLE ONLY public.clientes ALTER COLUMN clienteid SET DEFAULT nextval('public.clientes_clienteid_seq'::regclass);
 A   ALTER TABLE public.clientes ALTER COLUMN clienteid DROP DEFAULT;
       public          postgres    false    215    216    216            b           2604    51501    detalleorden detalleid    DEFAULT     �   ALTER TABLE ONLY public.detalleorden ALTER COLUMN detalleid SET DEFAULT nextval('public.detalleorden_detalleid_seq'::regclass);
 E   ALTER TABLE public.detalleorden ALTER COLUMN detalleid DROP DEFAULT;
       public          postgres    false    222    221    222            `           2604    51458    ordenes ordenid    DEFAULT     r   ALTER TABLE ONLY public.ordenes ALTER COLUMN ordenid SET DEFAULT nextval('public.ordenes_ordenid_seq'::regclass);
 >   ALTER TABLE public.ordenes ALTER COLUMN ordenid DROP DEFAULT;
       public          postgres    false    217    218    218            a           2604    51494    productos productoid    DEFAULT     |   ALTER TABLE ONLY public.productos ALTER COLUMN productoid SET DEFAULT nextval('public.productos_productoid_seq'::regclass);
 C   ALTER TABLE public.productos ALTER COLUMN productoid DROP DEFAULT;
       public          postgres    false    219    220    220                       0    51446    clientes 
   TABLE DATA           =   COPY public.clientes (clienteid, nombre, correo) FROM stdin;
    public          postgres    false    216   �*                 0    51498    detalleorden 
   TABLE DATA           `   COPY public.detalleorden (detalleid, ordenid, productoid, cantidad, preciounitario) FROM stdin;
    public          postgres    false    222   �*                 0    51455    ordenes 
   TABLE DATA           <   COPY public.ordenes (ordenid, clienteid, fecha) FROM stdin;
    public          postgres    false    218   '+                 0    51491 	   productos 
   TABLE DATA           I   COPY public.productos (productoid, nombre, precio, cantidad) FROM stdin;
    public          postgres    false    220   e+                  0    0    clientes_clienteid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.clientes_clienteid_seq', 1, false);
          public          postgres    false    215                       0    0    detalleorden_detalleid_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.detalleorden_detalleid_seq', 23, true);
          public          postgres    false    221                       0    0    ordenes_ordenid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ordenes_ordenid_seq', 23, true);
          public          postgres    false    217                       0    0    productos_productoid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.productos_productoid_seq', 3, true);
          public          postgres    false    219            d           2606    51453    clientes clientes_correo_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_correo_key UNIQUE (correo);
 F   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_correo_key;
       public            postgres    false    216            f           2606    51451    clientes clientes_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (clienteid);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    216            l           2606    51503    detalleorden detalleorden_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.detalleorden
    ADD CONSTRAINT detalleorden_pkey PRIMARY KEY (detalleid);
 H   ALTER TABLE ONLY public.detalleorden DROP CONSTRAINT detalleorden_pkey;
       public            postgres    false    222            h           2606    51460    ordenes ordenes_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.ordenes
    ADD CONSTRAINT ordenes_pkey PRIMARY KEY (ordenid);
 >   ALTER TABLE ONLY public.ordenes DROP CONSTRAINT ordenes_pkey;
       public            postgres    false    218            j           2606    51496    productos productos_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (productoid);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public            postgres    false    220            n           2606    51504 &   detalleorden detalleorden_ordenid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalleorden
    ADD CONSTRAINT detalleorden_ordenid_fkey FOREIGN KEY (ordenid) REFERENCES public.ordenes(ordenid);
 P   ALTER TABLE ONLY public.detalleorden DROP CONSTRAINT detalleorden_ordenid_fkey;
       public          postgres    false    218    4712    222            o           2606    51509 )   detalleorden detalleorden_productoid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalleorden
    ADD CONSTRAINT detalleorden_productoid_fkey FOREIGN KEY (productoid) REFERENCES public.productos(productoid);
 S   ALTER TABLE ONLY public.detalleorden DROP CONSTRAINT detalleorden_productoid_fkey;
       public          postgres    false    4714    222    220            m           2606    51461    ordenes ordenes_clienteid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ordenes
    ADD CONSTRAINT ordenes_clienteid_fkey FOREIGN KEY (clienteid) REFERENCES public.clientes(clienteid);
 H   ALTER TABLE ONLY public.ordenes DROP CONSTRAINT ordenes_clienteid_fkey;
       public          postgres    false    218    4710    216                F   x�3�t�K<�V�7�(�$�2�͋q*3�����s��8��|�R�8��L������d� lU         A   x�M���0�0�e�:�w��sԮ*5�>
1I�b8������S���f�Bh�!.4��m$ݕn         .   x���4�4202�5��5��24@㛠���F�F(|cT~� ?V         O   x�3�H�S��+IM/J��46г��45�2�!n��X���Z��ih�g`$�L9��9��L8�|4�?F��� VC     