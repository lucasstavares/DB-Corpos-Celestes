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
-- Name: astronomical_event; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomical_event (
    astronomical_event_id integer NOT NULL,
    name character varying(255) NOT NULL,
    date date NOT NULL,
    galaxy_id integer,
    star_id integer,
    planet_id integer
);


ALTER TABLE public.astronomical_event OWNER TO freecodecamp;

--
-- Name: astronomical_event_event_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomical_event_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomical_event_event_id_seq OWNER TO freecodecamp;

--
-- Name: astronomical_event_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomical_event_event_id_seq OWNED BY public.astronomical_event.astronomical_event_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    star_count integer NOT NULL,
    planet_count integer NOT NULL,
    mass numeric(15,2),
    description text,
    has_black_hole boolean,
    is_visible boolean
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
    name character varying(255) NOT NULL,
    diameter numeric(10,2) NOT NULL,
    planet_id integer NOT NULL,
    discovery_date date
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
    name character varying(255) NOT NULL,
    type character varying(50) NOT NULL,
    mass numeric(15,2) NOT NULL,
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
    name character varying(255) NOT NULL,
    type character varying(50) NOT NULL,
    mass numeric(15,2) NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: astronomical_event astronomical_event_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_event ALTER COLUMN astronomical_event_id SET DEFAULT nextval('public.astronomical_event_event_id_seq'::regclass);


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
-- Data for Name: astronomical_event; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomical_event VALUES (1, 'Supernova 2024', '2024-08-12', 2, 3, NULL);
INSERT INTO public.astronomical_event VALUES (2, 'Eclipse Solar 2024', '2024-04-08', 1, 1, 1);
INSERT INTO public.astronomical_event VALUES (3, 'Trânsito de Mercúrio', '2024-11-11', 1, 1, 6);
INSERT INTO public.astronomical_event VALUES (4, 'Chuva de Meteoros', '2024-12-14', NULL, NULL, 3);
INSERT INTO public.astronomical_event VALUES (5, 'Alinhamento Planetário', '2024-10-10', NULL, NULL, 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 200, 500, 1500000000000.00, 'Our galaxy, home to Earth.', true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 300, 1000, 1000000000000.00, 'Nearest large galaxy to Milky Way.', true, true);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 100, 300, 2500000000000.00, 'Famous for hosting a supermassive black hole.', true, false);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 50, 200, 1200000000000.00, 'A small galaxy in the Local Group.', false, true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 150, 400, 3000000000000.00, 'A spiral galaxy with visible arms.', true, true);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 250, 800, 1800000000000.00, 'A spiral galaxy known for its appearance.', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (20, 'Moon', 3474.80, 1, '1969-07-20');
INSERT INTO public.moon VALUES (21, 'Phobos', 22.40, 2, '1877-08-18');
INSERT INTO public.moon VALUES (22, 'Deimos', 12.40, 2, '1877-08-12');
INSERT INTO public.moon VALUES (23, 'Io', 3643.20, 6, '1610-01-08');
INSERT INTO public.moon VALUES (24, 'Europa', 3121.60, 6, '1610-01-08');
INSERT INTO public.moon VALUES (25, 'Ganymede', 5262.40, 6, '1610-01-08');
INSERT INTO public.moon VALUES (26, 'Callisto', 4821.60, 6, '1610-01-08');
INSERT INTO public.moon VALUES (27, 'Titan', 5150.00, 5, '1655-03-25');
INSERT INTO public.moon VALUES (28, 'Rhea', 1527.60, 5, '1672-12-23');
INSERT INTO public.moon VALUES (29, 'Mimas', 396.00, 5, '1789-03-17');
INSERT INTO public.moon VALUES (30, 'Enceladus', 504.00, 5, '1789-08-28');
INSERT INTO public.moon VALUES (31, 'Triton', 2706.80, 3, '1846-10-10');
INSERT INTO public.moon VALUES (32, 'Nereid', 340.00, 3, '1949-05-01');
INSERT INTO public.moon VALUES (33, 'Miranda', 471.00, 4, '1948-02-16');
INSERT INTO public.moon VALUES (34, 'Ariel', 1154.00, 4, '1851-01-24');
INSERT INTO public.moon VALUES (35, 'Umbriel', 1170.00, 4, '1851-10-24');
INSERT INTO public.moon VALUES (36, 'Titania', 1577.00, 4, '1787-01-11');
INSERT INTO public.moon VALUES (37, 'Oberon', 1523.00, 4, '1787-01-11');
INSERT INTO public.moon VALUES (38, 'Iapetus', 1469.00, 5, '1671-10-25');
INSERT INTO public.moon VALUES (39, 'Pan', 35.00, 5, '1990-01-01');
INSERT INTO public.moon VALUES (40, 'Pallene', 16.60, 5, '2004-01-15');
INSERT INTO public.moon VALUES (41, 'S/2009 S 1', 2.00, 5, '2009-05-12');
INSERT INTO public.moon VALUES (42, 'S/2004 S 7', 6.00, 5, '2004-03-05');
INSERT INTO public.moon VALUES (43, 'S/2004 S 12', 8.00, 5, '2004-01-10');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestrial', 597.00, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Terrestrial', 64.00, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Gas Giant', 1900.00, 2);
INSERT INTO public.planet VALUES (4, 'Saturn', 'Gas Giant', 568.00, 2);
INSERT INTO public.planet VALUES (5, 'Neptune', 'Ice Giant', 102.00, 3);
INSERT INTO public.planet VALUES (6, 'Uranus', 'Ice Giant', 87.00, 3);
INSERT INTO public.planet VALUES (7, 'Venus', 'Terrestrial', 487.00, 4);
INSERT INTO public.planet VALUES (8, 'Mercury', 'Terrestrial', 32.00, 4);
INSERT INTO public.planet VALUES (9, 'Titan', 'Moon', 13.00, 5);
INSERT INTO public.planet VALUES (10, 'Ganymede', 'Moon', 15.00, 5);
INSERT INTO public.planet VALUES (11, 'Io', 'Moon', 9.00, 6);
INSERT INTO public.planet VALUES (12, 'Europa', 'Moon', 5.00, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type', 1.00, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 'G-type', 1.10, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'M-type', 20.00, 3);
INSERT INTO public.star VALUES (4, 'Sirius A', 'A-type', 2.00, 4);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'M-type', 0.12, 5);
INSERT INTO public.star VALUES (6, 'Rigel', 'B-type', 20.00, 6);


--
-- Name: astronomical_event_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomical_event_event_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 43, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astronomical_event astronomical_event_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_event
    ADD CONSTRAINT astronomical_event_name_key UNIQUE (name);


--
-- Name: astronomical_event astronomical_event_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_event
    ADD CONSTRAINT astronomical_event_pkey PRIMARY KEY (astronomical_event_id);


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
-- Name: astronomical_event astronomical_event_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_event
    ADD CONSTRAINT astronomical_event_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE SET NULL;


--
-- Name: astronomical_event astronomical_event_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_event
    ADD CONSTRAINT astronomical_event_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE SET NULL;


--
-- Name: astronomical_event astronomical_event_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_event
    ADD CONSTRAINT astronomical_event_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE SET NULL;


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

