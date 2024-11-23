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
-- Name: fortyk_inhabitants; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fortyk_inhabitants (
    fortyk_inhabitants_id integer NOT NULL,
    name character varying(30) NOT NULL,
    faction character varying(30),
    planet_id integer,
    years_existed integer
);


ALTER TABLE public.fortyk_inhabitants OWNER TO freecodecamp;

--
-- Name: fortyk_inhabitants_fortyk_inhabitants_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fortyk_inhabitants_fortyk_inhabitants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fortyk_inhabitants_fortyk_inhabitants_id_seq OWNER TO freecodecamp;

--
-- Name: fortyk_inhabitants_fortyk_inhabitants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fortyk_inhabitants_fortyk_inhabitants_id_seq OWNED BY public.fortyk_inhabitants.fortyk_inhabitants_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    constellation text,
    type text,
    alt_name character varying(30)
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
    name character varying(30) NOT NULL,
    planet_id integer,
    discovery_year integer,
    inhabitable boolean
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
    name character varying(30) NOT NULL,
    star_id integer,
    coldest_temp numeric(10,3),
    dist_from_sun numeric(10,3),
    inhabitable boolean
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    solar_radius numeric(10,5),
    notes text
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
-- Name: fortyk_inhabitants fortyk_inhabitants_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fortyk_inhabitants ALTER COLUMN fortyk_inhabitants_id SET DEFAULT nextval('public.fortyk_inhabitants_fortyk_inhabitants_id_seq'::regclass);


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
-- Data for Name: fortyk_inhabitants; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fortyk_inhabitants VALUES (1, 'Humans', 'Imperium of Man', 3, NULL);
INSERT INTO public.fortyk_inhabitants VALUES (2, 'Grey Knights', 'Imperium of Man', 6, NULL);
INSERT INTO public.fortyk_inhabitants VALUES (3, 'Adeptus Mechanicus', 'Imperium of Man', 4, NULL);
INSERT INTO public.fortyk_inhabitants VALUES (4, 'Sisters of Silence', 'Imperium of Man', 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 'Sagittarius', 'Barred Spiral', '');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Andromeda', 'Barred Spiral', '');
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', 'Dorado/Mensa', 'Dwarf', '');
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 'Coma Berenices', 'Spiral', 'Sleeping Beauty Galaxy');
INSERT INTO public.galaxy VALUES (5, 'Needle', 'Coma Berenices', 'Edge-on Spiral', 'Caldwell 38');
INSERT INTO public.galaxy VALUES (6, 'Porpoise', 'Hydra', 'Interacting Spiral', 'Penguin');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, NULL, true);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 1877, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 1877, false);
INSERT INTO public.moon VALUES (4, 'Io', 5, 1610, true);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 1610, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 1610, true);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 1610, true);
INSERT INTO public.moon VALUES (8, 'Mimas', 6, 1789, false);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, 1789, false);
INSERT INTO public.moon VALUES (10, 'Tethys', 6, 1686, false);
INSERT INTO public.moon VALUES (11, 'Dione', 6, 1686, false);
INSERT INTO public.moon VALUES (12, 'Rhea', 6, 1673, false);
INSERT INTO public.moon VALUES (13, 'Titan', 6, 1656, true);
INSERT INTO public.moon VALUES (14, 'Phoebe', 6, 1899, true);
INSERT INTO public.moon VALUES (15, 'Ariel', 7, 1851, false);
INSERT INTO public.moon VALUES (16, 'Umbriel', 7, 1851, false);
INSERT INTO public.moon VALUES (17, 'Titania', 7, 1787, false);
INSERT INTO public.moon VALUES (18, 'Oberon', 7, 1787, false);
INSERT INTO public.moon VALUES (19, 'Miranda', 7, 1949, false);
INSERT INTO public.moon VALUES (20, 'Triton', 8, 1846, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, -170.000, 0.450, false);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 400.000, 0.720, false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, -40.000, 1.000, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, -78.500, 1.450, true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, NULL, 5.200, false);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, NULL, 10.000, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, NULL, 19.000, false);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, NULL, 30.000, false);
INSERT INTO public.planet VALUES (9, 'Makemake', 1, NULL, 45.000, false);
INSERT INTO public.planet VALUES (10, 'Eris', 1, NULL, 60.000, true);
INSERT INTO public.planet VALUES (11, 'Gonggong', 1, NULL, 70.000, false);
INSERT INTO public.planet VALUES (12, 'Hoth', 1, -223.000, 21500.000, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1.00000, 'Earths sun');
INSERT INTO public.star VALUES (2, 'WOH G64', 3, 1540.00000, 'Largest known star');
INSERT INTO public.star VALUES (3, 'VY Canis Majoris', 1, 1420.00000, 'Brightest star in Milky Way');
INSERT INTO public.star VALUES (4, 'LGGS J004428.48+415130.9', 2, 1410.00000, '');
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 1, 0.15420, '');
INSERT INTO public.star VALUES (6, 'Tired', 1, 3.00000, 'done soon');


--
-- Name: fortyk_inhabitants_fortyk_inhabitants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fortyk_inhabitants_fortyk_inhabitants_id_seq', 4, true);


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
-- Name: fortyk_inhabitants fortyk_inhabitants_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fortyk_inhabitants
    ADD CONSTRAINT fortyk_inhabitants_name_key UNIQUE (name);


--
-- Name: fortyk_inhabitants fortyk_inhabitants_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fortyk_inhabitants
    ADD CONSTRAINT fortyk_inhabitants_pkey PRIMARY KEY (fortyk_inhabitants_id);


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
-- Name: fortyk_inhabitants fortyk_inhabitants_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fortyk_inhabitants
    ADD CONSTRAINT fortyk_inhabitants_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

