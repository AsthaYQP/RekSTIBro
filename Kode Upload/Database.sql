PGDMP         %                x            Reksti    12.1    12.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    25187    Reksti    DATABASE     �   CREATE DATABASE "Reksti" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "Reksti";
                postgres    false                      0    25193    alat 
   TABLE DATA           t   COPY public.alat (id_alat, id_pengguna, jumlah_wadah, jadwal_pakan, pakan_otomatis, sensorpakan_status) FROM stdin;
    public          postgres    false    203                    0    25188    pengguna 
   TABLE DATA           =   COPY public.pengguna (id, nama, email, password) FROM stdin;
    public          postgres    false    202   =                 0    25203    wadah 
   TABLE DATA           b   COPY public.wadah (id_wadah, id_alat, sensor1_status, sensor2_status, sensor3_status) FROM stdin;
    public          postgres    false    204   �          %   x�3�4�024700�4�40�20 "��4�=... V�M         <   x�3�024700�L,.�H�,M��,.�,J,,pH�M���K���4426153������� ���            x�3�4�LA�=... �k     