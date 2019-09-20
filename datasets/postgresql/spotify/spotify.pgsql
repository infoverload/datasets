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
-- Name: Album; Type: TABLE; Schema: public;
--

CREATE TABLE public."Album" (
    id text NOT NULL,
    album_type text DEFAULT ''::text NOT NULL,
    href text DEFAULT ''::text NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    release_date text DEFAULT ''::text NOT NULL,
    uri text DEFAULT ''::text NOT NULL
);

--
-- Name: Album_availableMarkets; Type: TABLE; Schema: public;
--

CREATE TABLE public."Album_availableMarkets" (
    "nodeId" text NOT NULL,
    "position" integer NOT NULL,
    value text NOT NULL
);

--
-- Name: Artist; Type: TABLE; Schema: public; 
--

CREATE TABLE public."Artist" (
    id text NOT NULL,
    href text DEFAULT ''::text NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    uri text DEFAULT ''::text NOT NULL,
    album text,
    track text
);

--
-- Name: Category; Type: TABLE; Schema: public; 
--

CREATE TABLE public."Category" (
    id text NOT NULL,
    href text DEFAULT ''::text NOT NULL,
    name text DEFAULT ''::text NOT NULL
);

--
-- Name: Category_icons; Type: TABLE; Schema: public;
--

CREATE TABLE public."Category_icons" (
    "nodeId" text NOT NULL,
    "position" integer NOT NULL,
    value text NOT NULL
);

--
-- Name: Genre; Type: TABLE; Schema: public;
--

CREATE TABLE public."Genre" (
    id text NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    artist text,
    album text,
    track text
);

--
-- Name: Image; Type: TABLE; Schema: public;
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

--
-- Name: Playlist; Type: TABLE; Schema: public;
--

CREATE TABLE public."Playlist" (
    id text NOT NULL,
    collaborative boolean DEFAULT false NOT NULL,
    href text DEFAULT ''::text NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    public boolean DEFAULT false NOT NULL,
    uri text DEFAULT ''::text NOT NULL
);

--
-- Name: Track; Type: TABLE; Schema: public;
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


--
-- Name: Track_availableMarkets; Type: TABLE; Schema: public;
--

CREATE TABLE public."Track_availableMarkets" (
    "nodeId" text NOT NULL,
    "position" integer NOT NULL,
    value text NOT NULL
);


--
-- Name: User; Type: TABLE; Schema: public;
--

CREATE TABLE public."User" (
    id text NOT NULL,
    display_name text DEFAULT ''::text NOT NULL,
    href text DEFAULT ''::text NOT NULL,
    product text DEFAULT 'FREE'::text NOT NULL,
    uri text DEFAULT ''::text NOT NULL,
    artist text
);


--
-- Data for Name: Album; Type: TABLE DATA; Schema: public;
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
-- Data for Name: Album_availableMarkets; Type: TABLE DATA; Schema: public;
--

COPY public."Album_availableMarkets" ("nodeId", "position", value) FROM stdin;
\.


--
-- Data for Name: Artist; Type: TABLE DATA; Schema: public; 
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
-- Data for Name: Category; Type: TABLE DATA; Schema: public;
--

COPY public."Category" (id, href, name) FROM stdin;
\.


--
-- Data for Name: Category_icons; Type: TABLE DATA; Schema: public;
--

COPY public."Category_icons" ("nodeId", "position", value) FROM stdin;
\.


--
-- Data for Name: Genre; Type: TABLE DATA; Schema: public;
--

COPY public."Genre" (id, name, artist, album, track) FROM stdin;
\.


--
-- Data for Name: Image; Type: TABLE DATA; Schema: public;
--

COPY public."Image" (id, artist, playlist, "user", height, width, url) FROM stdin;
cjyv9mj9r00016n0xi4n21cv9	\N	cjyv9mj9m00006n0xueq9yycw	\N	300	300	https://pl.scdn.co/images/pl/default/0953b84f5d75b24cd30ddc1eecb01eaf8355d1a4
\.


--
-- Data for Name: Playlist; Type: TABLE DATA; Schema: public;
--

