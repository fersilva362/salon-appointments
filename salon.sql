--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE salon;
--
-- Name: salon; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE salon WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE salon OWNER TO freecodecamp;

\connect salon

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
-- Name: appointments; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.appointments (
    service_id integer,
    customer_id integer,
    appointment_id integer NOT NULL,
    "time" character varying
);


ALTER TABLE public.appointments OWNER TO freecodecamp;

--
-- Name: appointments_appoinment_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.appointments_appoinment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appointments_appoinment_id_seq OWNER TO freecodecamp;

--
-- Name: appointments_appoinment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.appointments_appoinment_id_seq OWNED BY public.appointments.appointment_id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    phone character varying,
    name character varying
);


ALTER TABLE public.customers OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customer_id_seq OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.services (
    service_id integer NOT NULL,
    name character varying
);


ALTER TABLE public.services OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.services_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_service_id_seq OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.services_service_id_seq OWNED BY public.services.service_id;


--
-- Name: appointments appointment_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments ALTER COLUMN appointment_id SET DEFAULT nextval('public.appointments_appoinment_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: services service_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services ALTER COLUMN service_id SET DEFAULT nextval('public.services_service_id_seq'::regclass);


--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.appointments VALUES (1, 2, 1, NULL);
INSERT INTO public.appointments VALUES (3, 2, 2, NULL);
INSERT INTO public.appointments VALUES (3, 2, 3, '14:30');
INSERT INTO public.appointments VALUES (3, 30, 4, '75');
INSERT INTO public.appointments VALUES (3, 10, 90, '23');
INSERT INTO public.appointments VALUES (1, 35, 9, '14');
INSERT INTO public.appointments VALUES (2, 3, 96, '13');
INSERT INTO public.appointments VALUES (2, 3, 172, '12');
INSERT INTO public.appointments VALUES (1, 179, 173, '65');
INSERT INTO public.appointments VALUES (2, 179, 174, '14');
INSERT INTO public.appointments VALUES (2, 3, 102, '25');
INSERT INTO public.appointments VALUES (1, 3, 103, '12');
INSERT INTO public.appointments VALUES (3, 3, 109, '15');
INSERT INTO public.appointments VALUES (1, 127, 110, '12');
INSERT INTO public.appointments VALUES (3, 3, 181, '15');
INSERT INTO public.appointments VALUES (2, 185, 182, '15');
INSERT INTO public.appointments VALUES (3, 81, 55, '52');
INSERT INTO public.appointments VALUES (2, 132, 116, '15');
INSERT INTO public.appointments VALUES (2, 94, 68, '12');
INSERT INTO public.appointments VALUES (1, 104, 77, '45');
INSERT INTO public.appointments VALUES (1, 3, 78, '');
INSERT INTO public.appointments VALUES (1, 109, 84, '12');
INSERT INTO public.appointments VALUES (1, 162, 153, '12');


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.customers VALUES (1, '555', 'fer');
INSERT INTO public.customers VALUES (2, '222', 'jj');
INSERT INTO public.customers VALUES (3, '123', 'ferr');
INSERT INTO public.customers VALUES (4, '126', 'fers');
INSERT INTO public.customers VALUES (5, '147', 'ñlk');
INSERT INTO public.customers VALUES (104, '264', 'kkk');
INSERT INTO public.customers VALUES (179, '8745632', 'ñlkfd');
INSERT INTO public.customers VALUES (10, '555-555-5555', 'Fabio');
INSERT INTO public.customers VALUES (11, '125', 'ferc');
INSERT INTO public.customers VALUES (12, '148', 'poi');
INSERT INTO public.customers VALUES (13, '2', 're');
INSERT INTO public.customers VALUES (14, '9', 'efb');
INSERT INTO public.customers VALUES (15, '65', 'gr');
INSERT INTO public.customers VALUES (16, '87', 'oi');
INSERT INTO public.customers VALUES (17, 'f', 'f');
INSERT INTO public.customers VALUES (18, '888', 'rty');
INSERT INTO public.customers VALUES (109, '254', 'ñl');
INSERT INTO public.customers VALUES (23, '54', 'fe');
INSERT INTO public.customers VALUES (185, '963214', 'poiu');
INSERT INTO public.customers VALUES (28, '256', 'ferres');
INSERT INTO public.customers VALUES (29, '6985', 'hg');
INSERT INTO public.customers VALUES (30, '874', 'pol');
INSERT INTO public.customers VALUES (35, '852', 'pokj');
INSERT INTO public.customers VALUES (127, '854', 'ñññ');
INSERT INTO public.customers VALUES (132, '785412', 'ñlk');
INSERT INTO public.customers VALUES (81, '951', 'qaz');
INSERT INTO public.customers VALUES (94, '777', 'faa');
INSERT INTO public.customers VALUES (96, '1', '555-5555');
INSERT INTO public.customers VALUES (162, '987', 'LKJJH');
INSERT INTO public.customers VALUES (170, '', '');


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.services VALUES (1, 'cut');
INSERT INTO public.services VALUES (2, 'clean');
INSERT INTO public.services VALUES (3, 'wash');


--
-- Name: appointments_appoinment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.appointments_appoinment_id_seq', 194, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 195, true);


--
-- Name: services_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.services_service_id_seq', 3, true);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointment_id);


--
-- Name: customers customers_phone_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_phone_key UNIQUE (phone);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (service_id);


--
-- Name: appointments appointments_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: appointments appointments_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(service_id);


--
-- PostgreSQL database dump complete
--

