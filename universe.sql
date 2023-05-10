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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    column_4 integer,
    column_5 integer,
    column_6 integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_key_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_key_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_key_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_key_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_key_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    closest_planet_km integer,
    planet_id integer,
    column_5 integer,
    column_6 boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_key_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_key_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_key_id_seq OWNER TO freecodecamp;

--
-- Name: moon_key_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_key_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    mass_tons numeric,
    has_moons boolean,
    star_id integer,
    column_6 integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_key_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_key_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_key_id_seq OWNER TO freecodecamp;

--
-- Name: planet_key_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_key_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_planets integer,
    galaxy_id integer,
    column_5 integer,
    column_6 integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_key_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_key_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_key_id_seq OWNER TO freecodecamp;

--
-- Name: star_key_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_key_id_seq OWNED BY public.star.star_id;


--
-- Name: table_5; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table_5 (
    name character varying(20),
    table_5_id integer NOT NULL,
    column_4 integer NOT NULL,
    column_5 integer NOT NULL,
    column_6 character varying
);


ALTER TABLE public.table_5 OWNER TO freecodecamp;

--
-- Name: table_5_table_5_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.table_5_table_5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_5_table_5_id_seq OWNER TO freecodecamp;

--
-- Name: table_5_table_5_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.table_5_table_5_id_seq OWNED BY public.table_5.table_5_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_key_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_key_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_key_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_key_id_seq'::regclass);


--
-- Name: table_5 table_5_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_5 ALTER COLUMN table_5_id SET DEFAULT nextval('public.table_5_table_5_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy 1', 'Description for galaxy 1', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', 'Description for galaxy 2', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', 'Description for galaxy 3', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', 'Description for galaxy 4', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', 'Description for galaxy 5', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', 'Description for galaxy 6', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moonn 1', 12351251, 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Moon 2', 212351251, 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Moon 3', 62351251, 1, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Moon 4', 62351251, 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Moon 5', 62351251, 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Moon 6', 62351251, 3, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Moon 7', 62351251, 4, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Moon 8', 62351251, 4, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Moon 9', 62351251, 5, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Moon 10', 62351251, 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Moon 11', 62351251, 6, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Moon 12', 62351251, 6, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Moon 13', 62351251, 7, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Moon 14', 62351251, 7, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Moon 15', 62351251, 8, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Moon 16', 62351251, 8, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Moon 17', 62351251, 9, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Moon 18', 62351251, 9, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Moon 19', 62351251, 9, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Moon 20', 62351251, 9, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet 1', 234.234, true, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Planet 2', 456456.234, true, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Planet 3', 451231.234, true, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Planet 4', 3453451.23, true, 2, NULL);
INSERT INTO public.planet VALUES (5, 'Planet 5', 234563.23, true, 2, NULL);
INSERT INTO public.planet VALUES (6, 'Planet 6', 3463.12, true, 3, NULL);
INSERT INTO public.planet VALUES (7, 'Planet 7', 3125.12, true, 4, NULL);
INSERT INTO public.planet VALUES (8, 'Planet 8', 125125.12, true, 4, NULL);
INSERT INTO public.planet VALUES (9, 'Planet 9', 1361.12, true, 5, NULL);
INSERT INTO public.planet VALUES (10, 'Planet 10', 136.12, false, 6, NULL);
INSERT INTO public.planet VALUES (11, 'Planet 11', 136136.1, false, 6, NULL);
INSERT INTO public.planet VALUES (12, 'Planet 12', 146146.1, false, 7, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star 1', 5, 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Star 2', 7, 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Star 3', 8, 2, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Star 4', 4, 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Star 5', 2, 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Star 6', 1, 6, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Star 7', 15, 3, NULL, NULL);


--
-- Data for Name: table_5; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table_5 VALUES ('Column 1', 1, 531, 436, 'Text 1');
INSERT INTO public.table_5 VALUES ('Column 2', 2, 12, 5, 'Text 2');
INSERT INTO public.table_5 VALUES ('Column 3', 3, 1123, 6, 'Text 3');


--
-- Name: galaxy_key_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_key_id_seq', 6, true);


--
-- Name: moon_key_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_key_id_seq', 20, true);


--
-- Name: planet_key_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_key_id_seq', 12, true);


--
-- Name: star_key_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_key_id_seq', 7, true);


--
-- Name: table_5_table_5_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.table_5_table_5_id_seq', 3, true);


--
-- Name: galaxy galaxy_column_6_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_column_6_key UNIQUE (column_6);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_column_6_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_column_6_key UNIQUE (column_6);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_column_6_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_column_6_key UNIQUE (column_6);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_column_6_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_column_6_key UNIQUE (column_6);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: table_5 table_5_column_6_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_5
    ADD CONSTRAINT table_5_column_6_key UNIQUE (column_6);


--
-- Name: table_5 table_5_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_5
    ADD CONSTRAINT table_5_name_key UNIQUE (name);


--
-- Name: table_5 table_5_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_5
    ADD CONSTRAINT table_5_pkey PRIMARY KEY (table_5_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

