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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(70),
    age integer NOT NULL,
    height numeric NOT NULL,
    email text,
    indian boolean
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age integer NOT NULL,
    height numeric NOT NULL,
    name character varying(50),
    email text,
    indian boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(70) NOT NULL,
    age integer NOT NULL,
    email text,
    height numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(70) NOT NULL,
    age integer NOT NULL,
    email text,
    height numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(70) NOT NULL,
    age integer NOT NULL,
    email text,
    height numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'A', 45, 56, 'A', NULL);
INSERT INTO public.earth VALUES (2, 'B', 45, 56, 'B', NULL);
INSERT INTO public.earth VALUES (3, 'C', 45, 56, 'C', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 56, 45, 'A', 'A', NULL);
INSERT INTO public.galaxy VALUES (2, 56, 45, 'A', 'B', NULL);
INSERT INTO public.galaxy VALUES (3, 56, 45, 'A', 'C', NULL);
INSERT INTO public.galaxy VALUES (4, 56, 45, 'A', 'D', NULL);
INSERT INTO public.galaxy VALUES (5, 56, 45, 'A', 'E', NULL);
INSERT INTO public.galaxy VALUES (6, 56, 45, 'A', 'F', NULL);
INSERT INTO public.galaxy VALUES (7, 56, 45, 'A', 'G', NULL);
INSERT INTO public.galaxy VALUES (8, 56, 45, 'A', 'H', NULL);
INSERT INTO public.galaxy VALUES (9, 56, 45, 'A', 'I', NULL);
INSERT INTO public.galaxy VALUES (10, 56, 45, 'A', 'J', NULL);
INSERT INTO public.galaxy VALUES (11, 56, 45, 'A', 'K', NULL);
INSERT INTO public.galaxy VALUES (12, 56, 45, 'A', 'L', NULL);
INSERT INTO public.galaxy VALUES (13, 56, 45, 'A', 'M', NULL);
INSERT INTO public.galaxy VALUES (14, 56, 45, 'A', 'N', NULL);
INSERT INTO public.galaxy VALUES (15, 56, 45, 'A', 'O', NULL);
INSERT INTO public.galaxy VALUES (16, 56, 45, 'A', 'P', NULL);
INSERT INTO public.galaxy VALUES (17, 56, 45, 'A', 'Q', NULL);
INSERT INTO public.galaxy VALUES (18, 56, 45, 'A', 'R', NULL);
INSERT INTO public.galaxy VALUES (19, 56, 45, 'A', 'S', NULL);
INSERT INTO public.galaxy VALUES (20, 56, 45, 'A', 'T', NULL);
INSERT INTO public.galaxy VALUES (21, 56, 45, 'A', 'U', NULL);
INSERT INTO public.galaxy VALUES (22, 56, 45, 'A', 'V', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'A', 56, 'A', 45, 1);
INSERT INTO public.moon VALUES (2, 'B', 45, 'B', 56, 2);
INSERT INTO public.moon VALUES (3, 'C', 45, 'C', 56, 3);
INSERT INTO public.moon VALUES (4, 'D', 45, 'D', 56, 4);
INSERT INTO public.moon VALUES (5, 'E', 45, 'E', 56, 5);
INSERT INTO public.moon VALUES (6, 'F', 45, 'F', 56, 6);
INSERT INTO public.moon VALUES (7, 'G', 45, 'G', 56, 7);
INSERT INTO public.moon VALUES (8, 'H', 45, 'H', 56, 8);
INSERT INTO public.moon VALUES (9, 'I', 45, 'I', 56, 9);
INSERT INTO public.moon VALUES (10, 'J', 45, 'J', 56, 10);
INSERT INTO public.moon VALUES (11, 'K', 45, 'K', 56, 11);
INSERT INTO public.moon VALUES (12, 'L', 45, 'L', 56, 12);
INSERT INTO public.moon VALUES (13, 'M', 45, 'M', 56, 13);
INSERT INTO public.moon VALUES (14, 'N', 45, 'N', 56, 14);
INSERT INTO public.moon VALUES (15, 'O', 45, 'O', 56, 15);
INSERT INTO public.moon VALUES (16, 'P', 45, 'P', 56, 16);
INSERT INTO public.moon VALUES (17, 'Q', 45, 'Q', 56, 17);
INSERT INTO public.moon VALUES (19, 'S', 45, 'S', 56, 19);
INSERT INTO public.moon VALUES (18, 'T', 45, 'T', 56, 18);
INSERT INTO public.moon VALUES (20, 'U', 45, 'U', 56, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'A', 56, 'A', 45, 1);
INSERT INTO public.planet VALUES (2, 'B', 56, 'B', 45, 2);
INSERT INTO public.planet VALUES (3, 'C', 56, 'C', 45, 3);
INSERT INTO public.planet VALUES (4, 'D', 56, 'D', 45, 4);
INSERT INTO public.planet VALUES (5, 'E', 56, 'E', 45, 5);
INSERT INTO public.planet VALUES (6, 'F', 56, 'F', 45, 6);
INSERT INTO public.planet VALUES (7, 'G', 56, 'G', 45, 7);
INSERT INTO public.planet VALUES (8, 'H', 56, 'H', 45, 8);
INSERT INTO public.planet VALUES (9, 'I', 56, 'I', 45, 9);
INSERT INTO public.planet VALUES (10, 'J', 56, 'J', 45, 10);
INSERT INTO public.planet VALUES (11, 'K', 56, 'K', 45, 11);
INSERT INTO public.planet VALUES (12, 'L', 56, 'L', 45, 12);
INSERT INTO public.planet VALUES (13, 'M', 56, 'M', 45, 13);
INSERT INTO public.planet VALUES (14, 'N', 56, 'N', 45, 14);
INSERT INTO public.planet VALUES (15, 'O', 56, 'O', 45, 15);
INSERT INTO public.planet VALUES (16, 'P', 56, 'P', 45, 16);
INSERT INTO public.planet VALUES (17, 'Q', 56, 'Q', 45, 17);
INSERT INTO public.planet VALUES (18, 'R', 56, 'R', 45, 18);
INSERT INTO public.planet VALUES (19, 'S', 56, 'S', 45, 19);
INSERT INTO public.planet VALUES (20, 'T', 56, 'T', 45, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'A', 56, 'A', 45, 1);
INSERT INTO public.star VALUES (2, 'B', 56, 'B', 45, 2);
INSERT INTO public.star VALUES (3, 'C', 56, 'C', 45, 3);
INSERT INTO public.star VALUES (4, 'D', 56, 'D', 45, 4);
INSERT INTO public.star VALUES (5, 'E', 56, 'E', 45, 5);
INSERT INTO public.star VALUES (6, 'F', 56, 'F', 45, 6);
INSERT INTO public.star VALUES (7, 'G', 56, 'G', 45, 7);
INSERT INTO public.star VALUES (8, 'H', 56, 'H', 45, 8);
INSERT INTO public.star VALUES (9, 'I', 56, 'I', 45, 9);
INSERT INTO public.star VALUES (10, 'J', 56, 'J', 45, 10);
INSERT INTO public.star VALUES (11, 'K', 56, 'K', 45, 11);
INSERT INTO public.star VALUES (12, 'L', 56, 'L', 45, 12);
INSERT INTO public.star VALUES (13, 'M', 56, 'M', 45, 13);
INSERT INTO public.star VALUES (14, 'N', 56, 'N', 45, 14);
INSERT INTO public.star VALUES (15, 'O', 56, 'O', 45, 15);
INSERT INTO public.star VALUES (16, 'P', 56, 'P', 45, 16);
INSERT INTO public.star VALUES (17, 'Q', 56, 'Q', 45, 17);
INSERT INTO public.star VALUES (18, 'R', 56, 'R', 45, 18);
INSERT INTO public.star VALUES (19, 'S', 56, 'S', 45, 19);
INSERT INTO public.star VALUES (20, 'T', 56, 'T', 45, 20);


--
-- Name: earth earth_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_id UNIQUE (earth_id);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


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

