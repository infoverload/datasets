--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

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
-- Name: Album; Type: TABLE; Schema: public; Owner: MYUSERNAME
--

CREATE TABLE public."Album" (
    id text NOT NULL,
    album_type text DEFAULT ''::text NOT NULL,
    href text DEFAULT ''::text NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    release_date text DEFAULT ''::text NOT NULL,
    uri text DEFAULT ''::text NOT NULL
);


ALTER TABLE public."Album" OWNER TO MYUSERNAME;

--
-- Name: Album_availableMarkets; Type: TABLE; Schema: public; Owner: MYUSERNAME
--

CREATE TABLE public."Album_availableMarkets" (
    "nodeId" text NOT NULL,
    "position" integer NOT NULL,
    value text NOT NULL
);


ALTER TABLE public."Album_availableMarkets" OWNER TO MYUSERNAME;

--
-- Name: Artist; Type: TABLE; Schema: public; Owner: MYUSERNAME
--

CREATE TABLE public."Artist" (
    id text NOT NULL,
    href text DEFAULT ''::text NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    uri text DEFAULT ''::text NOT NULL,
    album text,
    track text
);


ALTER TABLE public."Artist" OWNER TO MYUSERNAME;

--
-- Name: Category; Type: TABLE; Schema: public; Owner: MYUSERNAME
--

CREATE TABLE public."Category" (
    id text NOT NULL,
    href text DEFAULT ''::text NOT NULL,
    name text DEFAULT ''::text NOT NULL
);


ALTER TABLE public."Category" OWNER TO MYUSERNAME;

--
-- Name: Category_icons; Type: TABLE; Schema: public; Owner: MYUSERNAME
--

CREATE TABLE public."Category_icons" (
    "nodeId" text NOT NULL,
    "position" integer NOT NULL,
    value text NOT NULL
);


ALTER TABLE public."Category_icons" OWNER TO MYUSERNAME;

--
-- Name: Genre; Type: TABLE; Schema: public; Owner: MYUSERNAME
--

CREATE TABLE public."Genre" (
    id text NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    artist text,
    album text,
    track text
);


ALTER TABLE public."Genre" OWNER TO MYUSERNAME;

--
-- Name: Image; Type: TABLE; Schema: public; Owner: MYUSERNAME
--

CREATE TABLE public."Image" (
    id text NOT NULL,
    artist text,
    playlist text,
    "user" text,
    height integer DEFAULT 0 NOT NULL,
    width integer DEFAULT 0 NOT NULL,
    url text DEFAULT ''::text NOT NULL
);


ALTER TABLE public."Image" OWNER TO MYUSERNAME;

--
-- Name: Playlist; Type: TABLE; Schema: public; Owner: MYUSERNAME
--

CREATE TABLE public."Playlist" (
    id text NOT NULL,
    collaborative boolean DEFAULT false NOT NULL,
    href text DEFAULT ''::text NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    public boolean DEFAULT false NOT NULL,
    uri text DEFAULT ''::text NOT NULL
);


ALTER TABLE public."Playlist" OWNER TO MYUSERNAME;

--
-- Name: Track; Type: TABLE; Schema: public; Owner: MYUSERNAME
--

CREATE TABLE public."Track" (
    id text NOT NULL,
    disc_number integer DEFAULT 0 NOT NULL,
    duration_ms integer DEFAULT 0 NOT NULL,
    explicit boolean DEFAULT false NOT NULL,
    href text DEFAULT ''::text NOT NULL,
    is_playable boolean DEFAULT false NOT NULL,
    popularity integer DEFAULT 0 NOT NULL,
    preview_url text DEFAULT ''::text NOT NULL,
    track_number integer DEFAULT 0 NOT NULL,
    uri text DEFAULT ''::text NOT NULL,
    playlist text,
    album text,
    "realName" text DEFAULT ''::text NOT NULL
);


ALTER TABLE public."Track" OWNER TO MYUSERNAME;

--
-- Name: Track_availableMarkets; Type: TABLE; Schema: public; Owner: MYUSERNAME
--

CREATE TABLE public."Track_availableMarkets" (
    "nodeId" text NOT NULL,
    "position" integer NOT NULL,
    value text NOT NULL
);


ALTER TABLE public."Track_availableMarkets" OWNER TO MYUSERNAME;

--
-- Name: User; Type: TABLE; Schema: public; Owner: MYUSERNAME
--

CREATE TABLE public."User" (
    id text NOT NULL,
    display_name text DEFAULT ''::text NOT NULL,
    href text DEFAULT ''::text NOT NULL,
    product text DEFAULT 'FREE'::text NOT NULL,
    uri text DEFAULT ''::text NOT NULL,
    artist text
);


ALTER TABLE public."User" OWNER TO MYUSERNAME;

--
-- Name: _Migration; Type: TABLE; Schema: public; Owner: MYUSERNAME
--

CREATE TABLE public."_Migration" (
    revision integer NOT NULL,
    name text NOT NULL,
    datamodel text NOT NULL,
    status text NOT NULL,
    applied integer NOT NULL,
    rolled_back integer NOT NULL,
    datamodel_steps text NOT NULL,
    database_migration text NOT NULL,
    errors text NOT NULL,
    started_at timestamp(3) without time zone NOT NULL,
    finished_at timestamp(3) without time zone
);


ALTER TABLE public."_Migration" OWNER TO MYUSERNAME;

--
-- Name: _Migration_revision_seq; Type: SEQUENCE; Schema: public; Owner: MYUSERNAME
--

CREATE SEQUENCE public."_Migration_revision_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."_Migration_revision_seq" OWNER TO MYUSERNAME;

--
-- Name: _Migration_revision_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: MYUSERNAME
--

ALTER SEQUENCE public."_Migration_revision_seq" OWNED BY public."_Migration".revision;


--
-- Name: _Migration revision; Type: DEFAULT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."_Migration" ALTER COLUMN revision SET DEFAULT nextval('public."_Migration_revision_seq"'::regclass);


--
-- Data for Name: Album; Type: TABLE DATA; Schema: public; Owner: MYUSERNAME
--

COPY public."Album" (id, album_type, href, name, release_date, uri) FROM stdin;
cjyvao0g500008k0xu0rlit55	album	https://api.spotify.com/v1/albums/0EfHWQeb3T1UJw9KrqN407	Both Sides of the Sky	2018-03-09	spotify:album:0EfHWQeb3T1UJw9KrqN407
cjyvaou1i0000jz0xo5qw7u86	album	https://api.spotify.com/v1/albums/426j4dLXzZygBoi0rAzE0a	Rise Up	2010-04-20	spotify:album:426j4dLXzZygBoi0rAzE0a
cjyvapn110000vg0x10jsrbdh	album	https://api.spotify.com/v1/albums/79A60jmAsN0A0vmbqosE6w	Bright Moments	2016-08-05	spotify:album:79A60jmAsN0A0vmbqosE6w
cjyvaqeel00006b0x7q3pybl5	album	https://api.spotify.com/v1/albums/4Carzsnpd6yvuHZ49I0oz8	"Awaken, My Love!"	2016-12-02	spotify:album:4Carzsnpd6yvuHZ49I0oz8
cjyvaqyxz0000dk0xhypuzdqq	single	https://api.spotify.com/v1/albums/5FwNan9THWocf69tJEsXUv	Wonderland	2013-06-08	spotify:album:5FwNan9THWocf69tJEsXUv
cjyvasj4s0000zx0xm0vipudo	album	https://api.spotify.com/v1/albums/6KT8x5oqZJl9CcnM66hddo	Free Spirit	2019-04-05	spotify:album:6KT8x5oqZJl9CcnM66hddo
\.


--
-- Data for Name: Album_availableMarkets; Type: TABLE DATA; Schema: public; Owner: MYUSERNAME
--

COPY public."Album_availableMarkets" ("nodeId", "position", value) FROM stdin;
\.


--
-- Data for Name: Artist; Type: TABLE DATA; Schema: public; Owner: MYUSERNAME
--

COPY public."Artist" (id, href, name, uri, album, track) FROM stdin;
cjyvao0ga00018k0xucgmxeg4	https://api.spotify.com/v1/artists/776Uo845nYHJpNaStv1Ds4	Jimi Hendrix	spotify:artist:776Uo845nYHJpNaStv1Ds4	cjyvao0g500008k0xu0rlit55	\N
cjyvaou1n0001jz0xx40xtg6v	https://api.spotify.com/v1/artists/4P0dddbxPil35MNN9G2MEX	Cypress Hill	spotify:artist:4P0dddbxPil35MNN9G2MEX	cjyvaou1i0000jz0xo5qw7u86	\N
cjyvapn180001vg0x0fax9oee	https://api.spotify.com/v1/artists/75cW8FFekyCjj0mfZM1Gfb	Flamingosis	spotify:artist:75cW8FFekyCjj0mfZM1Gfb	cjyvapn110000vg0x10jsrbdh	\N
cjyvaqees00016b0xll6owjl6	https://api.spotify.com/v1/artists/73sIBHcqh3Z3NyqHKZ7FOL	Childish Gambino	spotify:artist:73sIBHcqh3Z3NyqHKZ7FOL	cjyvaqeel00006b0x7q3pybl5	\N
cjyvaqyy60001dk0xbf9ccbyh	https://api.spotify.com/v1/artists/1ng3xz2dyz57Z1WpnzM2G7	Pogo	spotify:artist:1ng3xz2dyz57Z1WpnzM2G7	cjyvaqyxz0000dk0xhypuzdqq	\N
cjyvasj4y0001zx0x1ehrt2ck	https://api.spotify.com/v1/artists/6LuN9FCkKOj5PcnpouEgny	Khalid	spotify:artist:6LuN9FCkKOj5PcnpouEgny	cjyvasj4s0000zx0xm0vipudo	\N
\.


--
-- Data for Name: Category; Type: TABLE DATA; Schema: public; Owner: MYUSERNAME
--

COPY public."Category" (id, href, name) FROM stdin;
\.


--
-- Data for Name: Category_icons; Type: TABLE DATA; Schema: public; Owner: MYUSERNAME
--

COPY public."Category_icons" ("nodeId", "position", value) FROM stdin;
\.


--
-- Data for Name: Genre; Type: TABLE DATA; Schema: public; Owner: MYUSERNAME
--

COPY public."Genre" (id, name, artist, album, track) FROM stdin;
\.


--
-- Data for Name: Image; Type: TABLE DATA; Schema: public; Owner: MYUSERNAME
--

COPY public."Image" (id, artist, playlist, "user", height, width, url) FROM stdin;
cjyv9mj9r00016n0xi4n21cv9	\N	cjyv9mj9m00006n0xueq9yycw	\N	300	300	https://pl.scdn.co/images/pl/default/0953b84f5d75b24cd30ddc1eecb01eaf8355d1a4
\.


--
-- Data for Name: Playlist; Type: TABLE DATA; Schema: public; Owner: MYUSERNAME
--

