--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

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

SET default_with_oids = false;

--
-- Name: Apple; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public."Apple" (
    beer_style text DEFAULT ''::text NOT NULL,
    id text NOT NULL,
    rating numeric(65,30) DEFAULT 0 NOT NULL
);


--
-- Name: Apricot; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public."Apricot" (
    beer_style text DEFAULT ''::text NOT NULL,
    id text NOT NULL,
    rating numeric(65,30) DEFAULT 0 NOT NULL
);


--
-- Name: Bacon; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public."Bacon" (
    beer_style text DEFAULT ''::text NOT NULL,
    id text NOT NULL,
    rating numeric(65,30) DEFAULT 0 NOT NULL
);


--
-- Name: Basil; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public."Basil" (
    beer_style text DEFAULT ''::text NOT NULL,
    id text NOT NULL,
    rating numeric(65,30) DEFAULT 0 NOT NULL
);


--
-- Name: Blackberry; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public."Blackberry" (
    beer_style text DEFAULT ''::text NOT NULL,
    id text NOT NULL,
    rating numeric(65,30) DEFAULT 0 NOT NULL
);


--
-- Data for Name: Apple; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public."Apple" (beer_style, id, rating) FROM stdin;
Altbier	ck0w910jf0000d9qdhku1uf7r	0.678600000000000000000000000000
Amber Kellerbier	ck0w910jp0001d9qdcf3lj3wd	0.423100000000000000000000000000
American Amber Ale	ck0w910jt0002d9qd6xrebldi	0.515200000000000000000000000000
\.


--
-- Data for Name: Apricot; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public."Apricot" (beer_style, id, rating) FROM stdin;
Altbier	ck0w910jx0003d9qd2p1d7cj0	0.593800000000000000000000000000
Amber Kellerbier	ck0w910k80004d9qdohubianx	0.481500000000000000000000000000
American Amber Ale	ck0w910kc0005d9qdxa61879y	0.545500000000000000000000000000
\.


--
-- Data for Name: Bacon; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public."Bacon" (beer_style, id, rating) FROM stdin;
Altbier	ck0w910kg0006d9qdy2yn8inv	0.344800000000000000000000000000
Amber Kellerbier	ck0w910kk0007d9qdeiw2pds2	0.230800000000000000000000000000
American Amber Ale	ck0w910ko0008d9qd6auf6kt0	0.400000000000000000000000000000
\.


--
-- Data for Name: Basil; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public."Basil" (beer_style, id, rating) FROM stdin;
Altbier	ck0w910ks0009d9qdyzzjhs27	0.307700000000000000000000000000
Amber Kellerbier	ck0w910kv0010d9qdkn6sytpv	0.294100000000000000000000000000
American Amber Ale	ck0w910l00011d9qdgsu8vspc	0.272700000000000000000000000000
\.


--
-- Data for Name: Blackberry; Type: TABLE DATA; Schema: public; Owner: prisma
--

COPY public."Blackberry" (beer_style, id, rating) FROM stdin;
Altbier	ck0w910l40012d9qddevptmuh	0.571400000000000000000000000000
Amber Kellerbier	ck0w910l80013d9qd6p3me37f	0.413800000000000000000000000000
American Amber Ale	ck0w910lc0014d9qdgm3jsrrk	0.666700000000000000000000000000
\.


--
-- Name: Apple Apple_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public."Apple"
    ADD CONSTRAINT "Apple_pkey" PRIMARY KEY (id);


--
-- Name: Apricot Apricot_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public."Apricot"
    ADD CONSTRAINT "Apricot_pkey" PRIMARY KEY (id);


--
-- Name: Bacon Bacon_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public."Bacon"
    ADD CONSTRAINT "Bacon_pkey" PRIMARY KEY (id);


--
-- Name: Basil Basil_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public."Basil"
    ADD CONSTRAINT "Basil_pkey" PRIMARY KEY (id);


--
-- Name: Blackberry Blackberry_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public."Blackberry"
    ADD CONSTRAINT "Blackberry_pkey" PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