COPY public."Playlist" (id, collaborative, href, name, public, uri) FROM stdin;
cjyv9mj9m00006n0xueq9yycw	f	https://api.spotify.com/v1/playlists/0ZXVX604hmghJgqWCMsqcU	MKBHD Videos	t	spotify:playlist:0ZXVX604hmghJgqWCMsqcU
\.


--
-- Data for Name: Track; Type: TABLE DATA; Schema: public;
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
-- Data for Name: Track_availableMarkets; Type: TABLE DATA; Schema: public;
--

COPY public."Track_availableMarkets" ("nodeId", "position", value) FROM stdin;
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public;
--

COPY public."User" (id, display_name, href, product, uri, artist) FROM stdin;
\.


--
-- Name: Album_availableMarkets Album_availableMarkets_pkey; Type: CONSTRAINT; Schema: public;
--

ALTER TABLE ONLY public."Album_availableMarkets"
    ADD CONSTRAINT "Album_availableMarkets_pkey" PRIMARY KEY ("nodeId", "position");


--
-- Name: Album Album_pkey; Type: CONSTRAINT; Schema: public;
--

ALTER TABLE ONLY public."Album"
    ADD CONSTRAINT "Album_pkey" PRIMARY KEY (id);


--
-- Name: Artist Artist_pkey; Type: CONSTRAINT; Schema: public;
--

ALTER TABLE ONLY public."Artist"
    ADD CONSTRAINT "Artist_pkey" PRIMARY KEY (id);


--
-- Name: Category_icons Category_icons_pkey; Type: CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Category_icons"
    ADD CONSTRAINT "Category_icons_pkey" PRIMARY KEY ("nodeId", "position");


--
-- Name: Category Category_pkey; Type: CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT "Category_pkey" PRIMARY KEY (id);


--
-- Name: Genre Genre_pkey; Type: CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Genre"
    ADD CONSTRAINT "Genre_pkey" PRIMARY KEY (id);


--
-- Name: Image Image_pkey; Type: CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Image"
    ADD CONSTRAINT "Image_pkey" PRIMARY KEY (id);


--
-- Name: Playlist Playlist_pkey; Type: CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Playlist"
    ADD CONSTRAINT "Playlist_pkey" PRIMARY KEY (id);


--
-- Name: Track_availableMarkets Track_availableMarkets_pkey; Type: CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Track_availableMarkets"
    ADD CONSTRAINT "Track_availableMarkets_pkey" PRIMARY KEY ("nodeId", "position");


--
-- Name: Track Track_pkey; Type: CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Track"
    ADD CONSTRAINT "Track_pkey" PRIMARY KEY (id);


--
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- Name: Album.href._UNIQUE; Type: INDEX; Schema: public; 
--

CREATE UNIQUE INDEX "Album.href._UNIQUE" ON public."Album" USING btree (href);


--
-- Name: Album.uri._UNIQUE; Type: INDEX; Schema: public; 
--

CREATE UNIQUE INDEX "Album.uri._UNIQUE" ON public."Album" USING btree (uri);


--
-- Name: Artist.href._UNIQUE; Type: INDEX; Schema: public; 
--

CREATE UNIQUE INDEX "Artist.href._UNIQUE" ON public."Artist" USING btree (href);


--
-- Name: Artist.uri._UNIQUE; Type: INDEX; Schema: public; 
--

CREATE UNIQUE INDEX "Artist.uri._UNIQUE" ON public."Artist" USING btree (uri);


--
-- Name: Category.href._UNIQUE; Type: INDEX; Schema: public; 
--

CREATE UNIQUE INDEX "Category.href._UNIQUE" ON public."Category" USING btree (href);


--
-- Name: Genre.name._UNIQUE; Type: INDEX; Schema: public; 
--

CREATE UNIQUE INDEX "Genre.name._UNIQUE" ON public."Genre" USING btree (name);


--
-- Name: Image.url._UNIQUE; Type: INDEX; Schema: public; 
--