COPY public."Playlist" (id, collaborative, href, name, public, uri) FROM stdin;
cjyv9mj9m00006n0xueq9yycw	f	https://api.spotify.com/v1/playlists/0ZXVX604hmghJgqWCMsqcU	MKBHD Videos	t	spotify:playlist:0ZXVX604hmghJgqWCMsqcU
\.


--
-- Data for Name: Track; Type: TABLE DATA; Schema: public; Owner: MYUSERNAME
--

COPY public."Track" (id, disc_number, duration_ms, explicit, href, is_playable, popularity, preview_url, track_number, uri, playlist, album, "realName") FROM stdin;
0bjrZv6I3T0nMRfBhsC16Y	1	214360	f	https://api.spotify.com/v1/tracks/0bjrZv6I3T0nMRfBhsC16Y	t	37	https://p.scdn.co/mp3-preview/4d456443ca3882efe9ad50abc1c720a5be0803bf?cid=11a940691ec14481940c2be7d192a91b	1	spotify:track:0bjrZv6I3T0nMRfBhsC16Y	cjyv9mj9m00006n0xueq9yycw	\N	
7gRVrDCQcoEnHrPxdblf6I	1	294320	f	https://api.spotify.com/v1/tracks/7gRVrDCQcoEnHrPxdblf6I	t	37	https://p.scdn.co/mp3-preview/e2bb345fff8143d1cf9000198ca5891400b502b9?cid=11a940691ec14481940c2be7d192a91b	4	spotify:track:7gRVrDCQcoEnHrPxdblf6I	cjyv9mj9m00006n0xueq9yycw	\N	
0v3QVJ6zfKQ1hs71edqzw5	1	178666	t	https://api.spotify.com/v1/tracks/0v3QVJ6zfKQ1hs71edqzw5	t	30	https://p.scdn.co/mp3-preview/0fd261eb7b926c2de0fcb52cfce42dc102a88657?cid=11a940691ec14481940c2be7d192a91b	1	spotify:track:0v3QVJ6zfKQ1hs71edqzw5	cjyv9mj9m00006n0xueq9yycw	\N	
0lUDISgVbNGJo4QYicSkCZ	1	214792	t	https://api.spotify.com/v1/tracks/0lUDISgVbNGJo4QYicSkCZ	t	30	https://p.scdn.co/mp3-preview/d01bdd61554b3740fbf888c6bab65b22b4fb488b?cid=11a940691ec14481940c2be7d192a91b	1	spotify:track:0lUDISgVbNGJo4QYicSkCZ	cjyv9mj9m00006n0xueq9yycw	\N	
2Y7owtZ5BEotJILx612fge	1	149336	f	https://api.spotify.com/v1/tracks/2Y7owtZ5BEotJILx612fge	t	32	https://p.scdn.co/mp3-preview/a6758f3b5cdccd342315eb7c9c4fa8758ee4ae36?cid=11a940691ec14481940c2be7d192a91b	5	spotify:track:2Y7owtZ5BEotJILx612fge	cjyv9mj9m00006n0xueq9yycw	\N	
73oamquev2r1MMkSDEjKgQ	1	251320	f	https://api.spotify.com/v1/tracks/73oamquev2r1MMkSDEjKgQ	t	44	https://p.scdn.co/mp3-preview/92ac675c0a374bb61fa5a9eadc938cfa04714adc?cid=11a940691ec14481940c2be7d192a91b	6	spotify:track:73oamquev2r1MMkSDEjKgQ	cjyv9mj9m00006n0xueq9yycw	\N	
7kpkwlJqnO5SaHdjhL7BqU	1	155653	t	https://api.spotify.com/v1/tracks/7kpkwlJqnO5SaHdjhL7BqU	t	37	https://p.scdn.co/mp3-preview/7d59870d606cef649b065f155a4d3475cdc83acb?cid=11a940691ec14481940c2be7d192a91b	3	spotify:track:7kpkwlJqnO5SaHdjhL7BqU	cjyv9mj9m00006n0xueq9yycw	\N	
3DjYU54tU6YCEy822r8TcY	1	238777	f	https://api.spotify.com/v1/tracks/3DjYU54tU6YCEy822r8TcY	t	50	https://p.scdn.co/mp3-preview/57d9e905dee5fde54b6353f61b242d72419f50c4?cid=11a940691ec14481940c2be7d192a91b	2	spotify:track:3DjYU54tU6YCEy822r8TcY	cjyv9mj9m00006n0xueq9yycw	\N	
2FpZOy5LSywULaCoxi8Rzp	1	203080	f	https://api.spotify.com/v1/tracks/2FpZOy5LSywULaCoxi8Rzp	t	34	https://p.scdn.co/mp3-preview/c62ea96828b0e9a095e287b7508fa5cb4237b046?cid=11a940691ec14481940c2be7d192a91b	19	spotify:track:2FpZOy5LSywULaCoxi8Rzp	cjyv9mj9m00006n0xueq9yycw	\N	
3NFiKuNzIqiVdvrQ9qrQfo	1	220706	f	https://api.spotify.com/v1/tracks/3NFiKuNzIqiVdvrQ9qrQfo	t	30	https://p.scdn.co/mp3-preview/b6a6c8d3dc933445aa2a834f41fc969e22c5305b?cid=11a940691ec14481940c2be7d192a91b	16	spotify:track:3NFiKuNzIqiVdvrQ9qrQfo	cjyv9mj9m00006n0xueq9yycw	\N	
22xDP85T4vxyoxS69L4Nzw	1	181560	f	https://api.spotify.com/v1/tracks/22xDP85T4vxyoxS69L4Nzw	t	34	https://p.scdn.co/mp3-preview/311bb3e44d163323759068a40c908a168fa6d161?cid=11a940691ec14481940c2be7d192a91b	2	spotify:track:22xDP85T4vxyoxS69L4Nzw	cjyv9mj9m00006n0xueq9yycw	\N	
3OR8GVakIXV3KXnOyu0EaB	1	252053	t	https://api.spotify.com/v1/tracks/3OR8GVakIXV3KXnOyu0EaB	t	50	https://p.scdn.co/mp3-preview/2105da2ded836177c30527f916489f1315e98a2f?cid=11a940691ec14481940c2be7d192a91b	1	spotify:track:3OR8GVakIXV3KXnOyu0EaB	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9w72w00006k0x1535booj	1	214360	f	https://api.spotify.com/v1/tracks/0bjrZv6I3T0nMRfBhsC16Y	t	37	https://p.scdn.co/mp3-preview/4d456443ca3882efe9ad50abc1c720a5be0803bf?cid=11a940691ec14481940c2be7d192a91b	1	spotify:track:0bjrZv6I3T0nMRfBhsC16Y	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9w73800016k0x0vd326qu	1	294320	f	https://api.spotify.com/v1/tracks/7gRVrDCQcoEnHrPxdblf6I	t	37	https://p.scdn.co/mp3-preview/e2bb345fff8143d1cf9000198ca5891400b502b9?cid=11a940691ec14481940c2be7d192a91b	4	spotify:track:7gRVrDCQcoEnHrPxdblf6I	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9w73h00026k0xpf578zae	1	178666	t	https://api.spotify.com/v1/tracks/0v3QVJ6zfKQ1hs71edqzw5	t	30	https://p.scdn.co/mp3-preview/0fd261eb7b926c2de0fcb52cfce42dc102a88657?cid=11a940691ec14481940c2be7d192a91b	1	spotify:track:0v3QVJ6zfKQ1hs71edqzw5	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9w73o00036k0xbvissiob	1	214792	t	https://api.spotify.com/v1/tracks/0lUDISgVbNGJo4QYicSkCZ	t	30	https://p.scdn.co/mp3-preview/d01bdd61554b3740fbf888c6bab65b22b4fb488b?cid=11a940691ec14481940c2be7d192a91b	1	spotify:track:0lUDISgVbNGJo4QYicSkCZ	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9w73w00046k0xqke2gwl8	1	149336	f	https://api.spotify.com/v1/tracks/2Y7owtZ5BEotJILx612fge	t	32	https://p.scdn.co/mp3-preview/a6758f3b5cdccd342315eb7c9c4fa8758ee4ae36?cid=11a940691ec14481940c2be7d192a91b	5	spotify:track:2Y7owtZ5BEotJILx612fge	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9w74400056k0xmx5c0gh3	1	251320	f	https://api.spotify.com/v1/tracks/73oamquev2r1MMkSDEjKgQ	t	44	https://p.scdn.co/mp3-preview/92ac675c0a374bb61fa5a9eadc938cfa04714adc?cid=11a940691ec14481940c2be7d192a91b	6	spotify:track:73oamquev2r1MMkSDEjKgQ	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9w74c00066k0xy8gvuehc	1	155653	t	https://api.spotify.com/v1/tracks/7kpkwlJqnO5SaHdjhL7BqU	t	37	https://p.scdn.co/mp3-preview/7d59870d606cef649b065f155a4d3475cdc83acb?cid=11a940691ec14481940c2be7d192a91b	3	spotify:track:7kpkwlJqnO5SaHdjhL7BqU	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9we9u00009k0xi6gpmf94	1	214360	f	https://api.spotify.com/v1/tracks/0bjrZv6I3T0nMRfBhsC16Y	t	37	https://p.scdn.co/mp3-preview/4d456443ca3882efe9ad50abc1c720a5be0803bf?cid=11a940691ec14481940c2be7d192a91b	1	spotify:track:0bjrZv6I3T0nMRfBhsC16Y	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wea900019k0xxn3mdj2n	1	294320	f	https://api.spotify.com/v1/tracks/7gRVrDCQcoEnHrPxdblf6I	t	37	https://p.scdn.co/mp3-preview/e2bb345fff8143d1cf9000198ca5891400b502b9?cid=11a940691ec14481940c2be7d192a91b	4	spotify:track:7gRVrDCQcoEnHrPxdblf6I	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9weai00029k0x4g6u24qe	1	178666	t	https://api.spotify.com/v1/tracks/0v3QVJ6zfKQ1hs71edqzw5	t	30	https://p.scdn.co/mp3-preview/0fd261eb7b926c2de0fcb52cfce42dc102a88657?cid=11a940691ec14481940c2be7d192a91b	1	spotify:track:0v3QVJ6zfKQ1hs71edqzw5	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9weaq00039k0xdwgwsy57	1	214792	t	https://api.spotify.com/v1/tracks/0lUDISgVbNGJo4QYicSkCZ	t	30	https://p.scdn.co/mp3-preview/d01bdd61554b3740fbf888c6bab65b22b4fb488b?cid=11a940691ec14481940c2be7d192a91b	1	spotify:track:0lUDISgVbNGJo4QYicSkCZ	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9weax00049k0xi4a6frbt	1	149336	f	https://api.spotify.com/v1/tracks/2Y7owtZ5BEotJILx612fge	t	32	https://p.scdn.co/mp3-preview/a6758f3b5cdccd342315eb7c9c4fa8758ee4ae36?cid=11a940691ec14481940c2be7d192a91b	5	spotify:track:2Y7owtZ5BEotJILx612fge	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9web500059k0xmwc6nb35	1	251320	f	https://api.spotify.com/v1/tracks/73oamquev2r1MMkSDEjKgQ	t	44	https://p.scdn.co/mp3-preview/92ac675c0a374bb61fa5a9eadc938cfa04714adc?cid=11a940691ec14481940c2be7d192a91b	6	spotify:track:73oamquev2r1MMkSDEjKgQ	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9webd00069k0x6jfccotl	1	155653	t	https://api.spotify.com/v1/tracks/7kpkwlJqnO5SaHdjhL7BqU	t	37	https://p.scdn.co/mp3-preview/7d59870d606cef649b065f155a4d3475cdc83acb?cid=11a940691ec14481940c2be7d192a91b	3	spotify:track:7kpkwlJqnO5SaHdjhL7BqU	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wg1j0000al0xah3nybsi	1	214360	f	https://api.spotify.com/v1/tracks/0bjrZv6I3T0nMRfBhsC16Y	t	37	https://p.scdn.co/mp3-preview/4d456443ca3882efe9ad50abc1c720a5be0803bf?cid=11a940691ec14481940c2be7d192a91b	1	spotify:track:0bjrZv6I3T0nMRfBhsC16Y	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wg1x0001al0xo9f3gjlv	1	294320	f	https://api.spotify.com/v1/tracks/7gRVrDCQcoEnHrPxdblf6I	t	37	https://p.scdn.co/mp3-preview/e2bb345fff8143d1cf9000198ca5891400b502b9?cid=11a940691ec14481940c2be7d192a91b	4	spotify:track:7gRVrDCQcoEnHrPxdblf6I	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wg260002al0xuedi10so	1	178666	t	https://api.spotify.com/v1/tracks/0v3QVJ6zfKQ1hs71edqzw5	t	30	https://p.scdn.co/mp3-preview/0fd261eb7b926c2de0fcb52cfce42dc102a88657?cid=11a940691ec14481940c2be7d192a91b	1	spotify:track:0v3QVJ6zfKQ1hs71edqzw5	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wg2e0003al0xlv2imotk	1	214792	t	https://api.spotify.com/v1/tracks/0lUDISgVbNGJo4QYicSkCZ	t	30	https://p.scdn.co/mp3-preview/d01bdd61554b3740fbf888c6bab65b22b4fb488b?cid=11a940691ec14481940c2be7d192a91b	1	spotify:track:0lUDISgVbNGJo4QYicSkCZ	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wg2m0004al0xp2dcsa2n	1	149336	f	https://api.spotify.com/v1/tracks/2Y7owtZ5BEotJILx612fge	t	32	https://p.scdn.co/mp3-preview/a6758f3b5cdccd342315eb7c9c4fa8758ee4ae36?cid=11a940691ec14481940c2be7d192a91b	5	spotify:track:2Y7owtZ5BEotJILx612fge	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wg2u0005al0xzvoe7k3d	1	251320	f	https://api.spotify.com/v1/tracks/73oamquev2r1MMkSDEjKgQ	t	44	https://p.scdn.co/mp3-preview/92ac675c0a374bb61fa5a9eadc938cfa04714adc?cid=11a940691ec14481940c2be7d192a91b	6	spotify:track:73oamquev2r1MMkSDEjKgQ	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wg320006al0xk6dra11l	1	155653	t	https://api.spotify.com/v1/tracks/7kpkwlJqnO5SaHdjhL7BqU	t	37	https://p.scdn.co/mp3-preview/7d59870d606cef649b065f155a4d3475cdc83acb?cid=11a940691ec14481940c2be7d192a91b	3	spotify:track:7kpkwlJqnO5SaHdjhL7BqU	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wkwh0000cn0xx6p4css7	1	238777	f	https://api.spotify.com/v1/tracks/3DjYU54tU6YCEy822r8TcY	t	50	https://p.scdn.co/mp3-preview/57d9e905dee5fde54b6353f61b242d72419f50c4?cid=11a940691ec14481940c2be7d192a91b	2	spotify:track:3DjYU54tU6YCEy822r8TcY	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wkwu0001cn0x7bogmt6z	1	203080	f	https://api.spotify.com/v1/tracks/2FpZOy5LSywULaCoxi8Rzp	t	34	https://p.scdn.co/mp3-preview/c62ea96828b0e9a095e287b7508fa5cb4237b046?cid=11a940691ec14481940c2be7d192a91b	19	spotify:track:2FpZOy5LSywULaCoxi8Rzp	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wkx30002cn0x1xahgfyi	1	220706	f	https://api.spotify.com/v1/tracks/3NFiKuNzIqiVdvrQ9qrQfo	t	30	https://p.scdn.co/mp3-preview/b6a6c8d3dc933445aa2a834f41fc969e22c5305b?cid=11a940691ec14481940c2be7d192a91b	16	spotify:track:3NFiKuNzIqiVdvrQ9qrQfo	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wkxb0003cn0x7oem1puz	1	181560	f	https://api.spotify.com/v1/tracks/22xDP85T4vxyoxS69L4Nzw	t	34	https://p.scdn.co/mp3-preview/311bb3e44d163323759068a40c908a168fa6d161?cid=11a940691ec14481940c2be7d192a91b	2	spotify:track:22xDP85T4vxyoxS69L4Nzw	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wkxj0004cn0xrwl3jpra	1	252053	t	https://api.spotify.com/v1/tracks/3OR8GVakIXV3KXnOyu0EaB	t	50	https://p.scdn.co/mp3-preview/2105da2ded836177c30527f916489f1315e98a2f?cid=11a940691ec14481940c2be7d192a91b	1	spotify:track:3OR8GVakIXV3KXnOyu0EaB	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wmlc0000e20x2j7tj6oy	1	238777	f	https://api.spotify.com/v1/tracks/3DjYU54tU6YCEy822r8TcY	t	50	https://p.scdn.co/mp3-preview/57d9e905dee5fde54b6353f61b242d72419f50c4?cid=11a940691ec14481940c2be7d192a91b	2	spotify:track:3DjYU54tU6YCEy822r8TcY	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wmlp0001e20xpbjdqidc	1	203080	f	https://api.spotify.com/v1/tracks/2FpZOy5LSywULaCoxi8Rzp	t	34	https://p.scdn.co/mp3-preview/c62ea96828b0e9a095e287b7508fa5cb4237b046?cid=11a940691ec14481940c2be7d192a91b	19	spotify:track:2FpZOy5LSywULaCoxi8Rzp	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wmly0002e20xct10zi96	1	220706	f	https://api.spotify.com/v1/tracks/3NFiKuNzIqiVdvrQ9qrQfo	t	30	https://p.scdn.co/mp3-preview/b6a6c8d3dc933445aa2a834f41fc969e22c5305b?cid=11a940691ec14481940c2be7d192a91b	16	spotify:track:3NFiKuNzIqiVdvrQ9qrQfo	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wmm60003e20x39g7pyxc	1	181560	f	https://api.spotify.com/v1/tracks/22xDP85T4vxyoxS69L4Nzw	t	34	https://p.scdn.co/mp3-preview/311bb3e44d163323759068a40c908a168fa6d161?cid=11a940691ec14481940c2be7d192a91b	2	spotify:track:22xDP85T4vxyoxS69L4Nzw	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wmme0004e20xf1y42ywr	1	252053	t	https://api.spotify.com/v1/tracks/3OR8GVakIXV3KXnOyu0EaB	t	50	https://p.scdn.co/mp3-preview/2105da2ded836177c30527f916489f1315e98a2f?cid=11a940691ec14481940c2be7d192a91b	1	spotify:track:3OR8GVakIXV3KXnOyu0EaB	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wo9h0000eb0xfrw93seu	1	238777	f	https://api.spotify.com/v1/tracks/3DjYU54tU6YCEy822r8TcY	t	50	https://p.scdn.co/mp3-preview/57d9e905dee5fde54b6353f61b242d72419f50c4?cid=11a940691ec14481940c2be7d192a91b	2	spotify:track:3DjYU54tU6YCEy822r8TcY	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9wo9u0001eb0x3eekssnm	1	203080	f	https://api.spotify.com/v1/tracks/2FpZOy5LSywULaCoxi8Rzp	t	34	https://p.scdn.co/mp3-preview/c62ea96828b0e9a095e287b7508fa5cb4237b046?cid=11a940691ec14481940c2be7d192a91b	19	spotify:track:2FpZOy5LSywULaCoxi8Rzp	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9woa40002eb0xsp7qzgti	1	220706	f	https://api.spotify.com/v1/tracks/3NFiKuNzIqiVdvrQ9qrQfo	t	30	https://p.scdn.co/mp3-preview/b6a6c8d3dc933445aa2a834f41fc969e22c5305b?cid=11a940691ec14481940c2be7d192a91b	16	spotify:track:3NFiKuNzIqiVdvrQ9qrQfo	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9woac0003eb0xfo1gzlat	1	181560	f	https://api.spotify.com/v1/tracks/22xDP85T4vxyoxS69L4Nzw	t	34	https://p.scdn.co/mp3-preview/311bb3e44d163323759068a40c908a168fa6d161?cid=11a940691ec14481940c2be7d192a91b	2	spotify:track:22xDP85T4vxyoxS69L4Nzw	cjyv9mj9m00006n0xueq9yycw	\N	
cjyv9woak0004eb0x96kpnmxe	1	252053	t	https://api.spotify.com/v1/tracks/3OR8GVakIXV3KXnOyu0EaB	t	50	https://p.scdn.co/mp3-preview/2105da2ded836177c30527f916489f1315e98a2f?cid=11a940691ec14481940c2be7d192a91b	1	spotify:track:3OR8GVakIXV3KXnOyu0EaB	cjyv9mj9m00006n0xueq9yycw	\N	
\.


