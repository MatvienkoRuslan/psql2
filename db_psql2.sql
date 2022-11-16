--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

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
-- Name: actor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actor (
    id integer NOT NULL,
    name character varying DEFAULT 'noname'::character varying NOT NULL,
    born character varying NOT NULL
);


ALTER TABLE public.actor OWNER TO postgres;

--
-- Name: actor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.actor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actor_id_seq OWNER TO postgres;

--
-- Name: actor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.actor_id_seq OWNED BY public.actor.id;


--
-- Name: allfilm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.allfilm (
    film_id integer DEFAULT 0 NOT NULL,
    producer_id integer DEFAULT 0 NOT NULL,
    actor_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.allfilm OWNER TO postgres;

--
-- Name: film; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.film (
    id integer NOT NULL,
    name character varying DEFAULT 'noname'::character varying NOT NULL,
    release character varying NOT NULL
);


ALTER TABLE public.film OWNER TO postgres;

--
-- Name: film_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.film_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.film_id_seq OWNER TO postgres;

--
-- Name: film_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.film_id_seq OWNED BY public.film.id;


--
-- Name: producer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producer (
    id integer NOT NULL,
    name character varying DEFAULT 'noname'::character varying NOT NULL,
    born character varying NOT NULL
);


ALTER TABLE public.producer OWNER TO postgres;

--
-- Name: producer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producer_id_seq OWNER TO postgres;

--
-- Name: producer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producer_id_seq OWNED BY public.producer.id;


--
-- Name: actor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actor ALTER COLUMN id SET DEFAULT nextval('public.actor_id_seq'::regclass);


--
-- Name: film id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film ALTER COLUMN id SET DEFAULT nextval('public.film_id_seq'::regclass);


--
-- Name: producer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producer ALTER COLUMN id SET DEFAULT nextval('public.producer_id_seq'::regclass);


--
-- Data for Name: actor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actor (id, name, born) FROM stdin;
1	Emil Jannings	1884
2	Javier Bardem	1969
3	Russell Crowe	1964
4	Terrence Howard	1969
5	Ryan Gosling	1980
\.


--
-- Data for Name: allfilm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.allfilm (film_id, producer_id, actor_id) FROM stdin;
1	1	1
2	2	2
3	3	3
4	5	4
5	5	5
\.


--
-- Data for Name: film; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.film (id, name, release) FROM stdin;
1	The Last Command	1927
2	Before Night Falls	2000
3	A Beautiful Mind	2001
4	Hustle & Flow	2005
5	Half Nelson	2006
\.


--
-- Data for Name: producer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.producer (id, name, born) FROM stdin;
1	Adolph Zukor	1873
2	Jon Kilik	1956
3	Brian Grazer	1951
4	Stephanie Allain	1959
5	Jamie Patricof	1956
\.


--
-- Name: actor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.actor_id_seq', 5, true);


--
-- Name: film_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.film_id_seq', 5, true);


--
-- Name: producer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.producer_id_seq', 5, true);


--
-- PostgreSQL database dump complete
--

