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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (633, 2018, 'Final', 1352, 1353, 4, 2);
INSERT INTO public.games VALUES (634, 2018, 'Third Place', 1354, 1355, 2, 0);
INSERT INTO public.games VALUES (635, 2018, 'Semi-Final', 1353, 1355, 2, 1);
INSERT INTO public.games VALUES (636, 2018, 'Semi-Final', 1352, 1354, 1, 0);
INSERT INTO public.games VALUES (637, 2018, 'Quarter-Final', 1353, 1361, 3, 2);
INSERT INTO public.games VALUES (638, 2018, 'Quarter-Final', 1355, 1363, 2, 0);
INSERT INTO public.games VALUES (639, 2018, 'Quarter-Final', 1354, 1365, 2, 1);
INSERT INTO public.games VALUES (640, 2018, 'Quarter-Final', 1352, 1367, 2, 0);
INSERT INTO public.games VALUES (641, 2018, 'Eighth-Final', 1355, 1369, 2, 1);
INSERT INTO public.games VALUES (642, 2018, 'Eighth-Final', 1363, 1371, 1, 0);
INSERT INTO public.games VALUES (643, 2018, 'Eighth-Final', 1354, 1373, 3, 2);
INSERT INTO public.games VALUES (644, 2018, 'Eighth-Final', 1365, 1375, 2, 0);
INSERT INTO public.games VALUES (645, 2018, 'Eighth-Final', 1353, 1377, 2, 1);
INSERT INTO public.games VALUES (646, 2018, 'Eighth-Final', 1361, 1379, 2, 1);
INSERT INTO public.games VALUES (647, 2018, 'Eighth-Final', 1367, 1381, 2, 1);
INSERT INTO public.games VALUES (648, 2018, 'Eighth-Final', 1352, 1383, 4, 3);
INSERT INTO public.games VALUES (649, 2014, 'Final', 1384, 1383, 1, 0);
INSERT INTO public.games VALUES (650, 2014, 'Third Place', 1386, 1365, 3, 0);
INSERT INTO public.games VALUES (651, 2014, 'Semi-Final', 1383, 1386, 1, 0);
INSERT INTO public.games VALUES (652, 2014, 'Semi-Final', 1384, 1365, 7, 1);
INSERT INTO public.games VALUES (653, 2014, 'Quarter-Final', 1386, 1393, 1, 0);
INSERT INTO public.games VALUES (654, 2014, 'Quarter-Final', 1383, 1354, 1, 0);
INSERT INTO public.games VALUES (655, 2014, 'Quarter-Final', 1365, 1369, 2, 1);
INSERT INTO public.games VALUES (656, 2014, 'Quarter-Final', 1384, 1352, 1, 0);
INSERT INTO public.games VALUES (657, 2014, 'Eighth-Final', 1365, 1401, 2, 1);
INSERT INTO public.games VALUES (658, 2014, 'Eighth-Final', 1369, 1367, 2, 0);
INSERT INTO public.games VALUES (659, 2014, 'Eighth-Final', 1352, 1405, 2, 0);
INSERT INTO public.games VALUES (660, 2014, 'Eighth-Final', 1384, 1407, 2, 1);
INSERT INTO public.games VALUES (661, 2014, 'Eighth-Final', 1386, 1375, 2, 1);
INSERT INTO public.games VALUES (662, 2014, 'Eighth-Final', 1393, 1411, 2, 1);
INSERT INTO public.games VALUES (663, 2014, 'Eighth-Final', 1383, 1371, 1, 0);
INSERT INTO public.games VALUES (664, 2014, 'Eighth-Final', 1354, 1415, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1352, 'France');
INSERT INTO public.teams VALUES (1353, 'Croatia');
INSERT INTO public.teams VALUES (1354, 'Belgium');
INSERT INTO public.teams VALUES (1355, 'England');
INSERT INTO public.teams VALUES (1361, 'Russia');
INSERT INTO public.teams VALUES (1363, 'Sweden');
INSERT INTO public.teams VALUES (1365, 'Brazil');
INSERT INTO public.teams VALUES (1367, 'Uruguay');
INSERT INTO public.teams VALUES (1369, 'Colombia');
INSERT INTO public.teams VALUES (1371, 'Switzerland');
INSERT INTO public.teams VALUES (1373, 'Japan');
INSERT INTO public.teams VALUES (1375, 'Mexico');
INSERT INTO public.teams VALUES (1377, 'Denmark');
INSERT INTO public.teams VALUES (1379, 'Spain');
INSERT INTO public.teams VALUES (1381, 'Portugal');
INSERT INTO public.teams VALUES (1383, 'Argentina');
INSERT INTO public.teams VALUES (1384, 'Germany');
INSERT INTO public.teams VALUES (1386, 'Netherlands');
INSERT INTO public.teams VALUES (1393, 'Costa Rica');
INSERT INTO public.teams VALUES (1401, 'Chile');
INSERT INTO public.teams VALUES (1405, 'Nigeria');
INSERT INTO public.teams VALUES (1407, 'Algeria');
INSERT INTO public.teams VALUES (1411, 'Greece');
INSERT INTO public.teams VALUES (1415, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 664, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1415, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

