PGDMP     9                	    {            cinema    15.1    15.1 $    (           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            )           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            *           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            +           1262    16398    cinema    DATABASE     z   CREATE DATABASE cinema WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE cinema;
                postgres    false            ,           0    0    DATABASE cinema    COMMENT     9   COMMENT ON DATABASE cinema IS 'GB interview homework 3';
                   postgres    false    3371            �            1255    17295    fn_test(integer, integer)    FUNCTION     7  CREATE FUNCTION public.fn_test(in_a integer, in_b integer) RETURNS integer
    LANGUAGE plpgsql COST 90
    AS $$


DECLARE

    c INTEGER;

BEGIN

    c := in_a + in_b;

    c := 
            CASE
                WHEN c > 29 THEN c * 29
                ELSE c * 2
            END;


    RETURN c;


END;


$$;
 :   DROP FUNCTION public.fn_test(in_a integer, in_b integer);
       public          postgres    false            -           0    0 ,   FUNCTION fn_test(in_a integer, in_b integer)    COMMENT     J   COMMENT ON FUNCTION public.fn_test(in_a integer, in_b integer) IS 'test';
          public          postgres    false    230            �            1259    16410    movie_theaters    TABLE     �   CREATE TABLE public.movie_theaters (
    id bigint NOT NULL,
    cinema_name character varying(128),
    cinema_address character varying(128)
);
 "   DROP TABLE public.movie_theaters;
       public         heap    postgres    false            �            1259    16409    cinema_id_seq    SEQUENCE     �   ALTER TABLE public.movie_theaters ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cinema_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            �            1259    16428    clients    TABLE     8  CREATE TABLE public.clients (
    id bigint NOT NULL,
    first_name character varying(128) NOT NULL,
    last_name character varying(128) NOT NULL,
    email character varying(128) NOT NULL,
    address character varying(128),
    phone bigint,
    status integer NOT NULL,
    adress character varying(255)
);
    DROP TABLE public.clients;
       public         heap    postgres    false            �            1259    16427    clients_id_seq    SEQUENCE     �   ALTER TABLE public.clients ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    228            �            1259    16399    movies    TABLE     �   CREATE TABLE public.movies (
    id bigint NOT NULL,
    movie_name character varying(128) NOT NULL,
    movie_duration bigint
);
    DROP TABLE public.movies;
       public         heap    postgres    false            �            1259    16459    movies_id_seq    SEQUENCE     �   ALTER TABLE public.movies ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.movies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    16416    sessions    TABLE     �   CREATE TABLE public.sessions (
    id bigint NOT NULL,
    id_movie_theater bigint NOT NULL,
    id_movie bigint NOT NULL,
    start_time timestamp without time zone,
    ticket_price money
);
    DROP TABLE public.sessions;
       public         heap    postgres    false            �            1259    16415    session_id_seq    SEQUENCE     �   ALTER TABLE public.sessions ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.session_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    224            �            1259    16422    tickets    TABLE     �   CREATE TABLE public.tickets (
    id bigint NOT NULL,
    id_session bigint NOT NULL,
    id_client bigint NOT NULL,
    place_number bigint NOT NULL
);
    DROP TABLE public.tickets;
       public         heap    postgres    false            �            1259    16421    ticket_id_seq    SEQUENCE     �   ALTER TABLE public.tickets ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ticket_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    226            $          0    16428    clients 
   TABLE DATA           c   COPY public.clients (id, first_name, last_name, email, address, phone, status, adress) FROM stdin;
    public          postgres    false    228   �(                 0    16410    movie_theaters 
   TABLE DATA           I   COPY public.movie_theaters (id, cinema_name, cinema_address) FROM stdin;
    public          postgres    false    222   1)                 0    16399    movies 
   TABLE DATA           @   COPY public.movies (id, movie_name, movie_duration) FROM stdin;
    public          postgres    false    220   r)                  0    16416    sessions 
   TABLE DATA           \   COPY public.sessions (id, id_movie_theater, id_movie, start_time, ticket_price) FROM stdin;
    public          postgres    false    224   �)       "          0    16422    tickets 
   TABLE DATA           J   COPY public.tickets (id, id_session, id_client, place_number) FROM stdin;
    public          postgres    false    226   v*       .           0    0    cinema_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.cinema_id_seq', 2, true);
          public          postgres    false    221            /           0    0    clients_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.clients_id_seq', 2, true);
          public          postgres    false    227            0           0    0    movies_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.movies_id_seq', 5, true);
          public          postgres    false    229            1           0    0    session_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.session_id_seq', 13, true);
          public          postgres    false    223            2           0    0    ticket_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.ticket_id_seq', 23, true);
          public          postgres    false    225            �           2606    16414    movie_theaters cinema_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.movie_theaters
    ADD CONSTRAINT cinema_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.movie_theaters DROP CONSTRAINT cinema_pkey;
       public            postgres    false    222            �           2606    16434    clients clients_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public            postgres    false    228            �           2606    16403    movies film_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT film_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.movies DROP CONSTRAINT film_pkey;
       public            postgres    false    220            �           2606    16438    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            postgres    false    224            �           2606    16436    tickets tickets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tickets DROP CONSTRAINT tickets_pkey;
       public            postgres    false    226            �           2606    16454    sessions fk_session_movie    FK CONSTRAINT     �   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT fk_session_movie FOREIGN KEY (id_movie) REFERENCES public.movies(id) NOT VALID;
 C   ALTER TABLE ONLY public.sessions DROP CONSTRAINT fk_session_movie;
       public          postgres    false    3201    220    224            �           2606    16449 !   sessions fk_session_movie_theater    FK CONSTRAINT     �   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT fk_session_movie_theater FOREIGN KEY (id_movie_theater) REFERENCES public.movie_theaters(id) NOT VALID;
 K   ALTER TABLE ONLY public.sessions DROP CONSTRAINT fk_session_movie_theater;
       public          postgres    false    222    224    3203            �           2606    16439    tickets fk_ticket_cliet    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT fk_ticket_cliet FOREIGN KEY (id_client) REFERENCES public.clients(id) NOT VALID;
 A   ALTER TABLE ONLY public.tickets DROP CONSTRAINT fk_ticket_cliet;
       public          postgres    false    3209    228    226            �           2606    16444    tickets fk_ticket_session    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT fk_ticket_session FOREIGN KEY (id_session) REFERENCES public.sessions(id) NOT VALID;
 C   ALTER TABLE ONLY public.tickets DROP CONSTRAINT fk_ticket_session;
       public          postgres    false    226    224    3205            $   O   x�3�t�I��N�����4tH����R�� 'NC#cNC�?.#N�Ģ�DN�Ҫ�̼DN#�\�����.F��� ��T         1   x�3�0�{/컰��8����@�.,�0�7����� ���         h   x�3�0��/�P �=�]l����̀ˈ���[/l���p��®8-��9/L��	(����F\&�]�
T�h�^��>��)V)]#�d� �*E�          |   x�u��� �3Tajfgы��~"_f'#N�GPȠ���"���y���=�V$X�C�&��ؐ|-$�.�M�B��m]$K�d{H�����b�.���1�s��h�#��F���rM�      "   _   x�%��	�0C�oi�R�y���稣0���<�� &�n���=�����Ƌn��aƕ�ai�Wz���2kX��]�^KRai�,�J�����`0     