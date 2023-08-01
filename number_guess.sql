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
-- Name: games_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games_info (
    game_id integer NOT NULL,
    player integer NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games_info OWNER TO freecodecamp;

--
-- Name: games_info_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_info_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_info_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_info_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_info_game_id_seq OWNED BY public.games_info.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games_info game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_info ALTER COLUMN game_id SET DEFAULT nextval('public.games_info_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games_info VALUES (1, 1, 6);
INSERT INTO public.games_info VALUES (2, 2, 281);
INSERT INTO public.games_info VALUES (3, 3, 367);
INSERT INTO public.games_info VALUES (4, 3, 33);
INSERT INTO public.games_info VALUES (5, 2, 186);
INSERT INTO public.games_info VALUES (6, 2, 458);
INSERT INTO public.games_info VALUES (7, 2, 571);
INSERT INTO public.games_info VALUES (8, 4, 8);
INSERT INTO public.games_info VALUES (9, 4, 954);
INSERT INTO public.games_info VALUES (10, 5, 748);
INSERT INTO public.games_info VALUES (11, 5, 507);
INSERT INTO public.games_info VALUES (12, 4, 67);
INSERT INTO public.games_info VALUES (13, 4, 765);
INSERT INTO public.games_info VALUES (14, 4, 445);
INSERT INTO public.games_info VALUES (15, 1, 9);
INSERT INTO public.games_info VALUES (16, 6, 696);
INSERT INTO public.games_info VALUES (17, 6, 554);
INSERT INTO public.games_info VALUES (18, 7, 258);
INSERT INTO public.games_info VALUES (19, 7, 732);
INSERT INTO public.games_info VALUES (20, 6, 226);
INSERT INTO public.games_info VALUES (21, 6, 880);
INSERT INTO public.games_info VALUES (22, 6, 56);
INSERT INTO public.games_info VALUES (23, 1, 2);
INSERT INTO public.games_info VALUES (24, 8, 144);
INSERT INTO public.games_info VALUES (25, 8, 82);
INSERT INTO public.games_info VALUES (26, 9, 461);
INSERT INTO public.games_info VALUES (27, 9, 355);
INSERT INTO public.games_info VALUES (28, 8, 933);
INSERT INTO public.games_info VALUES (29, 8, 81);
INSERT INTO public.games_info VALUES (30, 8, 563);
INSERT INTO public.games_info VALUES (31, 10, 869);
INSERT INTO public.games_info VALUES (32, 10, 685);
INSERT INTO public.games_info VALUES (33, 11, 283);
INSERT INTO public.games_info VALUES (34, 11, 898);
INSERT INTO public.games_info VALUES (35, 10, 913);
INSERT INTO public.games_info VALUES (36, 10, 674);
INSERT INTO public.games_info VALUES (37, 10, 79);
INSERT INTO public.games_info VALUES (38, 12, 9);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'BOb');
INSERT INTO public.users VALUES (2, 'user_1690450633087');
INSERT INTO public.users VALUES (3, 'user_1690450633086');
INSERT INTO public.users VALUES (4, 'user_1690450797642');
INSERT INTO public.users VALUES (5, 'user_1690450797641');
INSERT INTO public.users VALUES (6, 'user_1690451346824');
INSERT INTO public.users VALUES (7, 'user_1690451346823');
INSERT INTO public.users VALUES (8, 'user_1690452319924');
INSERT INTO public.users VALUES (9, 'user_1690452319923');
INSERT INTO public.users VALUES (10, 'user_1690452366687');
INSERT INTO public.users VALUES (11, 'user_1690452366685');
INSERT INTO public.users VALUES (12, 'lol');


--
-- Name: games_info_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_info_game_id_seq', 38, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 12, true);


--
-- Name: games_info games_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_info
    ADD CONSTRAINT games_info_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games_info games_info_player_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_info
    ADD CONSTRAINT games_info_player_fkey FOREIGN KEY (player) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

