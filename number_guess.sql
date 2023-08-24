--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: usernames; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.usernames (
    username_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.usernames OWNER TO freecodecamp;

--
-- Name: usernames_username_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.usernames_username_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usernames_username_id_seq OWNER TO freecodecamp;

--
-- Name: usernames_username_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.usernames_username_id_seq OWNED BY public.usernames.username_id;


--
-- Name: usernames username_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames ALTER COLUMN username_id SET DEFAULT nextval('public.usernames_username_id_seq'::regclass);


--
-- Data for Name: usernames; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.usernames VALUES (74, 'user_1692918371612', 0, 0);
INSERT INTO public.usernames VALUES (75, 'user_1692918371611', 0, 0);
INSERT INTO public.usernames VALUES (76, 'user_1692918465301', 0, 0);
INSERT INTO public.usernames VALUES (77, 'user_1692918465300', 0, 0);
INSERT INTO public.usernames VALUES (79, 'user_1692918790492', 0, 0);
INSERT INTO public.usernames VALUES (80, 'user_1692918790491', 0, 0);
INSERT INTO public.usernames VALUES (82, 'user_1692918968558', 0, 0);
INSERT INTO public.usernames VALUES (81, 'user_1692918968559', 0, 0);
INSERT INTO public.usernames VALUES (84, 'user_1692919070182', 2, 0);
INSERT INTO public.usernames VALUES (83, 'user_1692919070183', 5, 0);
INSERT INTO public.usernames VALUES (86, 'user_1692919239325', 2, 0);
INSERT INTO public.usernames VALUES (85, 'user_1692919239326', 5, 0);
INSERT INTO public.usernames VALUES (88, 'user_1692919334382', 2, 611);
INSERT INTO public.usernames VALUES (87, 'user_1692919334383', 5, 970);
INSERT INTO public.usernames VALUES (78, 'Alex', 3, 12);


--
-- Name: usernames_username_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.usernames_username_id_seq', 88, true);


--
-- Name: usernames usernames_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames
    ADD CONSTRAINT usernames_pkey PRIMARY KEY (username_id);


--
-- PostgreSQL database dump complete
--

