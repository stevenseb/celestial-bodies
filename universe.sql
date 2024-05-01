--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: distance_from_earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.distance_from_earth (
    distance_from_earth_id integer NOT NULL,
    star_id integer,
    name character varying,
    rad integer,
    description text,
    rank numeric,
    gaseous boolean NOT NULL,
    sun boolean NOT NULL
);


ALTER TABLE public.distance_from_earth OWNER TO freecodecamp;

--
-- Name: distance_from_earth_distance_from_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.distance_from_earth_distance_from_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.distance_from_earth_distance_from_earth_id_seq OWNER TO freecodecamp;

--
-- Name: distance_from_earth_distance_from_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.distance_from_earth_distance_from_earth_id_seq OWNED BY public.distance_from_earth.distance_from_earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying,
    mass integer,
    rad integer,
    description text,
    rank numeric,
    gaseous boolean NOT NULL,
    sun boolean NOT NULL
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    star_id integer,
    name character varying,
    mass integer,
    rad integer,
    description text,
    rank numeric,
    gaseous boolean NOT NULL,
    sun boolean NOT NULL
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
    star_id integer,
    name character varying,
    mass integer,
    rad integer,
    description text,
    rank numeric,
    gaseous boolean NOT NULL,
    sun boolean NOT NULL
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
    galaxy_id integer,
    name character varying,
    mass integer,
    rad integer,
    description text,
    rank numeric,
    gaseous boolean NOT NULL,
    sun boolean NOT NULL
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
-- Name: distance_from_earth distance_from_earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth ALTER COLUMN distance_from_earth_id SET DEFAULT nextval('public.distance_from_earth_distance_from_earth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: distance_from_earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.distance_from_earth VALUES (1, 5, 'Buttz', 400, 'I hate it', 5, true, false);
INSERT INTO public.distance_from_earth VALUES (2, 6, 'ButtzTwo', 400, 'I like it', 5, true, false);
INSERT INTO public.distance_from_earth VALUES (4, 2, 'ButtzThree', 405, 'I love it', 5, true, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Wanders', 345, 4000, 'A somewhat cool galaxy', 1, true, false);
INSERT INTO public.galaxy VALUES (2, 'Lusts', 345, 4000, 'A somewhat cool galaxy', 3, true, false);
INSERT INTO public.galaxy VALUES (3, 'Sooners', 345, 4000, 'A somewhat cool galaxy', 6, true, false);
INSERT INTO public.galaxy VALUES (4, 'Hardens', 345, 4000, 'A somewhat cool galaxy', 2, true, false);
INSERT INTO public.galaxy VALUES (5, 'Mushes', 345, 4000, 'A somewhat cool galaxy', 4, true, false);
INSERT INTO public.galaxy VALUES (6, 'Mushin', 345, 4000, 'A somewhat cool galaxy', 4, true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 1, 'Buck', 345, 4000, 'A somewhat cool planet', 5, true, false);
INSERT INTO public.moon VALUES (2, 2, 2, 'Carp', 200, 4500, 'A cool planet', 3, false, true);
INSERT INTO public.moon VALUES (3, 3, 3, 'Buttz', 455, 10900, 'A very very cool planet', 2, true, true);
INSERT INTO public.moon VALUES (4, 4, 4, 'Moosis', 222, 920, 'A very cool planet', 1, false, true);
INSERT INTO public.moon VALUES (5, 5, 5, 'Gandersram', 344, 2450, 'A very cool planet', 6, true, false);
INSERT INTO public.moon VALUES (6, 6, 6, 'SonOfGandersram', 344, 2476, 'An ok planet', 8, true, false);
INSERT INTO public.moon VALUES (7, 1, 1, 'Bucker', 345, 4000, 'A somewhat cool moon', 5, true, false);
INSERT INTO public.moon VALUES (8, 2, 2, 'Caprice', 200, 4500, 'A cool moon', 3, false, true);
INSERT INTO public.moon VALUES (9, 3, 3, 'Buttle', 455, 10900, 'A very very cool moon', 2, true, true);
INSERT INTO public.moon VALUES (10, 4, 4, 'Moosegrass8', 222, 920, 'A very cool moon', 1, false, true);
INSERT INTO public.moon VALUES (11, 5, 5, 'Gandertoad7', 344, 2450, 'A very cool moon', 6, true, false);
INSERT INTO public.moon VALUES (12, 6, 6, 'SonOfGandertoad', 344, 2476, 'An ok moon', 8, true, false);
INSERT INTO public.moon VALUES (13, 1, 1, 'Bucket4', 345, 4000, 'A somewhat cool moon', 5, true, false);
INSERT INTO public.moon VALUES (14, 2, 2, 'Caprio', 200, 4500, 'A cool moon', 3, false, true);
INSERT INTO public.moon VALUES (15, 3, 3, 'Buttrain4', 455, 10900, 'A very very cool moon', 2, true, true);
INSERT INTO public.moon VALUES (16, 4, 4, 'Moosegrab', 222, 920, 'A very cool moon', 1, false, true);
INSERT INTO public.moon VALUES (17, 5, 5, 'Ganderz', 344, 2450, 'A very cool moon', 6, true, false);
INSERT INTO public.moon VALUES (18, 6, 6, 'SonOfGanderz', 344, 2476, 'An ok moon', 8, true, false);
INSERT INTO public.moon VALUES (19, 5, 5, 'Ganderz12', 344, 2450, 'A very cool moon', 6, true, false);
INSERT INTO public.moon VALUES (20, 6, 6, 'SonOfGanderz6', 344, 2476, 'An ok moon', 8, true, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Wanderlust4', 345, 4000, 'A somewhat cool star', 1, true, false);
INSERT INTO public.planet VALUES (2, 2, 'Lusty2', 345, 4000, 'A somewhat cool star', 3, true, false);
INSERT INTO public.planet VALUES (3, 3, 'Soonerlust7', 345, 4000, 'A somewhat cool star', 6, true, false);
INSERT INTO public.planet VALUES (4, 4, 'Hardenlust5', 345, 4000, 'A somewhat cool star', 2, true, false);
INSERT INTO public.planet VALUES (5, 5, 'Mushlust0', 345, 4000, 'A somewhat cool star', 4, true, false);
INSERT INTO public.planet VALUES (6, 6, 'Grad0y', 345, 4000, 'A somewhat cool star', 4, true, false);
INSERT INTO public.planet VALUES (7, 1, 'Wanderlust42', 345, 4000, 'A somewhat cool star', 1, true, false);
INSERT INTO public.planet VALUES (8, 2, 'Lusty22', 345, 4000, 'A somewhat cool star', 3, true, false);
INSERT INTO public.planet VALUES (9, 3, 'Soonerlust72', 345, 4000, 'A somewhat cool star', 6, true, false);
INSERT INTO public.planet VALUES (10, 4, 'Hardenlust52', 345, 4000, 'A somewhat cool star', 2, true, false);
INSERT INTO public.planet VALUES (11, 5, 'Mushlust2', 345, 4000, 'A somewhat cool star', 4, true, false);
INSERT INTO public.planet VALUES (12, 6, 'Grady3', 345, 4000, 'A somewhat cool star', 4, true, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Wanderlust', 345, 4000, 'A somewhat cool galaxy', 1, true, false);
INSERT INTO public.star VALUES (2, 2, 'Lusty', 345, 4000, 'A somewhat cool galaxy', 3, true, false);
INSERT INTO public.star VALUES (3, 3, 'Soonerlust', 345, 4000, 'A somewhat cool galaxy', 6, true, false);
INSERT INTO public.star VALUES (4, 4, 'Hardenlust', 345, 4000, 'A somewhat cool galaxy', 2, true, false);
INSERT INTO public.star VALUES (5, 5, 'Mushlust', 345, 4000, 'A somewhat cool galaxy', 4, true, false);
INSERT INTO public.star VALUES (6, 6, 'Grady', 345, 4000, 'A somewhat cool galaxy', 4, true, false);


--
-- Name: distance_from_earth_distance_from_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.distance_from_earth_distance_from_earth_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: distance_from_earth distance_from_earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth
    ADD CONSTRAINT distance_from_earth_name_key UNIQUE (name);


--
-- Name: distance_from_earth distance_from_earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth
    ADD CONSTRAINT distance_from_earth_pkey PRIMARY KEY (distance_from_earth_id);


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
-- Name: distance_from_earth distance_from_earth_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth
    ADD CONSTRAINT distance_from_earth_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

