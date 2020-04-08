--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

-- Started on 2020-04-08 20:09:08

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
-- TOC entry 203 (class 1259 OID 25193)
-- Name: alat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alat (
    id_alat integer NOT NULL,
    id_pengguna integer,
    jumlah_wadah integer,
    jadwal_pakan time without time zone,
    pakan_otomatis boolean,
    sensorpakan_status boolean
);


ALTER TABLE public.alat OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 25188)
-- Name: pengguna; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pengguna (
    id integer NOT NULL,
    nama character varying(30),
    email character varying(50),
    password character varying(24)
);


ALTER TABLE public.pengguna OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 25203)
-- Name: wadah; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wadah (
    id_wadah integer NOT NULL,
    id_alat integer,
    sensor1_status boolean,
    sensor2_status boolean,
    sensor3_status boolean
);


ALTER TABLE public.wadah OWNER TO postgres;

--
-- TOC entry 2828 (class 0 OID 25193)
-- Dependencies: 203
-- Data for Name: alat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alat (id_alat, id_pengguna, jumlah_wadah, jadwal_pakan, pakan_otomatis, sensorpakan_status) FROM stdin;
1	18217003	1	07:00:00	t	f
\.


--
-- TOC entry 2827 (class 0 OID 25188)
-- Dependencies: 202
-- Data for Name: pengguna; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pengguna (id, nama, email, password) FROM stdin;
18217003	astha	yudhistiraqp@gmail.com	12345678
\.


--
-- TOC entry 2829 (class 0 OID 25203)
-- Dependencies: 204
-- Data for Name: wadah; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wadah (id_wadah, id_alat, sensor1_status, sensor2_status, sensor3_status) FROM stdin;
1	1	f	f	f
\.


--
-- TOC entry 2696 (class 2606 OID 25197)
-- Name: alat alat_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alat
    ADD CONSTRAINT alat_pkey PRIMARY KEY (id_alat);


--
-- TOC entry 2694 (class 2606 OID 25192)
-- Name: pengguna pengguna_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pengguna
    ADD CONSTRAINT pengguna_pkey PRIMARY KEY (id);


--
-- TOC entry 2698 (class 2606 OID 25207)
-- Name: wadah wadah_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wadah
    ADD CONSTRAINT wadah_pkey PRIMARY KEY (id_wadah);


--
-- TOC entry 2699 (class 2606 OID 25198)
-- Name: alat alat_id_pengguna_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alat
    ADD CONSTRAINT alat_id_pengguna_fkey FOREIGN KEY (id_pengguna) REFERENCES public.pengguna(id) ON DELETE CASCADE;


--
-- TOC entry 2700 (class 2606 OID 25208)
-- Name: wadah wadah_id_alat_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wadah
    ADD CONSTRAINT wadah_id_alat_fkey FOREIGN KEY (id_alat) REFERENCES public.alat(id_alat) ON DELETE CASCADE;


-- Completed on 2020-04-08 20:09:09

--
-- PostgreSQL database dump complete
--