--
-- Data for Name: Track_availableMarkets; Type: TABLE DATA; Schema: public; Owner: MYUSERNAME
--

COPY public."Track_availableMarkets" ("nodeId", "position", value) FROM stdin;
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: MYUSERNAME
--

COPY public."User" (id, display_name, href, product, uri, artist) FROM stdin;
\.


--
-- Data for Name: _Migration; Type: TABLE DATA; Schema: public; Owner: MYUSERNAME
--

COPY public."_Migration" (revision, name, datamodel, status, applied, rolled_back, datamodel_steps, database_migration, errors, started_at, finished_at) FROM stdin;
1	watch-20190803084422	model Artist {\n  id         String  @default(cuid()) @id\n  followers  User[]\n  genres     Genre[]\n  href       String  @unique\n  images     Image[]\n  name       String\n  popularity Int\n  uri        String  @unique\n  album      Album?\n  track      Track?\n}\n\nmodel Album {\n  id                String   @default(cuid()) @id\n  album_type        String\n  artists           Artist[]\n  available_markets String[]\n  genres            Genre[]\n  href              String   @unique\n  label             String\n  name              String\n  popularity        Int\n  release_date      String\n  tracks            Track[]\n  uri               String   @unique\n}\n\nmodel Playlist {\n  id            String  @default(cuid()) @id\n  collaborative Boolean\n  href          String  @unique\n  images        Image[]\n  name          String\n  public        Boolean\n  tracks        Track[]\n  uri           String  @unique\n}\n\nmodel Track {\n  id                String    @default(cuid()) @id\n  album             Album\n  artists           Artist[]\n  available_markets String[]\n  disc_number       Int\n  duration_ms       Int\n  explicit          Boolean\n  href              String    @unique\n  is_playable       Boolean\n  name              String\n  popularity        Int\n  preview_url       String\n  track_number      Int\n  uri               String    @unique\n  playlist          Playlist?\n}\n\nmodel Category {\n  id    String   @default(cuid()) @id\n  href  String   @unique\n  icons String[]\n  name  String\n}\n\nmodel Genre {\n  id     String  @default(cuid()) @id\n  name   String  @unique\n  artist Artist?\n  album  Album?\n}\n\nmodel User {\n  id           String  @default(cuid()) @id\n  display_name String\n  href         String  @unique\n  images       Image[]\n  product      Product\n  uri          String  @unique\n  artist       Artist?\n}\n\nmodel Image {\n  id       String    @default(cuid()) @id\n  large    String\n  medium   String\n  small    String\n  artist   Artist?\n  playlist Playlist?\n  user     User?\n}\n\nenum Product {\n  FREE\n  PREMIUM\n}	MigrationSuccess	27	0	[{"stepType":"CreateModel","name":"Artist","embedded":false},{"stepType":"CreateModel","name":"Album","embedded":false},{"stepType":"CreateModel","name":"Playlist","embedded":false},{"stepType":"CreateModel","name":"Track","embedded":false},{"stepType":"CreateModel","name":"Category","embedded":false},{"stepType":"CreateModel","name":"Genre","embedded":false},{"stepType":"CreateModel","name":"User","embedded":false},{"stepType":"CreateModel","name":"Image","embedded":false},{"stepType":"CreateField","model":"Artist","name":"id","type":{"Base":"String"},"arity":"required","isUnique":false,"id":{"strategy":"Auto","sequence":null},"default":{"Expression":["cuid","String",[]]}},{"stepType":"CreateField","model":"Artist","name":"followers","type":{"Relation":{"to":"User","to_fields":[],"name":"ArtistToUser","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Artist","name":"genres","type":{"Relation":{"to":"Genre","to_fields":[],"name":"ArtistToGenre","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Artist","name":"href","type":{"Base":"String"},"arity":"required","isUnique":true},{"stepType":"CreateField","model":"Artist","name":"images","type":{"Relation":{"to":"Image","to_fields":[],"name":"ArtistToImage","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Artist","name":"name","type":{"Base":"String"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Artist","name":"popularity","type":{"Base":"Int"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Artist","name":"uri","type":{"Base":"String"},"arity":"required","isUnique":true},{"stepType":"CreateField","model":"Artist","name":"album","type":{"Relation":{"to":"Album","to_fields":["id"],"name":"AlbumToArtist","on_delete":"None"}},"arity":"optional","isUnique":false},{"stepType":"CreateField","model":"Artist","name":"track","type":{"Relation":{"to":"Track","to_fields":["id"],"name":"ArtistToTrack","on_delete":"None"}},"arity":"optional","isUnique":false},{"stepType":"CreateField","model":"Album","name":"id","type":{"Base":"String"},"arity":"required","isUnique":false,"id":{"strategy":"Auto","sequence":null},"default":{"Expression":["cuid","String",[]]}},{"stepType":"CreateField","model":"Album","name":"album_type","type":{"Base":"String"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Album","name":"artists","type":{"Relation":{"to":"Artist","to_fields":[],"name":"AlbumToArtist","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Album","name":"available_markets","type":{"Base":"String"},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Album","name":"genres","type":{"Relation":{"to":"Genre","to_fields":[],"name":"AlbumToGenre","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Album","name":"href","type":{"Base":"String"},"arity":"required","isUnique":true},{"stepType":"CreateField","model":"Album","name":"label","type":{"Base":"String"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Album","name":"name","type":{"Base":"String"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Album","name":"popularity","type":{"Base":"Int"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Album","name":"release_date","type":{"Base":"String"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Album","name":"tracks","type":{"Relation":{"to":"Track","to_fields":[],"name":"AlbumToTrack","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Album","name":"uri","type":{"Base":"String"},"arity":"required","isUnique":true},{"stepType":"CreateField","model":"Playlist","name":"id","type":{"Base":"String"},"arity":"required","isUnique":false,"id":{"strategy":"Auto","sequence":null},"default":{"Expression":["cuid","String",[]]}},{"stepType":"CreateField","model":"Playlist","name":"collaborative","type":{"Base":"Boolean"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Playlist","name":"href","type":{"Base":"String"},"arity":"required","isUnique":true},{"stepType":"CreateField","model":"Playlist","name":"images","type":{"Relation":{"to":"Image","to_fields":[],"name":"ImageToPlaylist","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Playlist","name":"name","type":{"Base":"String"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Playlist","name":"public","type":{"Base":"Boolean"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Playlist","name":"tracks","type":{"Relation":{"to":"Track","to_fields":[],"name":"PlaylistToTrack","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Playlist","name":"uri","type":{"Base":"String"},"arity":"required","isUnique":true},{"stepType":"CreateField","model":"Track","name":"id","type":{"Base":"String"},"arity":"required","isUnique":false,"id":{"strategy":"Auto","sequence":null},"default":{"Expression":["cuid","String",[]]}},{"stepType":"CreateField","model":"Track","name":"album","type":{"Relation":{"to":"Album","to_fields":["id"],"name":"AlbumToTrack","on_delete":"None"}},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Track","name":"artists","type":{"Relation":{"to":"Artist","to_fields":[],"name":"ArtistToTrack","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Track","name":"available_markets","type":{"Base":"String"},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Track","name":"disc_number","type":{"Base":"Int"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Track","name":"duration_ms","type":{"Base":"Int"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Track","name":"explicit","type":{"Base":"Boolean"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Track","name":"href","type":{"Base":"String"},"arity":"required","isUnique":true},{"stepType":"CreateField","model":"Track","name":"is_playable","type":{"Base":"Boolean"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Track","name":"name","type":{"Base":"String"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Track","name":"popularity","type":{"Base":"Int"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Track","name":"preview_url","type":{"Base":"String"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Track","name":"track_number","type":{"Base":"Int"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Track","name":"uri","type":{"Base":"String"},"arity":"required","isUnique":true},{"stepType":"CreateField","model":"Track","name":"playlist","type":{"Relation":{"to":"Playlist","to_fields":["id"],"name":"PlaylistToTrack","on_delete":"None"}},"arity":"optional","isUnique":false},{"stepType":"CreateField","model":"Category","name":"id","type":{"Base":"String"},"arity":"required","isUnique":false,"id":{"strategy":"Auto","sequence":null},"default":{"Expression":["cuid","String",[]]}},{"stepType":"CreateField","model":"Category","name":"href","type":{"Base":"String"},"arity":"required","isUnique":true},{"stepType":"CreateField","model":"Category","name":"icons","type":{"Base":"String"},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Category","name":"name","type":{"Base":"String"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Genre","name":"id","type":{"Base":"String"},"arity":"required","isUnique":false,"id":{"strategy":"Auto","sequence":null},"default":{"Expression":["cuid","String",[]]}},{"stepType":"CreateField","model":"Genre","name":"name","type":{"Base":"String"},"arity":"required","isUnique":true},{"stepType":"CreateField","model":"Genre","name":"artist","type":{"Relation":{"to":"Artist","to_fields":["id"],"name":"ArtistToGenre","on_delete":"None"}},"arity":"optional","isUnique":false},{"stepType":"CreateField","model":"Genre","name":"album","type":{"Relation":{"to":"Album","to_fields":["id"],"name":"AlbumToGenre","on_delete":"None"}},"arity":"optional","isUnique":false},{"stepType":"CreateField","model":"User","name":"id","type":{"Base":"String"},"arity":"required","isUnique":false,"id":{"strategy":"Auto","sequence":null},"default":{"Expression":["cuid","String",[]]}},{"stepType":"CreateField","model":"User","name":"display_name","type":{"Base":"String"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"User","name":"href","type":{"Base":"String"},"arity":"required","isUnique":true},{"stepType":"CreateField","model":"User","name":"images","type":{"Relation":{"to":"Image","to_fields":[],"name":"ImageToUser","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"User","name":"product","type":{"Enum":"Product"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"User","name":"uri","type":{"Base":"String"},"arity":"required","isUnique":true},{"stepType":"CreateField","model":"User","name":"artist","type":{"Relation":{"to":"Artist","to_fields":["id"],"name":"ArtistToUser","on_delete":"None"}},"arity":"optional","isUnique":false},{"stepType":"CreateField","model":"Image","name":"id","type":{"Base":"String"},"arity":"required","isUnique":false,"id":{"strategy":"Auto","sequence":null},"default":{"Expression":["cuid","String",[]]}},{"stepType":"CreateField","model":"Image","name":"large","type":{"Base":"String"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Image","name":"medium","type":{"Base":"String"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Image","name":"small","type":{"Base":"String"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Image","name":"artist","type":{"Relation":{"to":"Artist","to_fields":["id"],"name":"ArtistToImage","on_delete":"None"}},"arity":"optional","isUnique":false},{"stepType":"CreateField","model":"Image","name":"playlist","type":{"Relation":{"to":"Playlist","to_fields":["id"],"name":"ImageToPlaylist","on_delete":"None"}},"arity":"optional","isUnique":false},{"stepType":"CreateField","model":"Image","name":"user","type":{"Relation":{"to":"User","to_fields":["id"],"name":"ImageToUser","on_delete":"None"}},"arity":"optional","isUnique":false},{"stepType":"CreateEnum","name":"Product","values":["FREE","PREMIUM"]}]	{"steps":[{"CreateTable":{"name":"Artist","columns":[{"name":"id","tpe":"String","required":true,"foreign_key":null,"default":{"Expression":["cuid","String",[]]}},{"name":"href","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}},{"name":"name","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}},{"name":"popularity","tpe":"Int","required":true,"foreign_key":null,"default":{"Int":0}},{"name":"uri","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}}],"primary_columns":["id"]}},{"CreateTable":{"name":"Album","columns":[{"name":"id","tpe":"String","required":true,"foreign_key":null,"default":{"Expression":["cuid","String",[]]}},{"name":"album_type","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}},{"name":"href","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}},{"name":"label","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}},{"name":"name","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}},{"name":"popularity","tpe":"Int","required":true,"foreign_key":null,"default":{"Int":0}},{"name":"release_date","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}},{"name":"uri","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}}],"primary_columns":["id"]}},{"CreateTable":{"name":"Playlist","columns":[{"name":"id","tpe":"String","required":true,"foreign_key":null,"default":{"Expression":["cuid","String",[]]}},{"name":"collaborative","tpe":"Boolean","required":true,"foreign_key":null,"default":{"Boolean":false}},{"name":"href","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}},{"name":"name","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}},{"name":"public","tpe":"Boolean","required":true,"foreign_key":null,"default":{"Boolean":false}},{"name":"uri","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}}],"primary_columns":["id"]}},{"CreateTable":{"name":"Track","columns":[{"name":"id","tpe":"String","required":true,"foreign_key":null,"default":{"Expression":["cuid","String",[]]}},{"name":"disc_number","tpe":"Int","required":true,"foreign_key":null,"default":{"Int":0}},{"name":"duration_ms","tpe":"Int","required":true,"foreign_key":null,"default":{"Int":0}},{"name":"explicit","tpe":"Boolean","required":true,"foreign_key":null,"default":{"Boolean":false}},{"name":"href","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}},{"name":"is_playable","tpe":"Boolean","required":true,"foreign_key":null,"default":{"Boolean":false}},{"name":"name","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}},{"name":"popularity","tpe":"Int","required":true,"foreign_key":null,"default":{"Int":0}},{"name":"preview_url","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}},{"name":"track_number","tpe":"Int","required":true,"foreign_key":null,"default":{"Int":0}},{"name":"uri","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}}],"primary_columns":["id"]}},{"CreateTable":{"name":"Category","columns":[{"name":"id","tpe":"String","required":true,"foreign_key":null,"default":{"Expression":["cuid","String",[]]}},{"name":"href","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}},{"name":"name","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}}],"primary_columns":["id"]}},{"CreateTable":{"name":"Genre","columns":[{"name":"id","tpe":"String","required":true,"foreign_key":null,"default":{"Expression":["cuid","String",[]]}},{"name":"name","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}}],"primary_columns":["id"]}},{"CreateTable":{"name":"User","columns":[{"name":"id","tpe":"String","required":true,"foreign_key":null,"default":{"Expression":["cuid","String",[]]}},{"name":"display_name","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}},{"name":"href","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}},{"name":"product","tpe":"String","required":true,"foreign_key":null,"default":{"String":"FREE"}},{"name":"uri","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}}],"primary_columns":["id"]}},{"CreateTable":{"name":"Image","columns":[{"name":"id","tpe":"String","required":true,"foreign_key":null,"default":{"Expression":["cuid","String",[]]}},{"name":"large","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}},{"name":"medium","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}},{"name":"small","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}}],"primary_columns":["id"]}},{"CreateTable":{"name":"Album_available_markets","columns":[{"name":"nodeId","tpe":"String","required":true,"foreign_key":{"table":"Album","column":"id"},"default":null},{"name":"position","tpe":"Int","required":true,"foreign_key":null,"default":null},{"name":"value","tpe":"String","required":true,"foreign_key":null,"default":null}],"primary_columns":["nodeId","position"]}},{"CreateTable":{"name":"Track_available_markets","columns":[{"name":"nodeId","tpe":"String","required":true,"foreign_key":{"table":"Track","column":"id"},"default":null},{"name":"position","tpe":"Int","required":true,"foreign_key":null,"default":null},{"name":"value","tpe":"String","required":true,"foreign_key":null,"default":null}],"primary_columns":["nodeId","position"]}},{"CreateTable":{"name":"Category_icons","columns":[{"name":"nodeId","tpe":"String","required":true,"foreign_key":{"table":"Category","column":"id"},"default":null},{"name":"position","tpe":"Int","required":true,"foreign_key":null,"default":null},{"name":"value","tpe":"String","required":true,"foreign_key":null,"default":null}],"primary_columns":["nodeId","position"]}},{"AlterTable":{"table":"Artist","changes":[{"AddColumn":{"column":{"name":"album","tpe":"String","required":false,"foreign_key":{"table":"Album","column":"id"},"default":null}}},{"AddColumn":{"column":{"name":"track","tpe":"String","required":false,"foreign_key":{"table":"Track","column":"id"},"default":null}}}]}},{"AlterTable":{"table":"Track","changes":[{"AddColumn":{"column":{"name":"album","tpe":"String","required":true,"foreign_key":{"table":"Album","column":"id"},"default":null}}},{"AddColumn":{"column":{"name":"playlist","tpe":"String","required":false,"foreign_key":{"table":"Playlist","column":"id"},"default":null}}}]}},{"AlterTable":{"table":"Genre","changes":[{"AddColumn":{"column":{"name":"artist","tpe":"String","required":false,"foreign_key":{"table":"Artist","column":"id"},"default":null}}},{"AddColumn":{"column":{"name":"album","tpe":"String","required":false,"foreign_key":{"table":"Album","column":"id"},"default":null}}}]}},{"AlterTable":{"table":"User","changes":[{"AddColumn":{"column":{"name":"artist","tpe":"String","required":false,"foreign_key":{"table":"Artist","column":"id"},"default":null}}}]}},{"AlterTable":{"table":"Image","changes":[{"AddColumn":{"column":{"name":"artist","tpe":"String","required":false,"foreign_key":{"table":"Artist","column":"id"},"default":null}}},{"AddColumn":{"column":{"name":"playlist","tpe":"String","required":false,"foreign_key":{"table":"Playlist","column":"id"},"default":null}}},{"AddColumn":{"column":{"name":"user","tpe":"String","required":false,"foreign_key":{"table":"User","column":"id"},"default":null}}}]}},{"CreateIndex":{"table":"Artist","name":"Artist.href._UNIQUE","tpe":"Unique","columns":["href"]}},{"CreateIndex":{"table":"Artist","name":"Artist.uri._UNIQUE","tpe":"Unique","columns":["uri"]}},{"CreateIndex":{"table":"Album","name":"Album.href._UNIQUE","tpe":"Unique","columns":["href"]}},{"CreateIndex":{"table":"Album","name":"Album.uri._UNIQUE","tpe":"Unique","columns":["uri"]}},{"CreateIndex":{"table":"Playlist","name":"Playlist.href._UNIQUE","tpe":"Unique","columns":["href"]}},{"CreateIndex":{"table":"Playlist","name":"Playlist.uri._UNIQUE","tpe":"Unique","columns":["uri"]}},{"CreateIndex":{"table":"Track","name":"Track.href._UNIQUE","tpe":"Unique","columns":["href"]}},{"CreateIndex":{"table":"Track","name":"Track.uri._UNIQUE","tpe":"Unique","columns":["uri"]}},{"CreateIndex":{"table":"Category","name":"Category.href._UNIQUE","tpe":"Unique","columns":["href"]}},{"CreateIndex":{"table":"Genre","name":"Genre.name._UNIQUE","tpe":"Unique","columns":["name"]}},{"CreateIndex":{"table":"User","name":"User.href._UNIQUE","tpe":"Unique","columns":["href"]}},{"CreateIndex":{"table":"User","name":"User.uri._UNIQUE","tpe":"Unique","columns":["uri"]}}],"rollback":[{"DropTable":{"name":"Artist"}},{"DropTable":{"name":"Album"}},{"DropTable":{"name":"Playlist"}},{"DropTable":{"name":"Track"}},{"DropTable":{"name":"Category"}},{"DropTable":{"name":"Genre"}},{"DropTable":{"name":"User"}},{"DropTable":{"name":"Image"}},{"DropTable":{"name":"Album_available_markets"}},{"DropTable":{"name":"Track_available_markets"}},{"DropTable":{"name":"Category_icons"}},{"DropIndex":{"table":"Artist","name":"Artist.href._UNIQUE"}},{"DropIndex":{"table":"Artist","name":"Artist.uri._UNIQUE"}},{"DropIndex":{"table":"Album","name":"Album.href._UNIQUE"}},{"DropIndex":{"table":"Album","name":"Album.uri._UNIQUE"}},{"DropIndex":{"table":"Playlist","name":"Playlist.href._UNIQUE"}},{"DropIndex":{"table":"Playlist","name":"Playlist.uri._UNIQUE"}},{"DropIndex":{"table":"Track","name":"Track.href._UNIQUE"}},{"DropIndex":{"table":"Track","name":"Track.uri._UNIQUE"}},{"DropIndex":{"table":"Category","name":"Category.href._UNIQUE"}},{"DropIndex":{"table":"Genre","name":"Genre.name._UNIQUE"}},{"DropIndex":{"table":"User","name":"User.href._UNIQUE"}},{"DropIndex":{"table":"User","name":"User.uri._UNIQUE"}}]}	[]	2019-08-03 06:44:23.107	2019-08-03 06:44:23.184
2	watch-20190803091905	model Artist {\n  id         String  @default(cuid()) @id\n  followers  User[]\n  genres     Genre[]\n  href       String  @unique\n  images     Image[]\n  name       String\n  popularity Int\n  uri        String  @unique\n  album      Album?\n  track      Track?\n}\n\nmodel Album {\n  id                String   @default(cuid()) @id\n  album_type        String\n  artists           Artist[]\n  available_markets String[]\n  genres            Genre[]\n  href              String   @unique\n  label             String\n  name              String\n  popularity        Int\n  release_date      String\n  tracks            Track[]\n  uri               String   @unique\n}\n\nmodel Playlist {\n  id            String  @default(cuid()) @id\n  collaborative Boolean\n  href          String  @unique\n  images        Image[]\n  name          String\n  public        Boolean\n  tracks        Track[]\n  uri           String  @unique\n}\n\nmodel Track {\n  id                String    @default(cuid()) @id\n  album             Album\n  artists           Artist[]\n  available_markets String[]\n  disc_number       Int\n  duration_ms       Int\n  explicit          Boolean\n  href              String    @unique\n  is_playable       Boolean\n  name              String\n  popularity        Int\n  preview_url       String\n  track_number      Int\n  uri               String    @unique\n  playlist          Playlist?\n}\n\nmodel Category {\n  id    String   @default(cuid()) @id\n  href  String   @unique\n  icons String[]\n  name  String\n}\n\nmodel Genre {\n  id     String  @default(cuid()) @id\n  name   String  @unique\n  artist Artist?\n  album  Album?\n}\n\nmodel User {\n  id           String  @default(cuid()) @id\n  display_name String\n  href         String  @unique\n  images       Image[]\n  product      Product\n  uri          String  @unique\n  artist       Artist?\n}\n\nmodel Image {\n  id       String    @default(cuid()) @id\n  artist   Artist?\n  playlist Playlist?\n  user     User?\n  height   Int\n  width    Int\n  url      String    @unique\n}\n\nenum Product {\n  FREE\n  PREMIUM\n}	MigrationSuccess	1	0	[{"stepType":"CreateField","model":"Image","name":"height","type":{"Base":"Int"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Image","name":"width","type":{"Base":"Int"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Image","name":"url","type":{"Base":"String"},"arity":"required","isUnique":true},{"stepType":"DeleteField","model":"Image","name":"large"},{"stepType":"DeleteField","model":"Image","name":"medium"},{"stepType":"DeleteField","model":"Image","name":"small"}]	{"steps":[{"AlterTable":{"table":"Image","changes":[{"DropColumn":{"name":"large"}},{"DropColumn":{"name":"medium"}},{"DropColumn":{"name":"small"}},{"AddColumn":{"column":{"name":"height","tpe":"Int","required":true,"foreign_key":null,"default":{"Int":0}}}},{"AddColumn":{"column":{"name":"width","tpe":"Int","required":true,"foreign_key":null,"default":{"Int":0}}}},{"AddColumn":{"column":{"name":"url","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}}}}]}},{"CreateIndex":{"table":"Image","name":"Image.url._UNIQUE","tpe":"Unique","columns":["url"]}}],"rollback":[{"AlterTable":{"table":"Image","changes":[{"DropColumn":{"name":"height"}},{"DropColumn":{"name":"width"}},{"DropColumn":{"name":"url"}},{"AddColumn":{"column":{"name":"large","tpe":"String","required":true,"foreign_key":null,"default":null}}},{"AddColumn":{"column":{"name":"medium","tpe":"String","required":true,"foreign_key":null,"default":null}}},{"AddColumn":{"column":{"name":"small","tpe":"String","required":true,"foreign_key":null,"default":null}}}]}},{"DropIndex":{"table":"Image","name":"Image.url._UNIQUE"}}]}	[]	2019-08-03 07:19:05.732	2019-08-03 07:19:05.74
3	watch-20190803094414	model Artist {\n  id         String  @default(cuid()) @id\n  followers  User[]\n  genres     Genre[]\n  href       String  @unique\n  images     Image[]\n  name       String\n  popularity Int\n  uri        String  @unique\n  album      Album?\n  track      Track?\n}\n\nmodel Album {\n  id                String   @default(cuid()) @id\n  album_type        String\n  artists           Artist[]\n  available_markets String[]\n  genres            Genre[]\n  href              String   @unique\n  name              String\n  release_date      String\n  tracks            Track[]\n  uri               String   @unique\n}\n\nmodel Playlist {\n  id            String  @default(cuid()) @id\n  collaborative Boolean\n  href          String  @unique\n  images        Image[]\n  name          String\n  public        Boolean\n  tracks        Track[]\n  uri           String  @unique\n}\n\nmodel Track {\n  id                String    @default(cuid()) @id\n  album             Album\n  artists           Artist[]\n  available_markets String[]\n  disc_number       Int\n  duration_ms       Int\n  explicit          Boolean\n  href              String    @unique\n  is_playable       Boolean\n  name              String\n  popularity        Int\n  preview_url       String\n  track_number      Int\n  uri               String    @unique\n  playlist          Playlist?\n  genres            Genre[]\n}\n\nmodel Category {\n  id    String   @default(cuid()) @id\n  href  String   @unique\n  icons String[]\n  name  String\n}\n\nmodel Genre {\n  id     String  @default(cuid()) @id\n  name   String  @unique\n  artist Artist?\n  album  Album?\n  track  Track?\n}\n\nmodel User {\n  id           String  @default(cuid()) @id\n  display_name String\n  href         String  @unique\n  images       Image[]\n  product      Product\n  uri          String  @unique\n  artist       Artist?\n}\n\nmodel Image {\n  id       String    @default(cuid()) @id\n  artist   Artist?\n  playlist Playlist?\n  user     User?\n  height   Int\n  width    Int\n  url      String    @unique\n}\n\nenum Product {\n  FREE\n  PREMIUM\n}	MigrationSuccess	1	0	[{"stepType":"CreateField","model":"Track","name":"genres","type":{"Relation":{"to":"Genre","to_fields":[],"name":"GenreToTrack","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Genre","name":"track","type":{"Relation":{"to":"Track","to_fields":["id"],"name":"GenreToTrack","on_delete":"None"}},"arity":"optional","isUnique":false},{"stepType":"DeleteField","model":"Album","name":"label"},{"stepType":"DeleteField","model":"Album","name":"popularity"}]	{"steps":[{"AlterTable":{"table":"Genre","changes":[{"AddColumn":{"column":{"name":"track","tpe":"String","required":false,"foreign_key":{"table":"Track","column":"id"},"default":null}}}]}},{"AlterTable":{"table":"Album","changes":[{"DropColumn":{"name":"label"}},{"DropColumn":{"name":"popularity"}}]}}],"rollback":[{"AlterTable":{"table":"Album","changes":[{"AddColumn":{"column":{"name":"label","tpe":"String","required":true,"foreign_key":null,"default":null}}},{"AddColumn":{"column":{"name":"popularity","tpe":"Int","required":true,"foreign_key":null,"default":null}}}]}},{"AlterTable":{"table":"Genre","changes":[{"DropColumn":{"name":"track"}}]}}]}	[]	2019-08-03 07:44:14.973	2019-08-03 07:44:14.979
4	watch-20190803094512	model Artist {\n  id        String  @default(cuid()) @id\n  followers User[]\n  genres    Genre[]\n  href      String  @unique\n  images    Image[]\n  name      String\n  uri       String  @unique\n  album     Album?\n  track     Track?\n}\n\nmodel Album {\n  id                String   @default(cuid()) @id\n  album_type        String\n  artists           Artist[]\n  available_markets String[]\n  genres            Genre[]\n  href              String   @unique\n  name              String\n  release_date      String\n  tracks            Track[]\n  uri               String   @unique\n}\n\nmodel Playlist {\n  id            String  @default(cuid()) @id\n  collaborative Boolean\n  href          String  @unique\n  images        Image[]\n  name          String\n  public        Boolean\n  tracks        Track[]\n  uri           String  @unique\n}\n\nmodel Track {\n  id                String    @default(cuid()) @id\n  album             Album\n  artists           Artist[]\n  available_markets String[]\n  disc_number       Int\n  duration_ms       Int\n  explicit          Boolean\n  href              String    @unique\n  is_playable       Boolean\n  name              String\n  popularity        Int\n  preview_url       String\n  track_number      Int\n  uri               String    @unique\n  playlist          Playlist?\n  genres            Genre[]\n}\n\nmodel Category {\n  id    String   @default(cuid()) @id\n  href  String   @unique\n  icons String[]\n  name  String\n}\n\nmodel Genre {\n  id     String  @default(cuid()) @id\n  name   String  @unique\n  artist Artist?\n  album  Album?\n  track  Track?\n}\n\nmodel User {\n  id           String  @default(cuid()) @id\n  display_name String\n  href         String  @unique\n  images       Image[]\n  product      Product\n  uri          String  @unique\n  artist       Artist?\n}\n\nmodel Image {\n  id       String    @default(cuid()) @id\n  artist   Artist?\n  playlist Playlist?\n  user     User?\n  height   Int\n  width    Int\n  url      String    @unique\n}\n\nenum Product {\n  FREE\n  PREMIUM\n}	MigrationSuccess	0	0	[{"stepType":"DeleteField","model":"Artist","name":"popularity"}]	{"steps":[{"AlterTable":{"table":"Artist","changes":[{"DropColumn":{"name":"popularity"}}]}}],"rollback":[{"AlterTable":{"table":"Artist","changes":[{"AddColumn":{"column":{"name":"popularity","tpe":"Int","required":true,"foreign_key":null,"default":null}}}]}}]}	[]	2019-08-03 07:45:12.624	2019-08-03 07:45:12.628
5	watch-20190803102232	model Artist {\n  id        String  @default(cuid()) @id\n  followers User[]\n  genres    Genre[]\n  href      String  @unique\n  images    Image[]\n  name      String\n  uri       String  @unique\n  album     Album?\n  track     Track?\n}\n\nmodel Album {\n  id                String   @default(cuid()) @id\n  album_type        String\n  artists           Artist[]\n  available_markets String[]\n  genres            Genre[]\n  href              String   @unique\n  name              String\n  release_date      String\n  tracks            Track[]\n  uri               String   @unique\n}\n\nmodel Playlist {\n  id            String  @default(cuid()) @id\n  collaborative Boolean\n  href          String  @unique\n  images        Image[]\n  name          String\n  public        Boolean\n  tracks        Track[]\n  uri           String  @unique\n}\n\nmodel Track {\n  id                String    @default(cuid()) @id\n  album             Album?\n  artists           Artist[]\n  available_markets String[]\n  disc_number       Int\n  duration_ms       Int\n  explicit          Boolean\n  href              String    @unique\n  is_playable       Boolean\n  name              String\n  popularity        Int\n  preview_url       String\n  track_number      Int\n  uri               String    @unique\n  playlist          Playlist?\n  genres            Genre[]\n}\n\nmodel Category {\n  id    String   @default(cuid()) @id\n  href  String   @unique\n  icons String[]\n  name  String\n}\n\nmodel Genre {\n  id     String  @default(cuid()) @id\n  name   String  @unique\n  artist Artist?\n  album  Album?\n  track  Track?\n}\n\nmodel User {\n  id           String  @default(cuid()) @id\n  display_name String\n  href         String  @unique\n  images       Image[]\n  product      Product\n  uri          String  @unique\n  artist       Artist?\n}\n\nmodel Image {\n  id       String    @default(cuid()) @id\n  artist   Artist?\n  playlist Playlist?\n  user     User?\n  height   Int\n  width    Int\n  url      String    @unique\n}\n\nenum Product {\n  FREE\n  PREMIUM\n}	MigrationSuccess	0	0	[{"stepType":"UpdateField","model":"Track","name":"album","arity":"optional"}]	{"steps":[{"AlterTable":{"table":"Track","changes":[{"AlterColumn":{"name":"album","column":{"name":"album","tpe":"String","required":false,"foreign_key":{"table":"Album","column":"id"},"default":null}}}]}}],"rollback":[{"AlterTable":{"table":"Track","changes":[{"AlterColumn":{"name":"album","column":{"name":"album","tpe":"String","required":true,"foreign_key":{"table":"Album","column":"id"},"default":null}}}]}}]}	[]	2019-08-03 08:22:32.776	2019-08-03 08:22:32.781
6	watch-20190803102623	model Artist {\n  id        String  @default(cuid()) @id\n  followers User[]\n  genres    Genre[]\n  href      String  @unique\n  images    Image[]\n  name      String\n  uri       String  @unique\n  album     Album?\n  track     Track?\n}\n\nmodel Album {\n  id                String   @default(cuid()) @id\n  album_type        String\n  artists           Artist[]\n  available_markets String[]\n  genres            Genre[]\n  href              String   @unique\n  name              String\n  release_date      String\n  tracks            Track[]\n  uri               String   @unique\n}\n\nmodel Playlist {\n  id            String  @default(cuid()) @id\n  collaborative Boolean\n  href          String  @unique\n  images        Image[]\n  name          String\n  public        Boolean\n  tracks        Track[]\n  uri           String  @unique\n}\n\nmodel Track {\n  id                String    @default(cuid()) @id\n  album             Album?\n  artists           Artist[]\n  available_markets String[]\n  disc_number       Int\n  duration_ms       Int\n  explicit          Boolean\n  href              String\n  is_playable       Boolean\n  name              String\n  popularity        Int\n  preview_url       String\n  track_number      Int\n  uri               String\n  playlist          Playlist?\n  genres            Genre[]\n}\n\nmodel Category {\n  id    String   @default(cuid()) @id\n  href  String   @unique\n  icons String[]\n  name  String\n}\n\nmodel Genre {\n  id     String  @default(cuid()) @id\n  name   String  @unique\n  artist Artist?\n  album  Album?\n  track  Track?\n}\n\nmodel User {\n  id           String  @default(cuid()) @id\n  display_name String\n  href         String  @unique\n  images       Image[]\n  product      Product\n  uri          String  @unique\n  artist       Artist?\n}\n\nmodel Image {\n  id       String    @default(cuid()) @id\n  artist   Artist?\n  playlist Playlist?\n  user     User?\n  height   Int\n  width    Int\n  url      String    @unique\n}\n\nenum Product {\n  FREE\n  PREMIUM\n}	MigrationSuccess	1	0	[{"stepType":"UpdateField","model":"Track","name":"href","isUnique":false},{"stepType":"UpdateField","model":"Track","name":"uri","isUnique":false}]	{"steps":[{"DropIndex":{"table":"Track","name":"Track.href._UNIQUE"}},{"DropIndex":{"table":"Track","name":"Track.uri._UNIQUE"}}],"rollback":[{"CreateIndex":{"table":"Track","name":"Track.href._UNIQUE","tpe":"Unique","columns":["href"]}},{"CreateIndex":{"table":"Track","name":"Track.uri._UNIQUE","tpe":"Unique","columns":["uri"]}}]}	[]	2019-08-03 08:26:23.656	2019-08-03 08:26:23.663
7	watch-20190803105249	model Artist {\n  id    String  @default(cuid()) @id\n  href  String  @unique\n  name  String\n  uri   String  @unique\n  album Album?\n  track Track?\n  genre Genre[]\n  image Image[]\n  user  User[]\n}\n\nmodel Album {\n  id               String   @default(cuid()) @id\n  href             String   @unique\n  name             String\n  uri              String   @unique\n  albumType        String   @map("album_type")\n  artist           Artist[]\n  availableMarkets String[]\n  genre            Genre[]\n  releaseDate      String   @map("release_date")\n  track            Track[]\n}\n\nmodel Playlist {\n  id            String  @default(cuid()) @id\n  collaborative Boolean\n  href          String  @unique\n  name          String\n  public        Boolean\n  uri           String  @unique\n  image         Image[]\n  track         Track[]\n}\n\nmodel Track {\n  id               String    @default(cuid()) @id\n  album            Album?\n  explicit         Boolean\n  href             String\n  name             String\n  popularity       Int\n  uri              String\n  playlist         Playlist?\n  artist           Artist[]\n  availableMarkets String[]\n  discNumber       Int       @map("disc_number")\n  durationMs       Int       @map("duration_ms")\n  genre            Genre[]\n  isPlayable       Boolean   @map("is_playable")\n  previewUrl       String    @map("preview_url")\n  trackNumber      Int       @map("track_number")\n}\n\nmodel Category {\n  id    String   @default(cuid()) @id\n  href  String   @unique\n  icons String[]\n  name  String\n}\n\nmodel Genre {\n  id     String  @default(cuid()) @id\n  name   String  @unique\n  artist Artist?\n  album  Album?\n  track  Track?\n}\n\nmodel User {\n  id          String  @default(cuid()) @id\n  href        String  @unique\n  product     String\n  uri         String  @unique\n  artist      Artist?\n  displayName String  @map("display_name")\n  image       Image[]\n}\n\nmodel Image {\n  id       String    @default(cuid()) @id\n  artist   Artist?\n  playlist Playlist?\n  user     User?\n  height   Int\n  width    Int\n  url      String    @unique\n}\n\nmodel Migration {\n  revision          Int       @id\n  applied           Int\n  databaseMigration String    @map("database_migration")\n  datamodel         String\n  datamodelSteps    String    @map("datamodel_steps")\n  errors            String\n  finishedAt        DateTime? @map("finished_at")\n  name              String\n  rolledBack        Int       @map("rolled_back")\n  startedAt         DateTime  @map("started_at")\n  status            String\n\n  @@map("_Migration")\n}	MigrationSuccess	3	0	[{"stepType":"CreateModel","name":"Migration","dbName":"_Migration","embedded":false},{"stepType":"CreateField","model":"Album","name":"albumType","type":{"Base":"String"},"arity":"required","dbName":"album_type","isUnique":false},{"stepType":"CreateField","model":"Album","name":"artist","type":{"Relation":{"to":"Artist","to_fields":[],"name":"AlbumToArtist","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Album","name":"availableMarkets","type":{"Base":"String"},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Album","name":"genre","type":{"Relation":{"to":"Genre","to_fields":[],"name":"AlbumToGenre","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Album","name":"releaseDate","type":{"Base":"String"},"arity":"required","dbName":"release_date","isUnique":false},{"stepType":"CreateField","model":"Album","name":"track","type":{"Relation":{"to":"Track","to_fields":[],"name":"AlbumToTrack","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Artist","name":"genre","type":{"Relation":{"to":"Genre","to_fields":[],"name":"ArtistToGenre","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Artist","name":"image","type":{"Relation":{"to":"Image","to_fields":[],"name":"ArtistToImage","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Artist","name":"user","type":{"Relation":{"to":"User","to_fields":[],"name":"ArtistToUser","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Migration","name":"revision","type":{"Base":"Int"},"arity":"required","isUnique":false,"id":{"strategy":"Auto","sequence":null}},{"stepType":"CreateField","model":"Migration","name":"applied","type":{"Base":"Int"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Migration","name":"databaseMigration","type":{"Base":"String"},"arity":"required","dbName":"database_migration","isUnique":false},{"stepType":"CreateField","model":"Migration","name":"datamodel","type":{"Base":"String"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Migration","name":"datamodelSteps","type":{"Base":"String"},"arity":"required","dbName":"datamodel_steps","isUnique":false},{"stepType":"CreateField","model":"Migration","name":"errors","type":{"Base":"String"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Migration","name":"finishedAt","type":{"Base":"DateTime"},"arity":"optional","dbName":"finished_at","isUnique":false},{"stepType":"CreateField","model":"Migration","name":"name","type":{"Base":"String"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Migration","name":"rolledBack","type":{"Base":"Int"},"arity":"required","dbName":"rolled_back","isUnique":false},{"stepType":"CreateField","model":"Migration","name":"startedAt","type":{"Base":"DateTime"},"arity":"required","dbName":"started_at","isUnique":false},{"stepType":"CreateField","model":"Migration","name":"status","type":{"Base":"String"},"arity":"required","isUnique":false},{"stepType":"CreateField","model":"Playlist","name":"image","type":{"Relation":{"to":"Image","to_fields":[],"name":"ImageToPlaylist","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Playlist","name":"track","type":{"Relation":{"to":"Track","to_fields":[],"name":"PlaylistToTrack","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Track","name":"artist","type":{"Relation":{"to":"Artist","to_fields":[],"name":"ArtistToTrack","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Track","name":"availableMarkets","type":{"Base":"String"},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Track","name":"discNumber","type":{"Base":"Int"},"arity":"required","dbName":"disc_number","isUnique":false},{"stepType":"CreateField","model":"Track","name":"durationMs","type":{"Base":"Int"},"arity":"required","dbName":"duration_ms","isUnique":false},{"stepType":"CreateField","model":"Track","name":"genre","type":{"Relation":{"to":"Genre","to_fields":[],"name":"GenreToTrack","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"CreateField","model":"Track","name":"isPlayable","type":{"Base":"Boolean"},"arity":"required","dbName":"is_playable","isUnique":false},{"stepType":"CreateField","model":"Track","name":"previewUrl","type":{"Base":"String"},"arity":"required","dbName":"preview_url","isUnique":false},{"stepType":"CreateField","model":"Track","name":"trackNumber","type":{"Base":"Int"},"arity":"required","dbName":"track_number","isUnique":false},{"stepType":"CreateField","model":"User","name":"displayName","type":{"Base":"String"},"arity":"required","dbName":"display_name","isUnique":false},{"stepType":"CreateField","model":"User","name":"image","type":{"Relation":{"to":"Image","to_fields":[],"name":"ImageToUser","on_delete":"None"}},"arity":"list","isUnique":false},{"stepType":"DeleteField","model":"Artist","name":"followers"},{"stepType":"DeleteField","model":"Artist","name":"genres"},{"stepType":"DeleteField","model":"Artist","name":"images"},{"stepType":"DeleteField","model":"Album","name":"album_type"},{"stepType":"DeleteField","model":"Album","name":"artists"},{"stepType":"DeleteField","model":"Album","name":"available_markets"},{"stepType":"DeleteField","model":"Album","name":"genres"},{"stepType":"DeleteField","model":"Album","name":"release_date"},{"stepType":"DeleteField","model":"Album","name":"tracks"},{"stepType":"DeleteField","model":"Playlist","name":"images"},{"stepType":"DeleteField","model":"Playlist","name":"tracks"},{"stepType":"DeleteField","model":"Track","name":"artists"},{"stepType":"DeleteField","model":"Track","name":"available_markets"},{"stepType":"DeleteField","model":"Track","name":"disc_number"},{"stepType":"DeleteField","model":"Track","name":"duration_ms"},{"stepType":"DeleteField","model":"Track","name":"is_playable"},{"stepType":"DeleteField","model":"Track","name":"preview_url"},{"stepType":"DeleteField","model":"Track","name":"track_number"},{"stepType":"DeleteField","model":"Track","name":"genres"},{"stepType":"DeleteField","model":"User","name":"display_name"},{"stepType":"DeleteField","model":"User","name":"images"},{"stepType":"UpdateField","model":"User","name":"product","type":{"Base":"String"}},{"stepType":"DeleteEnum","name":"Product"}]	{"steps":[{"DropTable":{"name":"Album_available_markets"}},{"DropTable":{"name":"Track_available_markets"}},{"CreateTable":{"name":"Album_availableMarkets","columns":[{"name":"nodeId","tpe":"String","required":true,"foreign_key":{"table":"Album","column":"id"},"default":null},{"name":"position","tpe":"Int","required":true,"foreign_key":null,"default":null},{"name":"value","tpe":"String","required":true,"foreign_key":null,"default":null}],"primary_columns":["nodeId","position"]}},{"CreateTable":{"name":"Track_availableMarkets","columns":[{"name":"nodeId","tpe":"String","required":true,"foreign_key":{"table":"Track","column":"id"},"default":null},{"name":"position","tpe":"Int","required":true,"foreign_key":null,"default":null},{"name":"value","tpe":"String","required":true,"foreign_key":null,"default":null}],"primary_columns":["nodeId","position"]}}],"rollback":[{"DropTable":{"name":"Album_availableMarkets"}},{"DropTable":{"name":"Track_availableMarkets"}},{"CreateTable":{"name":"Album_available_markets","columns":[{"name":"nodeId","tpe":"String","required":true,"foreign_key":{"table":"Album","column":"id"},"default":null},{"name":"position","tpe":"Int","required":true,"foreign_key":null,"default":null},{"name":"value","tpe":"String","required":true,"foreign_key":null,"default":null}],"primary_columns":["nodeId","position"]}},{"CreateTable":{"name":"Track_available_markets","columns":[{"name":"nodeId","tpe":"String","required":true,"foreign_key":{"table":"Track","column":"id"},"default":null},{"name":"position","tpe":"Int","required":true,"foreign_key":null,"default":null},{"name":"value","tpe":"String","required":true,"foreign_key":null,"default":null}],"primary_columns":["nodeId","position"]}}]}	[]	2019-08-03 08:52:50.273	2019-08-03 08:52:50.292
8	watch-20190803110904	model Artist {\n  id    String  @default(cuid()) @id\n  href  String  @unique\n  name  String\n  uri   String  @unique\n  album Album?\n  track Track?\n  genre Genre[]\n  image Image[]\n  user  User[]\n}\n\nmodel Album {\n  id               String   @default(cuid()) @id\n  href             String   @unique\n  name             String\n  uri              String   @unique\n  albumType        String   @map("album_type")\n  artist           Artist[]\n  availableMarkets String[]\n  genre            Genre[]\n  releaseDate      String   @map("release_date")\n  track            Track[]\n}\n\nmodel Playlist {\n  id            String  @default(cuid()) @id\n  collaborative Boolean\n  href          String  @unique\n  name          String\n  public        Boolean\n  uri           String  @unique\n  image         Image[]\n  track         Track[]\n}\n\nmodel Track {\n  id               String    @default(cuid()) @id\n  album            Album?\n  explicit         Boolean\n  href             String\n  popularity       Int\n  uri              String\n  playlist         Playlist?\n  artist           Artist[]\n  availableMarkets String[]\n  discNumber       Int       @map("disc_number")\n  durationMs       Int       @map("duration_ms")\n  genre            Genre[]\n  isPlayable       Boolean   @map("is_playable")\n  previewUrl       String    @map("preview_url")\n  trackNumber      Int       @map("track_number")\n  realName         String\n}\n\nmodel Category {\n  id    String   @default(cuid()) @id\n  href  String   @unique\n  icons String[]\n  name  String\n}\n\nmodel Genre {\n  id     String  @default(cuid()) @id\n  name   String  @unique\n  artist Artist?\n  album  Album?\n  track  Track?\n}\n\nmodel User {\n  id          String  @default(cuid()) @id\n  href        String  @unique\n  product     String\n  uri         String  @unique\n  artist      Artist?\n  displayName String  @map("display_name")\n  image       Image[]\n}\n\nmodel Image {\n  id       String    @default(cuid()) @id\n  artist   Artist?\n  playlist Playlist?\n  user     User?\n  height   Int\n  width    Int\n  url      String    @unique\n}\n\nmodel Migration {\n  revision          Int       @id\n  applied           Int\n  databaseMigration String    @map("database_migration")\n  datamodel         String\n  datamodelSteps    String    @map("datamodel_steps")\n  errors            String\n  finishedAt        DateTime? @map("finished_at")\n  name              String\n  rolledBack        Int       @map("rolled_back")\n  startedAt         DateTime  @map("started_at")\n  status            String\n\n  @@map("_Migration")\n}	MigrationSuccess	0	0	[{"stepType":"CreateField","model":"Track","name":"realName","type":{"Base":"String"},"arity":"required","isUnique":false},{"stepType":"DeleteField","model":"Track","name":"name"}]	{"steps":[{"AlterTable":{"table":"Track","changes":[{"DropColumn":{"name":"name"}},{"AddColumn":{"column":{"name":"realName","tpe":"String","required":true,"foreign_key":null,"default":{"String":""}}}}]}}],"rollback":[{"AlterTable":{"table":"Track","changes":[{"DropColumn":{"name":"realName"}},{"AddColumn":{"column":{"name":"name","tpe":"String","required":true,"foreign_key":null,"default":null}}}]}}]}	[]	2019-08-03 09:09:05.094	2019-08-03 09:09:05.099
\.


--
-- Name: _Migration_revision_seq; Type: SEQUENCE SET; Schema: public; Owner: MYUSERNAME
--

SELECT pg_catalog.setval('public."_Migration_revision_seq"', 8, true);


--
-- Name: Album_availableMarkets Album_availableMarkets_pkey; Type: CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Album_availableMarkets"
    ADD CONSTRAINT "Album_availableMarkets_pkey" PRIMARY KEY ("nodeId", "position");


--
-- Name: Album Album_pkey; Type: CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Album"
    ADD CONSTRAINT "Album_pkey" PRIMARY KEY (id);


--
-- Name: Artist Artist_pkey; Type: CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Artist"
    ADD CONSTRAINT "Artist_pkey" PRIMARY KEY (id);


--
-- Name: Category_icons Category_icons_pkey; Type: CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Category_icons"
    ADD CONSTRAINT "Category_icons_pkey" PRIMARY KEY ("nodeId", "position");


--
-- Name: Category Category_pkey; Type: CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT "Category_pkey" PRIMARY KEY (id);


--
-- Name: Genre Genre_pkey; Type: CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Genre"
    ADD CONSTRAINT "Genre_pkey" PRIMARY KEY (id);


--
-- Name: Image Image_pkey; Type: CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Image"
    ADD CONSTRAINT "Image_pkey" PRIMARY KEY (id);


--
-- Name: Playlist Playlist_pkey; Type: CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Playlist"
    ADD CONSTRAINT "Playlist_pkey" PRIMARY KEY (id);


--
-- Name: Track_availableMarkets Track_availableMarkets_pkey; Type: CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Track_availableMarkets"
    ADD CONSTRAINT "Track_availableMarkets_pkey" PRIMARY KEY ("nodeId", "position");


--
-- Name: Track Track_pkey; Type: CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Track"
    ADD CONSTRAINT "Track_pkey" PRIMARY KEY (id);


--
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- Name: _Migration _Migration_pkey; Type: CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."_Migration"
    ADD CONSTRAINT "_Migration_pkey" PRIMARY KEY (revision);


--
-- Name: Album.href._UNIQUE; Type: INDEX; Schema: public; Owner: MYUSERNAME
--

CREATE UNIQUE INDEX "Album.href._UNIQUE" ON public."Album" USING btree (href);


--
-- Name: Album.uri._UNIQUE; Type: INDEX; Schema: public; Owner: MYUSERNAME
--

CREATE UNIQUE INDEX "Album.uri._UNIQUE" ON public."Album" USING btree (uri);


--
-- Name: Artist.href._UNIQUE; Type: INDEX; Schema: public; Owner: MYUSERNAME
--

CREATE UNIQUE INDEX "Artist.href._UNIQUE" ON public."Artist" USING btree (href);


--
-- Name: Artist.uri._UNIQUE; Type: INDEX; Schema: public; Owner: MYUSERNAME
--

CREATE UNIQUE INDEX "Artist.uri._UNIQUE" ON public."Artist" USING btree (uri);


--
-- Name: Category.href._UNIQUE; Type: INDEX; Schema: public; Owner: MYUSERNAME
--

CREATE UNIQUE INDEX "Category.href._UNIQUE" ON public."Category" USING btree (href);


--
-- Name: Genre.name._UNIQUE; Type: INDEX; Schema: public; Owner: MYUSERNAME
--

CREATE UNIQUE INDEX "Genre.name._UNIQUE" ON public."Genre" USING btree (name);


--
-- Name: Image.url._UNIQUE; Type: INDEX; Schema: public; Owner: MYUSERNAME
--

CREATE UNIQUE INDEX "Image.url._UNIQUE" ON public."Image" USING btree (url);


--
-- Name: Playlist.href._UNIQUE; Type: INDEX; Schema: public; Owner: MYUSERNAME
--

CREATE UNIQUE INDEX "Playlist.href._UNIQUE" ON public."Playlist" USING btree (href);


--
-- Name: Playlist.uri._UNIQUE; Type: INDEX; Schema: public; Owner: MYUSERNAME
--

CREATE UNIQUE INDEX "Playlist.uri._UNIQUE" ON public."Playlist" USING btree (uri);


--
-- Name: User.href._UNIQUE; Type: INDEX; Schema: public; Owner: MYUSERNAME
--

CREATE UNIQUE INDEX "User.href._UNIQUE" ON public."User" USING btree (href);


--
-- Name: User.uri._UNIQUE; Type: INDEX; Schema: public; Owner: MYUSERNAME
--

CREATE UNIQUE INDEX "User.uri._UNIQUE" ON public."User" USING btree (uri);


--
-- Name: Album_availableMarkets Album_availableMarkets_nodeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Album_availableMarkets"
    ADD CONSTRAINT "Album_availableMarkets_nodeId_fkey" FOREIGN KEY ("nodeId") REFERENCES public."Album"(id);


--
-- Name: Artist Artist_album_fkey; Type: FK CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Artist"
    ADD CONSTRAINT "Artist_album_fkey" FOREIGN KEY (album) REFERENCES public."Album"(id);


--
-- Name: Artist Artist_track_fkey; Type: FK CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Artist"
    ADD CONSTRAINT "Artist_track_fkey" FOREIGN KEY (track) REFERENCES public."Track"(id);


--
-- Name: Category_icons Category_icons_nodeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Category_icons"
    ADD CONSTRAINT "Category_icons_nodeId_fkey" FOREIGN KEY ("nodeId") REFERENCES public."Category"(id);


--
-- Name: Genre Genre_album_fkey; Type: FK CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Genre"
    ADD CONSTRAINT "Genre_album_fkey" FOREIGN KEY (album) REFERENCES public."Album"(id);


--
-- Name: Genre Genre_artist_fkey; Type: FK CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Genre"
    ADD CONSTRAINT "Genre_artist_fkey" FOREIGN KEY (artist) REFERENCES public."Artist"(id);


--
-- Name: Genre Genre_track_fkey; Type: FK CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Genre"
    ADD CONSTRAINT "Genre_track_fkey" FOREIGN KEY (track) REFERENCES public."Track"(id);


--
-- Name: Image Image_artist_fkey; Type: FK CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Image"
    ADD CONSTRAINT "Image_artist_fkey" FOREIGN KEY (artist) REFERENCES public."Artist"(id);


--
-- Name: Image Image_playlist_fkey; Type: FK CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Image"
    ADD CONSTRAINT "Image_playlist_fkey" FOREIGN KEY (playlist) REFERENCES public."Playlist"(id);


--
-- Name: Image Image_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Image"
    ADD CONSTRAINT "Image_user_fkey" FOREIGN KEY ("user") REFERENCES public."User"(id);


--
-- Name: Track Track_album_fkey; Type: FK CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Track"
    ADD CONSTRAINT "Track_album_fkey" FOREIGN KEY (album) REFERENCES public."Album"(id);


--
-- Name: Track_availableMarkets Track_availableMarkets_nodeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Track_availableMarkets"
    ADD CONSTRAINT "Track_availableMarkets_nodeId_fkey" FOREIGN KEY ("nodeId") REFERENCES public."Track"(id);


--
-- Name: Track Track_playlist_fkey; Type: FK CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."Track"
    ADD CONSTRAINT "Track_playlist_fkey" FOREIGN KEY (playlist) REFERENCES public."Playlist"(id);


--
-- Name: User User_artist_fkey; Type: FK CONSTRAINT; Schema: public; Owner: MYUSERNAME
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_artist_fkey" FOREIGN KEY (artist) REFERENCES public."Artist"(id);


--
-- PostgreSQL database dump complete
--

