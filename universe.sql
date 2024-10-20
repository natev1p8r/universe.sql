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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    size numeric(5,2),
    age integer NOT NULL,
    number integer,
    description text
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
    name character varying(39) NOT NULL,
    age_in_billions integer,
    size integer,
    planet_id integer
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
    name character varying(50) NOT NULL,
    in_milkyway boolean,
    diameter_in_1000_km integer,
    star_id integer NOT NULL
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
    name character varying NOT NULL,
    shape character varying(20),
    galaxy_id integer,
    age integer,
    old boolean
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
-- Name: summary; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.summary (
    moon character varying(50) NOT NULL,
    name character varying(40) NOT NULL,
    summary_id integer NOT NULL
);


ALTER TABLE public.summary OWNER TO freecodecamp;

--
-- Name: summary_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.summary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.summary_id_seq OWNER TO freecodecamp;

--
-- Name: summary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.summary_id_seq OWNED BY public.summary.summary_id;


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
-- Name: summary summary_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.summary ALTER COLUMN summary_id SET DEFAULT nextval('public.summary_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 100.00, 14, 250, 'The Milky Way is the galaxy that contains our solar system');
INSERT INTO public.galaxy VALUES (2, 'andromeda', 220.00, 10, 100, 'The Andromeda Galaxy is the nearest spiral galaxy to the Milky Way and is on a collision course with it');
INSERT INTO public.galaxy VALUES (3, 'triangulum', 60.00, 0, 40, 'The Triangulum Galaxy is the third-largest member of our Local Group and is a spiral galaxy with a prominent star-forming region');
INSERT INTO public.galaxy VALUES (4, 'sombrero', 50.00, 10, 1, 'The Sombrero Galaxy is a spiral galaxy known for its bright nucleus and prominent dust lane');
INSERT INTO public.galaxy VALUES (5, 'whirlpool', 76.00, 100, 100, 'The Whirlpool Galaxy is a classic spiral galaxy interacting with a smaller galaxy');
INSERT INTO public.galaxy VALUES (6, 'large megallanic cloud', 14.00, 3, 1, 'The LMC is a satellite galaxy of the Milky Way');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', 5, 3474, 1);
INSERT INTO public.moon VALUES (2, 'theia', 5, 3000, 2);
INSERT INTO public.moon VALUES (3, 'ganymede', 5, 5268, 2);
INSERT INTO public.moon VALUES (4, 'europa', 5, 3121, 2);
INSERT INTO public.moon VALUES (5, 'andromeda b-1', 1, 3121, 3);
INSERT INTO public.moon VALUES (6, 'Andromeda b2', NULL, 5151, 3);
INSERT INTO public.moon VALUES (7, 'Andromeda-1c-1', NULL, 2000, 4);
INSERT INTO public.moon VALUES (8, 'Andromeda-1c-2', NULL, 4821, 4);
INSERT INTO public.moon VALUES (9, 'Cigar-1b-1', NULL, 2500, 5);
INSERT INTO public.moon VALUES (10, 'Cigar-1b-2', NULL, 22, 5);
INSERT INTO public.moon VALUES (11, 'Cigar-2c-1', NULL, 1800, 6);
INSERT INTO public.moon VALUES (12, 'Cigar-2c-2', NULL, 12, 6);
INSERT INTO public.moon VALUES (13, 'Black Eye-a1-1', NULL, 2000, 7);
INSERT INTO public.moon VALUES (14, 'Black Eye-a1-2', NULL, 2800, 7);
INSERT INTO public.moon VALUES (15, 'Black Eye-b2-1', NULL, 1000, 8);
INSERT INTO public.moon VALUES (16, 'Black Eye-b2-2', NULL, 1500, 8);
INSERT INTO public.moon VALUES (17, 'M33-1b-1', NULL, 2200, 9);
INSERT INTO public.moon VALUES (18, 'M33-1b-2', NULL, 800, 9);
INSERT INTO public.moon VALUES (19, 'M33-2c-1', NULL, 1500, 10);
INSERT INTO public.moon VALUES (20, 'M33-2c-2', NULL, 1000, 10);
INSERT INTO public.moon VALUES (21, 'Sombrero-1a-1', NULL, 2400, 11);
INSERT INTO public.moon VALUES (22, 'Sombrero-1a-2', NULL, 1800, 11);
INSERT INTO public.moon VALUES (23, 'Sombrero-2b-1', NULL, 900, 12);
INSERT INTO public.moon VALUES (24, 'Sombrero-2b-2', NULL, 1200, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 12, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', true, 139, 2);
INSERT INTO public.planet VALUES (3, 'Andromeda b', false, 49, 4);
INSERT INTO public.planet VALUES (4, 'Andromeda-1c', false, 12, 3);
INSERT INTO public.planet VALUES (5, 'Cigar-1b', false, 90, 5);
INSERT INTO public.planet VALUES (6, 'Cigar-2c', false, 15, 5);
INSERT INTO public.planet VALUES (7, 'Black Eye-a1', false, 12, 6);
INSERT INTO public.planet VALUES (8, 'Black Eye-b2', false, 110, 6);
INSERT INTO public.planet VALUES (9, 'M33-1b', false, 10, 7);
INSERT INTO public.planet VALUES (10, 'M33-2c', false, 14, 7);
INSERT INTO public.planet VALUES (11, 'Sombrero-1a', false, 95, 8);
INSERT INTO public.planet VALUES (12, 'Sombrero-2b', false, 11, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sirius', 'spectral', 1, 250, false);
INSERT INTO public.star VALUES (2, 'betelgeuse', 'red supergiant', 1, 10, false);
INSERT INTO public.star VALUES (3, 'M31-OB1', 'massive star', 2, 10, false);
INSERT INTO public.star VALUES (4, 'Andromeda 1', 'red giant', 2, 500, true);
INSERT INTO public.star VALUES (5, 'M82-X1', 'X-ray', 3, 500, true);
INSERT INTO public.star VALUES (6, 'M60-central', 'massive star', 4, 500, true);
INSERT INTO public.star VALUES (7, 'M33-OB1', 'forming region', 5, 10, true);
INSERT INTO public.star VALUES (8, 'M104-Central', ' Elliptical', 6, 500, true);


--
-- Data for Name: summary; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.summary VALUES ('yes', 'milky way', 1);
INSERT INTO public.summary VALUES ('hypothetical', 'andromeda', 2);
INSERT INTO public.summary VALUES ('no', 'cigar', 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: summary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.summary_id_seq', 4, true);


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
-- Name: summary summary_moon_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.summary
    ADD CONSTRAINT summary_moon_key UNIQUE (moon);


--
-- Name: summary summary_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.summary
    ADD CONSTRAINT summary_pkey PRIMARY KEY (summary_id);


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