CREATE UNIQUE INDEX "Image.url._UNIQUE" ON public."Image" USING btree (url);


--
-- Name: Playlist.href._UNIQUE; Type: INDEX; Schema: public; 
--

CREATE UNIQUE INDEX "Playlist.href._UNIQUE" ON public."Playlist" USING btree (href);


--
-- Name: Playlist.uri._UNIQUE; Type: INDEX; Schema: public; 
--

CREATE UNIQUE INDEX "Playlist.uri._UNIQUE" ON public."Playlist" USING btree (uri);


--
-- Name: User.href._UNIQUE; Type: INDEX; Schema: public; 
--

CREATE UNIQUE INDEX "User.href._UNIQUE" ON public."User" USING btree (href);


--
-- Name: User.uri._UNIQUE; Type: INDEX; Schema: public; 
--

CREATE UNIQUE INDEX "User.uri._UNIQUE" ON public."User" USING btree (uri);


--
-- Name: Album_availableMarkets Album_availableMarkets_nodeId_fkey; Type: FK CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Album_availableMarkets"
    ADD CONSTRAINT "Album_availableMarkets_nodeId_fkey" FOREIGN KEY ("nodeId") REFERENCES public."Album"(id);


--
-- Name: Artist Artist_album_fkey; Type: FK CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Artist"
    ADD CONSTRAINT "Artist_album_fkey" FOREIGN KEY (album) REFERENCES public."Album"(id);


--
-- Name: Artist Artist_track_fkey; Type: FK CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Artist"
    ADD CONSTRAINT "Artist_track_fkey" FOREIGN KEY (track) REFERENCES public."Track"(id);


--
-- Name: Category_icons Category_icons_nodeId_fkey; Type: FK CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Category_icons"
    ADD CONSTRAINT "Category_icons_nodeId_fkey" FOREIGN KEY ("nodeId") REFERENCES public."Category"(id);


--
-- Name: Genre Genre_album_fkey; Type: FK CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Genre"
    ADD CONSTRAINT "Genre_album_fkey" FOREIGN KEY (album) REFERENCES public."Album"(id);


--
-- Name: Genre Genre_artist_fkey; Type: FK CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Genre"
    ADD CONSTRAINT "Genre_artist_fkey" FOREIGN KEY (artist) REFERENCES public."Artist"(id);


--
-- Name: Genre Genre_track_fkey; Type: FK CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Genre"
    ADD CONSTRAINT "Genre_track_fkey" FOREIGN KEY (track) REFERENCES public."Track"(id);


--
-- Name: Image Image_artist_fkey; Type: FK CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Image"
    ADD CONSTRAINT "Image_artist_fkey" FOREIGN KEY (artist) REFERENCES public."Artist"(id);


--
-- Name: Image Image_playlist_fkey; Type: FK CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Image"
    ADD CONSTRAINT "Image_playlist_fkey" FOREIGN KEY (playlist) REFERENCES public."Playlist"(id);


--
-- Name: Image Image_user_fkey; Type: FK CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Image"
    ADD CONSTRAINT "Image_user_fkey" FOREIGN KEY ("user") REFERENCES public."User"(id);


--
-- Name: Track Track_album_fkey; Type: FK CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Track"
    ADD CONSTRAINT "Track_album_fkey" FOREIGN KEY (album) REFERENCES public."Album"(id);


--
-- Name: Track_availableMarkets Track_availableMarkets_nodeId_fkey; Type: FK CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Track_availableMarkets"
    ADD CONSTRAINT "Track_availableMarkets_nodeId_fkey" FOREIGN KEY ("nodeId") REFERENCES public."Track"(id);


--
-- Name: Track Track_playlist_fkey; Type: FK CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."Track"
    ADD CONSTRAINT "Track_playlist_fkey" FOREIGN KEY (playlist) REFERENCES public."Playlist"(id);


--
-- Name: User User_artist_fkey; Type: FK CONSTRAINT; Schema: public; 
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_artist_fkey" FOREIGN KEY (artist) REFERENCES public."Artist"(id);


--
-- PostgreSQL database dump complete
--

