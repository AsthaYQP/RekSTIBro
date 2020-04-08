PGDMP     5                    x            Reksti    12.1    12.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    25187    Reksti    DATABASE     �   CREATE DATABASE "Reksti" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "Reksti";
                postgres    false            �            1259    25193    alat    TABLE     �   CREATE TABLE public.alat (
    id_alat integer NOT NULL,
    id_pengguna integer,
    jumlah_wadah integer,
    jadwal_pakan time without time zone,
    pakan_otomatis boolean,
    sensorpakan_status boolean
);
    DROP TABLE public.alat;
       public         heap    postgres    false            �            1259    25188    pengguna    TABLE     �   CREATE TABLE public.pengguna (
    id integer NOT NULL,
    nama character varying(30),
    email character varying(50),
    password character varying(24)
);
    DROP TABLE public.pengguna;
       public         heap    postgres    false            �            1259    25203    wadah    TABLE     �   CREATE TABLE public.wadah (
    id_wadah integer NOT NULL,
    id_alat integer,
    sensor1_status boolean,
    sensor2_status boolean,
    sensor3_status boolean
);
    DROP TABLE public.wadah;
       public         heap    postgres    false                      0    25193    alat 
   TABLE DATA           t   COPY public.alat (id_alat, id_pengguna, jumlah_wadah, jadwal_pakan, pakan_otomatis, sensorpakan_status) FROM stdin;
    public          postgres    false    203   y                 0    25188    pengguna 
   TABLE DATA           =   COPY public.pengguna (id, nama, email, password) FROM stdin;
    public          postgres    false    202   �                 0    25203    wadah 
   TABLE DATA           b   COPY public.wadah (id_wadah, id_alat, sensor1_status, sensor2_status, sensor3_status) FROM stdin;
    public          postgres    false    204   �       �
           2606    25197    alat alat_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.alat
    ADD CONSTRAINT alat_pkey PRIMARY KEY (id_alat);
 8   ALTER TABLE ONLY public.alat DROP CONSTRAINT alat_pkey;
       public            postgres    false    203            �
           2606    25192    pengguna pengguna_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pengguna
    ADD CONSTRAINT pengguna_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pengguna DROP CONSTRAINT pengguna_pkey;
       public            postgres    false    202            �
           2606    25207    wadah wadah_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.wadah
    ADD CONSTRAINT wadah_pkey PRIMARY KEY (id_wadah);
 :   ALTER TABLE ONLY public.wadah DROP CONSTRAINT wadah_pkey;
       public            postgres    false    204            �
           2606    25198    alat alat_id_pengguna_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alat
    ADD CONSTRAINT alat_id_pengguna_fkey FOREIGN KEY (id_pengguna) REFERENCES public.pengguna(id) ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.alat DROP CONSTRAINT alat_id_pengguna_fkey;
       public          postgres    false    202    2694    203            �
           2606    25208    wadah wadah_id_alat_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.wadah
    ADD CONSTRAINT wadah_id_alat_fkey FOREIGN KEY (id_alat) REFERENCES public.alat(id_alat) ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.wadah DROP CONSTRAINT wadah_id_alat_fkey;
       public          postgres    false    203    204    2696               %   x�3�4�024700�4�40�20 "��4�=... V�M         <   x�3�024700�L,.�H�,M��,.�,J,,pH�M���K���4426153������� ���            x�3�4�LA�=... �k     