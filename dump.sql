--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: faiqahmad
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO faiqahmad;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: faiqahmad
--

COMMENT ON SCHEMA public IS '';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Todo; Type: TABLE; Schema: public; Owner: faiqahmad
--

CREATE TABLE public."Todo" (
    id integer NOT NULL,
    title text NOT NULL,
    importance text NOT NULL,
    complete boolean DEFAULT false NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "userId" integer NOT NULL
);


ALTER TABLE public."Todo" OWNER TO faiqahmad;

--
-- Name: Todo_id_seq; Type: SEQUENCE; Schema: public; Owner: faiqahmad
--

CREATE SEQUENCE public."Todo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Todo_id_seq" OWNER TO faiqahmad;

--
-- Name: Todo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faiqahmad
--

ALTER SEQUENCE public."Todo_id_seq" OWNED BY public."Todo".id;


--
-- Name: User; Type: TABLE; Schema: public; Owner: faiqahmad
--

CREATE TABLE public."User" (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    active boolean DEFAULT true NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."User" OWNER TO faiqahmad;

--
-- Name: User_id_seq; Type: SEQUENCE; Schema: public; Owner: faiqahmad
--

CREATE SEQUENCE public."User_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."User_id_seq" OWNER TO faiqahmad;

--
-- Name: User_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faiqahmad
--

ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;


--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: faiqahmad
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO faiqahmad;

--
-- Name: Todo id; Type: DEFAULT; Schema: public; Owner: faiqahmad
--

ALTER TABLE ONLY public."Todo" ALTER COLUMN id SET DEFAULT nextval('public."Todo_id_seq"'::regclass);


--
-- Name: User id; Type: DEFAULT; Schema: public; Owner: faiqahmad
--

ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);


--
-- Data for Name: Todo; Type: TABLE DATA; Schema: public; Owner: faiqahmad
--

COPY public."Todo" (id, title, importance, complete, "createdAt", "updatedAt", "userId") FROM stdin;
2	hello	not-important	f	2025-04-19 09:05:44.401	2025-04-19 09:15:45.423	2
3	asd	important	f	2025-04-19 09:33:33.562	2025-04-19 09:33:33.562	2
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: faiqahmad
--

COPY public."User" (id, name, email, password, active, "createdAt", "updatedAt") FROM stdin;
1	Test User	test@test.com	$2b$12$zIUU..pizNTIwvXYYxH0D.sSA273Lte5nvrzZZ2.D8gChelr.mnNK	t	2025-04-19 09:02:27.195	2025-04-19 09:02:27.195
2	faiqAhmad	uetmardan@mailinator.com	$2b$12$1aPs/NBoPJf4BmwU0xUvuutLUMUy49m6AGLYMFWocDsMmmvs1HeOS	t	2025-04-19 09:03:02.756	2025-04-19 09:03:02.756
\.


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: faiqahmad
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
68b2a392-89ad-4c0b-ba21-0676ac98992f	d8b48280d07bafa395a6bcc3bb8a2551ea28c2e649fa29b4050490a64e8659d7	2025-04-19 14:02:24.680609+05	20230703164531_init	\N	\N	2025-04-19 14:02:24.670904+05	1
\.


--
-- Name: Todo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faiqahmad
--

SELECT pg_catalog.setval('public."Todo_id_seq"', 3, true);


--
-- Name: User_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faiqahmad
--

SELECT pg_catalog.setval('public."User_id_seq"', 2, true);


--
-- Name: Todo Todo_pkey; Type: CONSTRAINT; Schema: public; Owner: faiqahmad
--

ALTER TABLE ONLY public."Todo"
    ADD CONSTRAINT "Todo_pkey" PRIMARY KEY (id);


--
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: faiqahmad
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: faiqahmad
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: User_email_key; Type: INDEX; Schema: public; Owner: faiqahmad
--

CREATE UNIQUE INDEX "User_email_key" ON public."User" USING btree (email);


--
-- Name: Todo Todo_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: faiqahmad
--

ALTER TABLE ONLY public."Todo"
    ADD CONSTRAINT "Todo_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: faiqahmad
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;


--
-- PostgreSQL database dump complete
--

