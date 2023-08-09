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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    star_count integer,
    planet_count integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: jedi; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.jedi (
    jedi_id integer NOT NULL,
    name character varying(50) NOT NULL,
    species character varying(50) NOT NULL,
    height_cm numeric(4,1)
);


ALTER TABLE public.jedi OWNER TO freecodecamp;

--
-- Name: jedi_jedi_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.jedi_jedi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jedi_jedi_id_seq OWNER TO freecodecamp;

--
-- Name: jedi_jedi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.jedi_jedi_id_seq OWNED BY public.jedi.jedi_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    moon_count integer,
    habitable boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    moon_count integer,
    habitable boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    planet_count integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: jedi jedi_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.jedi ALTER COLUMN jedi_id SET DEFAULT nextval('public.jedi_jedi_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 'The galaxy that we live in', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Futurama', 'Welcome to the world of tomorrow', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Transformers', 'Autobots roll out', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Avatar', 'Blue guys', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Star Wars', 'A galaxy far, far away', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'MCU', 'Avengers assemble', NULL, NULL);


--
-- Data for Name: jedi; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.jedi VALUES (1, 'Luke Skywalker', 'Human', NULL);
INSERT INTO public.jedi VALUES (2, 'Ahsoka Tano', 'Togruta', NULL);
INSERT INTO public.jedi VALUES (3, 'Kit Fisto', 'Nautolan', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 'Luna', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 4, 'Phobos', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 4, 'Deimos', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 5, 'Europa', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 5, 'Ganymede', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 5, 'Io', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 5, 'Callisto', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 6, 'Titan', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 6, 'Rhea', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 6, 'Iapetus', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 6, 'Dione', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 6, 'Tethys', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 6, 'Enceladus', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 6, 'Mimas', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 7, 'Oberon', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 7, 'Titania', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 7, 'Umbriel', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 7, 'Ariel', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 7, 'Miranda', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 8, 'Triton', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 1, 'Venus', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 1, 'Earth', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 1, 'Mars', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 1, 'Jupiter', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 1, 'Saturn', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 1, 'Uranus', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 1, 'Neptune', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 2, 'Decapod 10', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 3, 'Cybertron', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 8, 'Pandora', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 9, 'Tatooine', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 10, 'Asgard', NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sol', NULL, NULL);
INSERT INTO public.star VALUES (2, 2, 'Decapod Prime', NULL, NULL);
INSERT INTO public.star VALUES (3, 3, 'Cybersol', NULL, NULL);
INSERT INTO public.star VALUES (8, 4, 'Alpa Centauri', NULL, NULL);
INSERT INTO public.star VALUES (9, 5, 'Tatoo 1', NULL, NULL);
INSERT INTO public.star VALUES (10, 6, 'Yggdrasil', NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: jedi_jedi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.jedi_jedi_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: jedi jedi_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.jedi
    ADD CONSTRAINT jedi_name_key UNIQUE (name);


--
-- Name: jedi jedi_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.jedi
    ADD CONSTRAINT jedi_pkey PRIMARY KEY (jedi_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

