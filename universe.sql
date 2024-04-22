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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(100) NOT NULL,
    mass numeric(10,3) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(100) NOT NULL,
    shape character varying(100) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text NOT NULL,
    size integer,
    distance_from_earth integer
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
    has_diameter boolean NOT NULL,
    has_surface_temperature boolean,
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
    name character varying(30) NOT NULL,
    type text NOT NULL,
    distance_from_star numeric(4,3),
    radius integer,
    star_id integer
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
    mass numeric(4,3),
    age integer NOT NULL,
    galaxy_id integer,
    spectral_type character varying(30)
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


--
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A*', 4.310, 1);
INSERT INTO public.black_hole VALUES (2, 'M87* Black Hole', 6.500, 2);
INSERT INTO public.black_hole VALUES (3, 'Cygnus X-1', 15.000, 1);
INSERT INTO public.black_hole VALUES (4, 'NGC 1277 Black Hole', 17.000, 3);
INSERT INTO public.black_hole VALUES (5, 'V404 Cygni', 9.000, 1);
INSERT INTO public.black_hole VALUES (6, 'NGC 4395 Black Hole', 10.000, 4);
INSERT INTO public.black_hole VALUES (7, 'IC 10 X-1', 24.000, 5);
INSERT INTO public.black_hole VALUES (8, 'M82 X-1', 3.500, 6);
INSERT INTO public.black_hole VALUES (9, 'HLX-1', 20.000, 7);
INSERT INTO public.black_hole VALUES (10, '3C 75* Black Hole', 5.200, 8);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 'Hunter', 1);
INSERT INTO public.constellation VALUES (2, 'Ursa Major', 'Bear', 1);
INSERT INTO public.constellation VALUES (3, 'Virgo', 'Maiden', 2);
INSERT INTO public.constellation VALUES (4, 'Cygnus', 'Swan', 1);
INSERT INTO public.constellation VALUES (5, 'Draco', 'Dragon', 3);
INSERT INTO public.constellation VALUES (6, 'Pegasus', 'Winged Horse', 4);
INSERT INTO public.constellation VALUES (7, 'Cetus', 'Whale', 5);
INSERT INTO public.constellation VALUES (8, 'Cassiopeia', 'Queen', 6);
INSERT INTO public.constellation VALUES (9, 'Sagitta', 'Arrow', 1);
INSERT INTO public.constellation VALUES (10, 'Leo', 'Lion', 8);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 100000, 26000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 110000, 2200000);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 'Spiral', 30000, 31000000);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Spiral', 50000, 3000000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Spiral', 29000, 28000000);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 'Elliptical', 50000, 12000000);
INSERT INTO public.galaxy VALUES (7, 'Messier 87', 'Elliptical', 160000, 55000000);
INSERT INTO public.galaxy VALUES (8, 'IC 1101', 'Elliptical', 300000, 130000000);
INSERT INTO public.galaxy VALUES (9, 'Leo I', 'Irregular', 3000, 820000);
INSERT INTO public.galaxy VALUES (10, 'IC 1613', 'Irregular', 1400, 2800000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', true, false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', false, true, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', false, true, 2);
INSERT INTO public.moon VALUES (4, 'Ganymede', true, true, 3);
INSERT INTO public.moon VALUES (5, 'Europa', true, true, 3);
INSERT INTO public.moon VALUES (6, 'Io', true, true, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', true, true, 3);
INSERT INTO public.moon VALUES (8, 'Titan', true, true, 4);
INSERT INTO public.moon VALUES (9, 'Rhea', true, true, 4);
INSERT INTO public.moon VALUES (10, 'Iapetus', true, true, 4);
INSERT INTO public.moon VALUES (11, 'Triton', true, true, 5);
INSERT INTO public.moon VALUES (12, 'Nereid', true, true, 5);
INSERT INTO public.moon VALUES (13, 'Proteus', true, true, 5);
INSERT INTO public.moon VALUES (14, 'Miranda', true, true, 6);
INSERT INTO public.moon VALUES (15, 'Ariel', true, true, 6);
INSERT INTO public.moon VALUES (16, 'Umbriel', true, true, 6);
INSERT INTO public.moon VALUES (17, 'Tethys', true, true, 7);
INSERT INTO public.moon VALUES (18, 'Dione', true, true, 7);
INSERT INTO public.moon VALUES (19, 'Enceladus', true, true, 7);
INSERT INTO public.moon VALUES (20, 'Hyperion', true, true, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', 0.391, 2439, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', 0.727, 6051, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', 1.005, 6371, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', 1.520, 3389, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', 5.201, 69911, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', 9.580, 58232, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', 9.223, 25362, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', 3.071, 24622, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 'Terrestrial', 0.852, 12104, 2);
INSERT INTO public.planet VALUES (10, 'Gliese 581g', 'Terrestrial', 0.146, 15869, 2);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 'Gas Giant', 0.047, 15580, 3);
INSERT INTO public.planet VALUES (12, 'WASP-17b', 'Gas Giant', 0.051, 15840, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1.989, 5, 1, 'G2V');
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 0.123, 5, 2, 'M5V');
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 2.100, 6, 2, 'G2V');
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 0.899, 6, 2, 'K1V');
INSERT INTO public.star VALUES (5, 'Sirius', 2.019, 0, 1, 'A1V');
INSERT INTO public.star VALUES (6, 'Vega', 2.100, 0, 1, 'A0V');
INSERT INTO public.star VALUES (7, 'Arcturus', 1.075, 7, 1, 'K1.5III');
INSERT INTO public.star VALUES (8, 'Betelgeuse', 2.000, 9, 1, 'M1-2Ia-Iab');
INSERT INTO public.star VALUES (9, 'Rigel', 2.234, 9, 3, 'B8Ia');
INSERT INTO public.star VALUES (10, 'Pollux', 1.860, 5, 1, 'K0III');


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 10, true);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: black_hole black_hole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: constellation constellation_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

