﻿--
-- PostgreSQL database dump
--

-- Dumped from database version 11.0
-- Dumped by pg_dump version 11.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: results; Type: TABLE; Schema: public; Owner: irs1318
--

CREATE TABLE public.results (
    "row.names" text,
    match integer,
    description text,
    level text,
    "actualStart" text,
    "postResult" text,
    team text,
    alliance text,
    station text,
    disqualified boolean,
    "scoreFinal" integer,
    "scoreAuto" integer,
    "scoreFoul" integer
);


ALTER TABLE public.results OWNER TO irs1318;

--
-- Name: schedule; Type: TABLE; Schema: public; Owner: irs1318
--

CREATE TABLE public.schedule (
    "row.names" text,
    match integer,
    description text,
    level text,
    field text,
    start text,
    team text,
    alliance text,
    station text,
    surrogate boolean
);


ALTER TABLE public.schedule OWNER TO irs1318;

--
-- Name: scores; Type: TABLE; Schema: public; Owner: irs1318
--

CREATE TABLE public.scores (
    "row.names" text,
    level text,
    match integer,
    "switchLeftNearColor" text,
    "switchRightNearColor" text,
    "scaleNearColor" text,
    alliance text,
    "autoRobot1" text,
    "autoRobot2" text,
    "autoRobot3" text,
    "autoSwitchOwnershipSec" integer,
    "autoScaleOwnershipSec" integer,
    "autoSwitchAtZero" boolean,
    "autoRunPoints" integer,
    "autoOwnershipPoints" integer,
    "autoPoints" integer,
    "teleopSwitchOwnershipSec" integer,
    "teleopScaleOwnershipSec" integer,
    "teleopSwitchBoostSec" integer,
    "teleopScaleBoostSec" integer,
    "teleopSwitchForceSec" integer,
    "teleopScaleForceSec" integer,
    "vaultForceTotal" integer,
    "vaultForcePlayed" integer,
    "vaultLevitateTotal" integer,
    "vaultLevitatePlayed" integer,
    "vaultBoostTotal" integer,
    "vaultBoostPlayed" integer,
    "endgameRobot1" text,
    "endgameRobot2" text,
    "endgameRobot3" text,
    "teleopPoints" integer,
    "teleopOwnershipPoints" integer,
    "vaultPoints" integer,
    "endgamePoints" integer,
    "autoQuestRankingPoint" boolean,
    "faceTheBossRankingPoint" boolean,
    "foulCount" integer,
    "techFoulCount" integer,
    "adjustPoints" integer,
    "foulPoints" integer,
    rp integer,
    "totalPoints" integer
);


ALTER TABLE public.scores OWNER TO irs1318;

--
-- Name: teams; Type: TABLE; Schema: public; Owner: irs1318
--

CREATE TABLE public.teams (
    "row.names" text,
    team integer,
    "nameFull" text,
    "nameShort" text,
    "schoolName" text,
    city text,
    "stateProv" text,
    country text,
    website text,
    "rookieYear" integer,
    "robotName" text,
    "districtCode" text,
    "homeCMP" text,
    "teamCountTotal" integer,
    "teamCountPage" integer,
    "pageCurrent" integer,
    "pageTotal" integer
);


ALTER TABLE public.teams OWNER TO irs1318;

--
-- Data for Name: results; Type: TABLE DATA; Schema: public; Owner: irs1318
--

COPY public.results ("row.names", match, description, level, "actualStart", "postResult", team, alliance, station, disqualified, "scoreFinal", "scoreAuto", "scoreFoul") FROM stdin;
q.1.blue1	1	Qualification 1	Qualification	2018-04-05T14:05:35.4933333	2018-04-05T14:08:26.5966667	6845	Blue	Blue1	f	229	33	0
q.1.blue2	1	Qualification 1	Qualification	2018-04-05T14:05:35.4933333	2018-04-05T14:08:26.5966667	4488	Blue	Blue2	f	229	33	0
q.1.blue3	1	Qualification 1	Qualification	2018-04-05T14:05:35.4933333	2018-04-05T14:08:26.5966667	6445	Blue	Blue3	f	229	33	0
q.1.red1	1	Qualification 1	Qualification	2018-04-05T14:05:35.4933333	2018-04-05T14:08:26.5966667	2471	Red	Red1	f	406	49	0
q.1.red2	1	Qualification 1	Qualification	2018-04-05T14:05:35.4933333	2018-04-05T14:08:26.5966667	2521	Red	Red2	f	406	49	0
q.1.red3	1	Qualification 1	Qualification	2018-04-05T14:05:35.4933333	2018-04-05T14:08:26.5966667	3674	Red	Red3	f	406	49	0
q.2.blue1	2	Qualification 2	Qualification	2018-04-05T14:12:41.8966667	2018-04-05T14:15:35.8633333	2976	Blue	Blue1	f	239	10	25
q.2.blue2	2	Qualification 2	Qualification	2018-04-05T14:12:41.8966667	2018-04-05T14:15:35.8633333	4911	Blue	Blue2	f	239	10	25
q.2.blue3	2	Qualification 2	Qualification	2018-04-05T14:12:41.8966667	2018-04-05T14:15:35.8633333	3826	Blue	Blue3	f	239	10	25
q.2.red1	2	Qualification 2	Qualification	2018-04-05T14:12:41.8966667	2018-04-05T14:15:35.8633333	2930	Red	Red1	f	280	37	30
q.2.red2	2	Qualification 2	Qualification	2018-04-05T14:12:41.8966667	2018-04-05T14:15:35.8633333	1510	Red	Red2	f	280	37	30
q.2.red3	2	Qualification 2	Qualification	2018-04-05T14:12:41.8966667	2018-04-05T14:15:35.8633333	3663	Red	Red3	f	280	37	30
q.3.blue1	3	Qualification 3	Qualification	2018-04-05T14:19:49.1	2018-04-05T14:22:40.0833333	2990	Blue	Blue1	f	447	41	25
q.3.blue2	3	Qualification 3	Qualification	2018-04-05T14:19:49.1	2018-04-05T14:22:40.0833333	5450	Blue	Blue2	f	447	41	25
q.3.blue3	3	Qualification 3	Qualification	2018-04-05T14:19:49.1	2018-04-05T14:22:40.0833333	3218	Blue	Blue3	f	447	41	25
q.3.red1	3	Qualification 3	Qualification	2018-04-05T14:19:49.1	2018-04-05T14:22:40.0833333	4125	Red	Red1	f	210	37	0
q.3.red2	3	Qualification 3	Qualification	2018-04-05T14:19:49.1	2018-04-05T14:22:40.0833333	3238	Red	Red2	f	210	37	0
q.3.red3	3	Qualification 3	Qualification	2018-04-05T14:19:49.1	2018-04-05T14:22:40.0833333	7034	Red	Red3	f	210	37	0
q.4.blue1	4	Qualification 4	Qualification	2018-04-05T14:27:08.4333333	2018-04-05T14:30:18.05	847	Blue	Blue1	f	355	35	25
q.4.blue2	4	Qualification 4	Qualification	2018-04-05T14:27:08.4333333	2018-04-05T14:30:18.05	1425	Blue	Blue2	f	355	35	25
q.4.blue3	4	Qualification 4	Qualification	2018-04-05T14:27:08.4333333	2018-04-05T14:30:18.05	2557	Blue	Blue3	f	355	35	25
q.4.red1	4	Qualification 4	Qualification	2018-04-05T14:27:08.4333333	2018-04-05T14:30:18.05	1540	Red	Red1	f	337	39	75
q.4.red2	4	Qualification 4	Qualification	2018-04-05T14:27:08.4333333	2018-04-05T14:30:18.05	997	Red	Red2	f	337	39	75
q.4.red3	4	Qualification 4	Qualification	2018-04-05T14:27:08.4333333	2018-04-05T14:30:18.05	4513	Red	Red3	f	337	39	75
q.5.blue1	5	Qualification 5	Qualification	2018-04-05T14:34:11.2233333	2018-04-05T14:37:01.57	6465	Blue	Blue1	f	275	12	0
q.5.blue2	5	Qualification 5	Qualification	2018-04-05T14:34:11.2233333	2018-04-05T14:37:01.57	1595	Blue	Blue2	f	275	12	0
q.5.blue3	5	Qualification 5	Qualification	2018-04-05T14:34:11.2233333	2018-04-05T14:37:01.57	4450	Blue	Blue3	f	275	12	0
q.5.red1	5	Qualification 5	Qualification	2018-04-05T14:34:11.2233333	2018-04-05T14:37:01.57	4980	Red	Red1	f	167	31	0
q.5.red2	5	Qualification 5	Qualification	2018-04-05T14:34:11.2233333	2018-04-05T14:37:01.57	957	Red	Red2	f	167	31	0
q.5.red3	5	Qualification 5	Qualification	2018-04-05T14:34:11.2233333	2018-04-05T14:37:01.57	2944	Red	Red3	f	167	31	0
q.6.blue1	6	Qualification 6	Qualification	2018-04-05T14:44:53.2133333	2018-04-05T14:47:43.4166667	4061	Blue	Blue1	f	420	43	0
q.6.blue2	6	Qualification 6	Qualification	2018-04-05T14:44:53.2133333	2018-04-05T14:47:43.4166667	4662	Blue	Blue2	f	420	43	0
q.6.blue3	6	Qualification 6	Qualification	2018-04-05T14:44:53.2133333	2018-04-05T14:47:43.4166667	2910	Blue	Blue3	f	420	43	0
q.6.red1	6	Qualification 6	Qualification	2018-04-05T14:44:53.2133333	2018-04-05T14:47:43.4166667	5803	Red	Red1	f	191	35	0
q.6.red2	6	Qualification 6	Qualification	2018-04-05T14:44:53.2133333	2018-04-05T14:47:43.4166667	2928	Red	Red2	f	191	35	0
q.6.red3	6	Qualification 6	Qualification	2018-04-05T14:44:53.2133333	2018-04-05T14:47:43.4166667	6443	Red	Red3	f	191	35	0
q.7.blue1	7	Qualification 7	Qualification	2018-04-05T14:51:27.23	2018-04-05T14:54:16.5	948	Blue	Blue1	f	432	47	0
q.7.blue2	7	Qualification 7	Qualification	2018-04-05T14:51:27.23	2018-04-05T14:54:16.5	4512	Blue	Blue2	f	432	47	0
q.7.blue3	7	Qualification 7	Qualification	2018-04-05T14:51:27.23	2018-04-05T14:54:16.5	360	Blue	Blue3	f	432	47	0
q.7.red1	7	Qualification 7	Qualification	2018-04-05T14:51:27.23	2018-04-05T14:54:16.5	3024	Red	Red1	f	277	33	0
q.7.red2	7	Qualification 7	Qualification	2018-04-05T14:51:27.23	2018-04-05T14:54:16.5	6831	Red	Red2	f	277	33	0
q.7.red3	7	Qualification 7	Qualification	2018-04-05T14:51:27.23	2018-04-05T14:54:16.5	3711	Red	Red3	f	277	33	0
q.8.blue1	8	Qualification 8	Qualification	2018-04-05T14:57:58.0266667	2018-04-05T15:00:59.67	2147	Blue	Blue1	f	204	15	0
q.8.blue2	8	Qualification 8	Qualification	2018-04-05T14:57:58.0266667	2018-04-05T15:00:59.67	5468	Blue	Blue2	f	204	15	0
q.8.blue3	8	Qualification 8	Qualification	2018-04-05T14:57:58.0266667	2018-04-05T15:00:59.67	2906	Blue	Blue3	f	204	15	0
q.8.red1	8	Qualification 8	Qualification	2018-04-05T14:57:58.0266667	2018-04-05T15:00:59.67	6076	Red	Red1	f	321	33	30
q.8.red2	8	Qualification 8	Qualification	2018-04-05T14:57:58.0266667	2018-04-05T15:00:59.67	1318	Red	Red2	f	321	33	30
q.8.red3	8	Qualification 8	Qualification	2018-04-05T14:57:58.0266667	2018-04-05T15:00:59.67	2733	Red	Red3	f	321	33	30
q.9.blue1	9	Qualification 9	Qualification	2018-04-05T15:06:10.8733333	2018-04-05T15:09:15.1333333	4469	Blue	Blue1	f	248	22	50
q.9.blue2	9	Qualification 9	Qualification	2018-04-05T15:06:10.8733333	2018-04-05T15:09:15.1333333	488	Blue	Blue2	f	248	22	50
q.9.blue3	9	Qualification 9	Qualification	2018-04-05T15:06:10.8733333	2018-04-05T15:09:15.1333333	492	Blue	Blue3	f	248	22	50
q.9.red1	9	Qualification 9	Qualification	2018-04-05T15:06:10.8733333	2018-04-05T15:09:15.1333333	4131	Red	Red1	f	391	21	10
q.9.red2	9	Qualification 9	Qualification	2018-04-05T15:06:10.8733333	2018-04-05T15:09:15.1333333	1983	Red	Red2	f	391	21	10
q.9.red3	9	Qualification 9	Qualification	2018-04-05T15:06:10.8733333	2018-04-05T15:09:15.1333333	2605	Red	Red3	f	391	21	10
q.10.blue1	10	Qualification 10	Qualification	2018-04-05T15:13:18.67	2018-04-05T15:16:17.2933333	2046	Blue	Blue1	f	499	57	50
q.10.blue2	10	Qualification 10	Qualification	2018-04-05T15:13:18.67	2018-04-05T15:16:17.2933333	2522	Blue	Blue2	f	499	57	50
q.10.blue3	10	Qualification 10	Qualification	2018-04-05T15:13:18.67	2018-04-05T15:16:17.2933333	2374	Blue	Blue3	f	499	57	50
q.10.red1	10	Qualification 10	Qualification	2018-04-05T15:13:18.67	2018-04-05T15:16:17.2933333	2635	Red	Red1	f	299	37	5
q.10.red2	10	Qualification 10	Qualification	2018-04-05T15:13:18.67	2018-04-05T15:16:17.2933333	4915	Red	Red2	f	299	37	5
q.10.red3	10	Qualification 10	Qualification	2018-04-05T15:13:18.67	2018-04-05T15:16:17.2933333	5920	Red	Red3	f	299	37	5
q.11.blue1	11	Qualification 11	Qualification	2018-04-05T15:21:31.9466667	2018-04-05T15:24:29.3566667	1359	Blue	Blue1	f	170	21	30
q.11.blue2	11	Qualification 11	Qualification	2018-04-05T15:21:31.9466667	2018-04-05T15:24:29.3566667	2811	Blue	Blue2	f	170	21	30
q.11.blue3	11	Qualification 11	Qualification	2018-04-05T15:21:31.9466667	2018-04-05T15:24:29.3566667	6443	Blue	Blue3	f	170	21	30
q.11.red1	11	Qualification 11	Qualification	2018-04-05T15:21:31.9466667	2018-04-05T15:24:29.3566667	4513	Red	Red1	f	307	33	25
q.11.red2	11	Qualification 11	Qualification	2018-04-05T15:21:31.9466667	2018-04-05T15:24:29.3566667	1778	Red	Red2	f	307	33	25
q.11.red3	11	Qualification 11	Qualification	2018-04-05T15:21:31.9466667	2018-04-05T15:24:29.3566667	3223	Red	Red3	f	307	33	25
q.12.blue1	12	Qualification 12	Qualification	2018-04-05T15:28:33.55	2018-04-05T15:32:12.1733333	2930	Blue	Blue1	f	338	26	30
q.12.blue2	12	Qualification 12	Qualification	2018-04-05T15:28:33.55	2018-04-05T15:32:12.1733333	7034	Blue	Blue2	f	338	26	30
q.12.blue3	12	Qualification 12	Qualification	2018-04-05T15:28:33.55	2018-04-05T15:32:12.1733333	6831	Blue	Blue3	f	338	26	30
q.12.red1	12	Qualification 12	Qualification	2018-04-05T15:28:33.55	2018-04-05T15:32:12.1733333	2557	Red	Red1	f	414	39	25
q.12.red2	12	Qualification 12	Qualification	2018-04-05T15:28:33.55	2018-04-05T15:32:12.1733333	3663	Red	Red2	f	414	39	25
q.12.red3	12	Qualification 12	Qualification	2018-04-05T15:28:33.55	2018-04-05T15:32:12.1733333	3711	Red	Red3	f	414	39	25
q.13.blue1	13	Qualification 13	Qualification	2018-04-05T15:35:29.1133333	2018-04-05T15:38:26.0533333	1425	Blue	Blue1	f	406	30	0
q.13.blue2	13	Qualification 13	Qualification	2018-04-05T15:35:29.1133333	2018-04-05T15:38:26.0533333	1510	Blue	Blue2	f	406	30	0
q.13.blue3	13	Qualification 13	Qualification	2018-04-05T15:35:29.1133333	2018-04-05T15:38:26.0533333	5450	Blue	Blue3	f	406	30	0
q.13.red1	13	Qualification 13	Qualification	2018-04-05T15:35:29.1133333	2018-04-05T15:38:26.0533333	360	Red	Red1	f	274	35	0
q.13.red2	13	Qualification 13	Qualification	2018-04-05T15:35:29.1133333	2018-04-05T15:38:26.0533333	4662	Red	Red2	f	274	35	0
q.13.red3	13	Qualification 13	Qualification	2018-04-05T15:35:29.1133333	2018-04-05T15:38:26.0533333	6445	Red	Red3	f	274	35	0
q.14.blue1	14	Qualification 14	Qualification	2018-04-05T15:41:35.2466667	2018-04-05T15:44:34.2366667	4469	Blue	Blue1	f	389	31	25
q.14.blue2	14	Qualification 14	Qualification	2018-04-05T15:41:35.2466667	2018-04-05T15:44:34.2366667	2147	Blue	Blue2	f	389	31	25
q.14.blue3	14	Qualification 14	Qualification	2018-04-05T15:41:35.2466667	2018-04-05T15:44:34.2366667	847	Blue	Blue3	f	389	31	25
q.14.red1	14	Qualification 14	Qualification	2018-04-05T15:41:35.2466667	2018-04-05T15:44:34.2366667	2976	Red	Red1	f	266	35	0
q.14.red2	14	Qualification 14	Qualification	2018-04-05T15:41:35.2466667	2018-04-05T15:44:34.2366667	1595	Red	Red2	f	266	35	0
q.14.red3	14	Qualification 14	Qualification	2018-04-05T15:41:35.2466667	2018-04-05T15:44:34.2366667	3024	Red	Red3	f	266	35	0
q.15.blue1	15	Qualification 15	Qualification	2018-04-05T15:48:52.51	2018-04-05T15:51:46.8333333	5803	Blue	Blue1	f	337	35	0
q.15.blue2	15	Qualification 15	Qualification	2018-04-05T15:48:52.51	2018-04-05T15:51:46.8333333	6845	Blue	Blue2	f	337	35	0
q.15.blue3	15	Qualification 15	Qualification	2018-04-05T15:48:52.51	2018-04-05T15:51:46.8333333	3826	Blue	Blue3	f	337	35	0
q.15.red1	15	Qualification 15	Qualification	2018-04-05T15:48:52.51	2018-04-05T15:51:46.8333333	4450	Red	Red1	f	463	53	60
q.15.red2	15	Qualification 15	Qualification	2018-04-05T15:48:52.51	2018-04-05T15:51:46.8333333	2990	Red	Red2	f	463	53	60
q.15.red3	15	Qualification 15	Qualification	2018-04-05T15:48:52.51	2018-04-05T15:51:46.8333333	948	Red	Red3	f	463	53	60
q.16.blue1	16	Qualification 16	Qualification	2018-04-05T15:55:01.4466667	2018-04-05T15:57:58.0633333	3218	Blue	Blue1	f	418	35	0
q.16.blue2	16	Qualification 16	Qualification	2018-04-05T15:55:01.4466667	2018-04-05T15:57:58.0633333	3223	Blue	Blue2	f	418	35	0
q.16.blue3	16	Qualification 16	Qualification	2018-04-05T15:55:01.4466667	2018-04-05T15:57:58.0633333	2811	Blue	Blue3	f	418	35	0
q.16.red1	16	Qualification 16	Qualification	2018-04-05T15:55:01.4466667	2018-04-05T15:57:58.0633333	2944	Red	Red1	f	220	10	0
q.16.red2	16	Qualification 16	Qualification	2018-04-05T15:55:01.4466667	2018-04-05T15:57:58.0633333	2906	Red	Red2	f	220	10	0
q.16.red3	16	Qualification 16	Qualification	2018-04-05T15:55:01.4466667	2018-04-05T15:57:58.0633333	4131	Red	Red3	f	220	10	0
q.17.blue1	17	Qualification 17	Qualification	2018-04-05T16:01:43.9166667	2018-04-05T16:04:41.87	4512	Blue	Blue1	f	232	12	25
q.17.blue2	17	Qualification 17	Qualification	2018-04-05T16:01:43.9166667	2018-04-05T16:04:41.87	2471	Blue	Blue2	f	232	12	25
q.17.blue3	17	Qualification 17	Qualification	2018-04-05T16:01:43.9166667	2018-04-05T16:04:41.87	2605	Blue	Blue3	f	232	12	25
q.17.red1	17	Qualification 17	Qualification	2018-04-05T16:01:43.9166667	2018-04-05T16:04:41.87	2635	Red	Red1	f	279	30	50
q.17.red2	17	Qualification 17	Qualification	2018-04-05T16:01:43.9166667	2018-04-05T16:04:41.87	4061	Red	Red2	f	279	30	50
q.17.red3	17	Qualification 17	Qualification	2018-04-05T16:01:43.9166667	2018-04-05T16:04:41.87	2733	Red	Red3	f	279	30	50
q.18.blue1	18	Qualification 18	Qualification	2018-04-05T16:08:34.6866667	2018-04-05T16:11:24.3066667	4125	Blue	Blue1	f	181	24	0
q.18.blue2	18	Qualification 18	Qualification	2018-04-05T16:08:34.6866667	2018-04-05T16:11:24.3066667	2374	Blue	Blue2	f	181	24	0
q.18.blue3	18	Qualification 18	Qualification	2018-04-05T16:08:34.6866667	2018-04-05T16:11:24.3066667	3674	Blue	Blue3	f	181	24	0
q.18.red1	18	Qualification 18	Qualification	2018-04-05T16:08:34.6866667	2018-04-05T16:11:24.3066667	2928	Red	Red1	f	438	49	25
q.18.red2	18	Qualification 18	Qualification	2018-04-05T16:08:34.6866667	2018-04-05T16:11:24.3066667	5468	Red	Red2	f	438	49	25
q.18.red3	18	Qualification 18	Qualification	2018-04-05T16:08:34.6866667	2018-04-05T16:11:24.3066667	1318	Red	Red3	f	438	49	25
q.19.blue1	19	Qualification 19	Qualification	2018-04-05T16:15:44.41	2018-04-05T16:18:38.1766667	957	Blue	Blue1	f	334	33	5
q.19.blue2	19	Qualification 19	Qualification	2018-04-05T16:15:44.41	2018-04-05T16:18:38.1766667	4911	Blue	Blue2	f	334	33	5
q.19.blue3	19	Qualification 19	Qualification	2018-04-05T16:15:44.41	2018-04-05T16:18:38.1766667	1778	Blue	Blue3	f	334	33	5
q.19.red1	19	Qualification 19	Qualification	2018-04-05T16:15:44.41	2018-04-05T16:18:38.1766667	4915	Red	Red1	f	209	23	30
q.19.red2	19	Qualification 19	Qualification	2018-04-05T16:15:44.41	2018-04-05T16:18:38.1766667	4980	Red	Red2	f	209	23	30
q.19.red3	19	Qualification 19	Qualification	2018-04-05T16:15:44.41	2018-04-05T16:18:38.1766667	1983	Red	Red3	f	209	23	30
q.20.blue1	20	Qualification 20	Qualification	2018-04-05T16:22:15.7933333	2018-04-05T16:25:09.6	6465	Blue	Blue1	f	289	37	25
q.20.blue2	20	Qualification 20	Qualification	2018-04-05T16:22:15.7933333	2018-04-05T16:25:09.6	1540	Blue	Blue2	f	289	37	25
q.20.blue3	20	Qualification 20	Qualification	2018-04-05T16:22:15.7933333	2018-04-05T16:25:09.6	492	Blue	Blue3	f	289	37	25
q.20.red1	20	Qualification 20	Qualification	2018-04-05T16:22:15.7933333	2018-04-05T16:25:09.6	5920	Red	Red1	f	366	47	0
q.20.red2	20	Qualification 20	Qualification	2018-04-05T16:22:15.7933333	2018-04-05T16:25:09.6	4488	Red	Red2	f	366	47	0
q.20.red3	20	Qualification 20	Qualification	2018-04-05T16:22:15.7933333	2018-04-05T16:25:09.6	488	Red	Red3	f	366	47	0
q.21.blue1	21	Qualification 21	Qualification	2018-04-05T16:29:31.23	2018-04-05T16:32:27.85	6076	Blue	Blue1	f	355	35	50
q.21.blue2	21	Qualification 21	Qualification	2018-04-05T16:29:31.23	2018-04-05T16:32:27.85	2046	Blue	Blue2	f	355	35	50
q.21.blue3	21	Qualification 21	Qualification	2018-04-05T16:29:31.23	2018-04-05T16:32:27.85	3238	Blue	Blue3	f	355	35	50
q.21.red1	21	Qualification 21	Qualification	2018-04-05T16:29:31.23	2018-04-05T16:32:27.85	2910	Red	Red1	f	377	15	0
q.21.red2	21	Qualification 21	Qualification	2018-04-05T16:29:31.23	2018-04-05T16:32:27.85	2521	Red	Red2	f	377	15	0
q.21.red3	21	Qualification 21	Qualification	2018-04-05T16:29:31.23	2018-04-05T16:32:27.85	997	Red	Red3	f	377	15	0
q.22.blue1	22	Qualification 22	Qualification	2018-04-05T16:36:12.51	2018-04-05T16:39:03.43	4131	Blue	Blue1	f	252	15	0
q.22.blue2	22	Qualification 22	Qualification	2018-04-05T16:36:12.51	2018-04-05T16:39:03.43	1359	Blue	Blue2	f	252	15	0
q.22.blue3	22	Qualification 22	Qualification	2018-04-05T16:36:12.51	2018-04-05T16:39:03.43	2147	Blue	Blue3	f	252	15	0
q.22.red1	22	Qualification 22	Qualification	2018-04-05T16:36:12.51	2018-04-05T16:39:03.43	2522	Red	Red1	f	405	35	30
q.22.red2	22	Qualification 22	Qualification	2018-04-05T16:36:12.51	2018-04-05T16:39:03.43	1425	Red	Red2	f	405	35	30
q.22.red3	22	Qualification 22	Qualification	2018-04-05T16:36:12.51	2018-04-05T16:39:03.43	6831	Red	Red3	f	405	35	30
q.23.blue1	23	Qualification 23	Qualification	2018-04-05T16:42:36.3333333	2018-04-05T16:45:27.56	3223	Blue	Blue1	f	316	29	30
q.23.blue2	23	Qualification 23	Qualification	2018-04-05T16:42:36.3333333	2018-04-05T16:45:27.56	2635	Blue	Blue2	f	316	29	30
q.23.blue3	23	Qualification 23	Qualification	2018-04-05T16:42:36.3333333	2018-04-05T16:45:27.56	4469	Blue	Blue3	f	316	29	30
q.23.red1	23	Qualification 23	Qualification	2018-04-05T16:42:36.3333333	2018-04-05T16:45:27.56	5450	Red	Red1	f	297	18	25
q.23.red2	23	Qualification 23	Qualification	2018-04-05T16:42:36.3333333	2018-04-05T16:45:27.56	6445	Red	Red2	f	297	18	25
q.23.red3	23	Qualification 23	Qualification	2018-04-05T16:42:36.3333333	2018-04-05T16:45:27.56	4450	Red	Red3	f	297	18	25
q.24.blue1	24	Qualification 24	Qualification	2018-04-05T16:49:20.37	2018-04-05T16:53:42.5333333	7034	Blue	Blue1	f	443	33	25
q.24.blue2	24	Qualification 24	Qualification	2018-04-05T16:49:20.37	2018-04-05T16:53:42.5333333	360	Blue	Blue2	f	443	33	25
q.24.blue3	24	Qualification 24	Qualification	2018-04-05T16:49:20.37	2018-04-05T16:53:42.5333333	2976	Blue	Blue3	f	443	33	25
q.24.red1	24	Qualification 24	Qualification	2018-04-05T16:49:20.37	2018-04-05T16:53:42.5333333	2811	Red	Red1	f	148	15	15
q.24.red2	24	Qualification 24	Qualification	2018-04-05T16:49:20.37	2018-04-05T16:53:42.5333333	2906	Red	Red2	f	148	15	15
q.24.red3	24	Qualification 24	Qualification	2018-04-05T16:49:20.37	2018-04-05T16:53:42.5333333	4125	Red	Red3	f	148	15	15
q.25.blue1	25	Qualification 25	Qualification	2018-04-05T16:56:41.42	2018-04-05T17:00:27.2066667	3663	Blue	Blue1	f	249	37	0
q.25.blue2	25	Qualification 25	Qualification	2018-04-05T16:56:41.42	2018-04-05T17:00:27.2066667	2944	Blue	Blue2	f	249	37	0
q.25.blue3	25	Qualification 25	Qualification	2018-04-05T16:56:41.42	2018-04-05T17:00:27.2066667	5920	Blue	Blue3	f	249	37	0
q.25.red1	25	Qualification 25	Qualification	2018-04-05T16:56:41.42	2018-04-05T17:00:27.2066667	2733	Red	Red1	f	362	27	5
q.25.red2	25	Qualification 25	Qualification	2018-04-05T16:56:41.42	2018-04-05T17:00:27.2066667	3711	Red	Red2	f	362	27	5
q.25.red3	25	Qualification 25	Qualification	2018-04-05T16:56:41.42	2018-04-05T17:00:27.2066667	6845	Red	Red3	f	362	27	5
q.26.blue1	26	Qualification 26	Qualification	2018-04-05T17:04:19.15	2018-04-05T17:07:09.26	3238	Blue	Blue1	f	356	45	15
q.26.blue2	26	Qualification 26	Qualification	2018-04-05T17:04:19.15	2018-04-05T17:07:09.26	957	Blue	Blue2	f	356	45	15
q.26.blue3	26	Qualification 26	Qualification	2018-04-05T17:04:19.15	2018-04-05T17:07:09.26	2910	Blue	Blue3	f	356	45	15
q.26.red1	26	Qualification 26	Qualification	2018-04-05T17:04:19.15	2018-04-05T17:07:09.26	1540	Red	Red1	f	279	45	0
q.26.red2	26	Qualification 26	Qualification	2018-04-05T17:04:19.15	2018-04-05T17:07:09.26	2374	Red	Red2	f	279	45	0
q.26.red3	26	Qualification 26	Qualification	2018-04-05T17:04:19.15	2018-04-05T17:07:09.26	2471	Red	Red3	f	279	45	0
q.27.blue1	27	Qualification 27	Qualification	2018-04-05T17:11:05.7366667	2018-04-05T17:14:10.17	2990	Blue	Blue1	f	149	39	25
q.27.blue2	27	Qualification 27	Qualification	2018-04-05T17:11:05.7366667	2018-04-05T17:14:10.17	6443	Blue	Blue2	f	149	39	25
q.27.blue3	27	Qualification 27	Qualification	2018-04-05T17:11:05.7366667	2018-04-05T17:14:10.17	4915	Blue	Blue3	f	149	39	25
q.27.red1	27	Qualification 27	Qualification	2018-04-05T17:11:05.7366667	2018-04-05T17:14:10.17	1983	Red	Red1	f	430	28	30
q.27.red2	27	Qualification 27	Qualification	2018-04-05T17:11:05.7366667	2018-04-05T17:14:10.17	1595	Red	Red2	f	430	28	30
q.27.red3	27	Qualification 27	Qualification	2018-04-05T17:11:05.7366667	2018-04-05T17:14:10.17	1318	Red	Red3	f	430	28	30
q.28.blue1	28	Qualification 28	Qualification	2018-04-05T17:17:25.3133333	2018-04-05T17:20:29.72	2928	Blue	Blue1	f	287	35	60
q.28.blue2	28	Qualification 28	Qualification	2018-04-05T17:17:25.3133333	2018-04-05T17:20:29.72	6076	Blue	Blue2	f	287	35	60
q.28.blue3	28	Qualification 28	Qualification	2018-04-05T17:17:25.3133333	2018-04-05T17:20:29.72	2930	Blue	Blue3	f	287	35	60
q.28.red1	28	Qualification 28	Qualification	2018-04-05T17:17:25.3133333	2018-04-05T17:20:29.72	3024	Red	Red1	f	441	53	0
q.28.red2	28	Qualification 28	Qualification	2018-04-05T17:17:25.3133333	2018-04-05T17:20:29.72	4488	Red	Red2	f	441	53	0
q.28.red3	28	Qualification 28	Qualification	2018-04-05T17:17:25.3133333	2018-04-05T17:20:29.72	2046	Red	Red3	f	441	53	0
q.29.blue1	29	Qualification 29	Qualification	2018-04-05T17:24:34.2866667	2018-04-05T17:27:33.42	1510	Blue	Blue1	f	307	15	35
q.29.blue2	29	Qualification 29	Qualification	2018-04-05T17:24:34.2866667	2018-04-05T17:27:33.42	3674	Blue	Blue2	f	307	15	35
q.29.blue3	29	Qualification 29	Qualification	2018-04-05T17:24:34.2866667	2018-04-05T17:27:33.42	4061	Blue	Blue3	f	307	15	35
q.29.red1	29	Qualification 29	Qualification	2018-04-05T17:24:34.2866667	2018-04-05T17:27:33.42	948	Red	Red1	f	408	47	25
q.29.red2	29	Qualification 29	Qualification	2018-04-05T17:24:34.2866667	2018-04-05T17:27:33.42	847	Red	Red2	f	408	47	25
q.29.red3	29	Qualification 29	Qualification	2018-04-05T17:24:34.2866667	2018-04-05T17:27:33.42	3218	Red	Red3	f	408	47	25
q.30.blue1	30	Qualification 30	Qualification	2018-04-05T17:31:29.1333333	2018-04-05T17:34:23.6566667	2521	Blue	Blue1	f	284	41	5
q.30.blue2	30	Qualification 30	Qualification	2018-04-05T17:31:29.1333333	2018-04-05T17:34:23.6566667	488	Blue	Blue2	f	284	41	5
q.30.blue3	30	Qualification 30	Qualification	2018-04-05T17:31:29.1333333	2018-04-05T17:34:23.6566667	4512	Blue	Blue3	f	284	41	5
q.30.red1	30	Qualification 30	Qualification	2018-04-05T17:31:29.1333333	2018-04-05T17:34:23.6566667	5803	Red	Red1	f	408	35	0
q.30.red2	30	Qualification 30	Qualification	2018-04-05T17:31:29.1333333	2018-04-05T17:34:23.6566667	4911	Red	Red2	f	408	35	0
q.30.red3	30	Qualification 30	Qualification	2018-04-05T17:31:29.1333333	2018-04-05T17:34:23.6566667	4513	Red	Red3	f	408	35	0
q.31.blue1	31	Qualification 31	Qualification	2018-04-05T17:37:47.99	2018-04-05T17:40:39.96	1778	Blue	Blue1	f	424	27	45
q.31.blue2	31	Qualification 31	Qualification	2018-04-05T17:37:47.99	2018-04-05T17:40:39.96	4980	Blue	Blue2	f	424	27	45
q.31.blue3	31	Qualification 31	Qualification	2018-04-05T17:37:47.99	2018-04-05T17:40:39.96	1359	Blue	Blue3	f	424	27	45
q.31.red1	31	Qualification 31	Qualification	2018-04-05T17:37:47.99	2018-04-05T17:40:39.96	492	Red	Red1	f	43	10	0
q.31.red2	31	Qualification 31	Qualification	2018-04-05T17:37:47.99	2018-04-05T17:40:39.96	997	Red	Red2	f	43	10	0
q.31.red3	31	Qualification 31	Qualification	2018-04-05T17:37:47.99	2018-04-05T17:40:39.96	4662	Red	Red3	f	43	10	0
q.32.blue1	32	Qualification 32	Qualification	2018-04-05T17:44:59.37	2018-04-05T17:48:44.8133333	2522	Blue	Blue1	f	288	35	0
q.32.blue2	32	Qualification 32	Qualification	2018-04-05T17:44:59.37	2018-04-05T17:48:44.8133333	2605	Blue	Blue2	f	288	35	0
q.32.blue3	32	Qualification 32	Qualification	2018-04-05T17:44:59.37	2018-04-05T17:48:44.8133333	2557	Blue	Blue3	f	288	35	0
q.32.red1	32	Qualification 32	Qualification	2018-04-05T17:44:59.37	2018-04-05T17:48:44.8133333	5468	Red	Red1	f	165	31	30
q.32.red2	32	Qualification 32	Qualification	2018-04-05T17:44:59.37	2018-04-05T17:48:44.8133333	6465	Red	Red2	f	165	31	30
q.32.red3	32	Qualification 32	Qualification	2018-04-05T17:44:59.37	2018-04-05T17:48:44.8133333	3826	Red	Red3	f	165	31	30
q.33.blue1	33	Qualification 33	Qualification	2018-04-05T17:52:25.1466667	2018-04-05T17:55:17.8666667	1540	Blue	Blue1	f	366	26	35
q.33.blue2	33	Qualification 33	Qualification	2018-04-05T17:52:25.1466667	2018-04-05T17:55:17.8666667	4915	Blue	Blue2	f	366	26	35
q.33.blue3	33	Qualification 33	Qualification	2018-04-05T17:52:25.1466667	2018-04-05T17:55:17.8666667	2976	Blue	Blue3	f	366	26	35
q.33.red1	33	Qualification 33	Qualification	2018-04-05T17:52:25.1466667	2018-04-05T17:55:17.8666667	7034	Red	Red1	f	351	35	30
q.33.red2	33	Qualification 33	Qualification	2018-04-05T17:52:25.1466667	2018-04-05T17:55:17.8666667	3024	Red	Red2	f	351	35	30
q.33.red3	33	Qualification 33	Qualification	2018-04-05T17:52:25.1466667	2018-04-05T17:55:17.8666667	4131	Red	Red3	f	351	35	30
q.34.blue1	34	Qualification 34	Qualification	2018-04-05T17:58:31.01	2018-04-05T18:01:31.6266667	2733	Blue	Blue1	f	324	39	0
q.34.blue2	34	Qualification 34	Qualification	2018-04-05T17:58:31.01	2018-04-05T18:01:31.6266667	948	Blue	Blue2	f	324	39	0
q.34.blue3	34	Qualification 34	Qualification	2018-04-05T17:58:31.01	2018-04-05T18:01:31.6266667	3674	Blue	Blue3	f	324	39	0
q.34.red1	34	Qualification 34	Qualification	2018-04-05T17:58:31.01	2018-04-05T18:01:31.6266667	1595	Red	Red1	f	371	35	25
q.34.red2	34	Qualification 34	Qualification	2018-04-05T17:58:31.01	2018-04-05T18:01:31.6266667	3238	Red	Red2	f	371	35	25
q.34.red3	34	Qualification 34	Qualification	2018-04-05T17:58:31.01	2018-04-05T18:01:31.6266667	3223	Red	Red3	f	371	35	25
q.35.blue1	35	Qualification 35	Qualification	2018-04-05T18:04:51.3466667	2018-04-05T18:12:39.8733333	2906	Blue	Blue1	f	481	43	130
q.35.blue2	35	Qualification 35	Qualification	2018-04-05T18:04:51.3466667	2018-04-05T18:12:39.8733333	1983	Blue	Blue2	f	481	43	130
q.35.blue3	35	Qualification 35	Qualification	2018-04-05T18:04:51.3466667	2018-04-05T18:12:39.8733333	2930	Blue	Blue3	f	481	43	130
q.35.red1	35	Qualification 35	Qualification	2018-04-05T18:04:51.3466667	2018-04-05T18:12:39.8733333	4512	Red	Red1	f	296	35	35
q.35.red2	35	Qualification 35	Qualification	2018-04-05T18:04:51.3466667	2018-04-05T18:12:39.8733333	2910	Red	Red2	f	296	35	35
q.35.red3	35	Qualification 35	Qualification	2018-04-05T18:04:51.3466667	2018-04-05T18:12:39.8733333	2944	Red	Red3	f	296	35	35
q.36.blue1	36	Qualification 36	Qualification	2018-04-05T18:15:47.9533333	2018-04-05T18:18:42.6333333	2635	Blue	Blue1	f	263	29	0
q.36.blue2	36	Qualification 36	Qualification	2018-04-05T18:15:47.9533333	2018-04-05T18:18:42.6333333	3711	Blue	Blue2	f	263	29	0
q.36.blue3	36	Qualification 36	Qualification	2018-04-05T18:15:47.9533333	2018-04-05T18:18:42.6333333	1359	Blue	Blue3	f	263	29	0
q.36.red1	36	Qualification 36	Qualification	2018-04-05T18:15:47.9533333	2018-04-05T18:18:42.6333333	957	Red	Red1	f	270	41	0
q.36.red2	36	Qualification 36	Qualification	2018-04-05T18:15:47.9533333	2018-04-05T18:18:42.6333333	2990	Red	Red2	f	270	41	0
q.36.red3	36	Qualification 36	Qualification	2018-04-05T18:15:47.9533333	2018-04-05T18:18:42.6333333	2521	Red	Red3	f	270	41	0
q.37.blue1	37	Qualification 37	Qualification	2018-04-05T18:22:53.6566667	2018-04-05T18:26:00.4866667	3218	Blue	Blue1	f	475	43	5
q.37.blue2	37	Qualification 37	Qualification	2018-04-05T18:22:53.6566667	2018-04-05T18:26:00.4866667	2471	Blue	Blue2	f	475	43	5
q.37.blue3	37	Qualification 37	Qualification	2018-04-05T18:22:53.6566667	2018-04-05T18:26:00.4866667	360	Blue	Blue3	f	475	43	5
q.37.red1	37	Qualification 37	Qualification	2018-04-05T18:22:53.6566667	2018-04-05T18:26:00.4866667	3663	Red	Red1	f	247	29	10
q.37.red2	37	Qualification 37	Qualification	2018-04-05T18:22:53.6566667	2018-04-05T18:26:00.4866667	6465	Red	Red2	f	247	29	10
q.37.red3	37	Qualification 37	Qualification	2018-04-05T18:22:53.6566667	2018-04-05T18:26:00.4866667	2147	Red	Red3	f	247	29	10
q.38.blue1	38	Qualification 38	Qualification	2018-04-06T09:08:14.1966667	2018-04-06T09:11:11.47	1425	Blue	Blue1	f	374	25	0
q.38.blue2	38	Qualification 38	Qualification	2018-04-06T09:08:14.1966667	2018-04-06T09:11:11.47	6445	Blue	Blue2	f	374	25	0
q.38.blue3	38	Qualification 38	Qualification	2018-04-06T09:08:14.1966667	2018-04-06T09:11:11.47	5803	Blue	Blue3	f	374	25	0
q.38.red1	38	Qualification 38	Qualification	2018-04-06T09:08:14.1966667	2018-04-06T09:11:11.47	2811	Red	Red1	f	331	39	35
q.38.red2	38	Qualification 38	Qualification	2018-04-06T09:08:14.1966667	2018-04-06T09:11:11.47	4980	Red	Red2	f	331	39	35
q.38.red3	38	Qualification 38	Qualification	2018-04-06T09:08:14.1966667	2018-04-06T09:11:11.47	2928	Red	Red3	f	331	39	35
q.39.blue1	39	Qualification 39	Qualification	2018-04-06T09:14:48.8233333	2018-04-06T09:21:30.51	492	Blue	Blue1	f	445	51	25
q.39.blue2	39	Qualification 39	Qualification	2018-04-06T09:14:48.8233333	2018-04-06T09:21:30.51	2046	Blue	Blue2	f	445	51	25
q.39.blue3	39	Qualification 39	Qualification	2018-04-06T09:14:48.8233333	2018-04-06T09:21:30.51	5468	Blue	Blue3	f	445	51	25
q.39.red1	39	Qualification 39	Qualification	2018-04-06T09:14:48.8233333	2018-04-06T09:21:30.51	6845	Red	Red1	f	219	10	10
q.39.red2	39	Qualification 39	Qualification	2018-04-06T09:14:48.8233333	2018-04-06T09:21:30.51	847	Red	Red2	f	219	10	10
q.39.red3	39	Qualification 39	Qualification	2018-04-06T09:14:48.8233333	2018-04-06T09:21:30.51	488	Red	Red3	f	219	10	10
q.40.blue1	40	Qualification 40	Qualification	2018-04-06T09:23:40.82	2018-04-06T09:26:41.5966667	4061	Blue	Blue1	f	253	35	35
q.40.blue2	40	Qualification 40	Qualification	2018-04-06T09:23:40.82	2018-04-06T09:26:41.5966667	4513	Blue	Blue2	f	253	35	35
q.40.blue3	40	Qualification 40	Qualification	2018-04-06T09:23:40.82	2018-04-06T09:26:41.5966667	5920	Blue	Blue3	f	253	35	35
q.40.red1	40	Qualification 40	Qualification	2018-04-06T09:23:40.82	2018-04-06T09:26:41.5966667	1778	Red	Red1	f	457	36	30
q.40.red2	40	Qualification 40	Qualification	2018-04-06T09:23:40.82	2018-04-06T09:26:41.5966667	4125	Red	Red2	f	457	36	30
q.40.red3	40	Qualification 40	Qualification	2018-04-06T09:23:40.82	2018-04-06T09:26:41.5966667	4488	Red	Red3	f	457	36	30
q.41.blue1	41	Qualification 41	Qualification	2018-04-06T09:30:03.63	2018-04-06T09:32:57.1266667	4911	Blue	Blue1	f	452	37	60
q.41.blue2	41	Qualification 41	Qualification	2018-04-06T09:30:03.63	2018-04-06T09:32:57.1266667	2522	Blue	Blue2	f	452	37	60
q.41.blue3	41	Qualification 41	Qualification	2018-04-06T09:30:03.63	2018-04-06T09:32:57.1266667	1318	Blue	Blue3	f	452	37	60
q.41.red1	41	Qualification 41	Qualification	2018-04-06T09:30:03.63	2018-04-06T09:32:57.1266667	4662	Red	Red1	f	277	39	25
q.41.red2	41	Qualification 41	Qualification	2018-04-06T09:30:03.63	2018-04-06T09:32:57.1266667	4469	Red	Red2	f	277	39	25
q.41.red3	41	Qualification 41	Qualification	2018-04-06T09:30:03.63	2018-04-06T09:32:57.1266667	6831	Red	Red3	f	277	39	25
q.42.blue1	42	Qualification 42	Qualification	2018-04-06T09:36:17.1733333	2018-04-06T09:39:08.9766667	2557	Blue	Blue1	f	440	33	0
q.42.blue2	42	Qualification 42	Qualification	2018-04-06T09:36:17.1733333	2018-04-06T09:39:08.9766667	1510	Blue	Blue2	f	440	33	0
q.42.blue3	42	Qualification 42	Qualification	2018-04-06T09:36:17.1733333	2018-04-06T09:39:08.9766667	4450	Blue	Blue3	f	440	33	0
q.42.red1	42	Qualification 42	Qualification	2018-04-06T09:36:17.1733333	2018-04-06T09:39:08.9766667	2605	Red	Red1	f	288	27	50
q.42.red2	42	Qualification 42	Qualification	2018-04-06T09:36:17.1733333	2018-04-06T09:39:08.9766667	6076	Red	Red2	f	288	27	50
q.42.red3	42	Qualification 42	Qualification	2018-04-06T09:36:17.1733333	2018-04-06T09:39:08.9766667	2374	Red	Red3	f	288	27	50
q.43.blue1	43	Qualification 43	Qualification	2018-04-06T09:42:45.12	2018-04-06T09:45:37.99	3826	Blue	Blue1	f	322	31	0
q.43.blue2	43	Qualification 43	Qualification	2018-04-06T09:42:45.12	2018-04-06T09:45:37.99	6443	Blue	Blue2	f	322	31	0
q.43.blue3	43	Qualification 43	Qualification	2018-04-06T09:42:45.12	2018-04-06T09:45:37.99	2930	Blue	Blue3	f	322	31	0
q.43.red1	43	Qualification 43	Qualification	2018-04-06T09:42:45.12	2018-04-06T09:45:37.99	997	Red	Red1	f	293	31	25
q.43.red2	43	Qualification 43	Qualification	2018-04-06T09:42:45.12	2018-04-06T09:45:37.99	5450	Red	Red2	f	293	31	25
q.43.red3	43	Qualification 43	Qualification	2018-04-06T09:42:45.12	2018-04-06T09:45:37.99	6465	Red	Red3	f	293	31	25
q.44.blue1	44	Qualification 44	Qualification	2018-04-06T09:48:53.88	2018-04-06T09:51:48.1933333	4131	Blue	Blue1	f	147	24	25
q.44.blue2	44	Qualification 44	Qualification	2018-04-06T09:48:53.88	2018-04-06T09:51:48.1933333	3674	Blue	Blue2	f	147	24	25
q.44.blue3	44	Qualification 44	Qualification	2018-04-06T09:48:53.88	2018-04-06T09:51:48.1933333	1540	Blue	Blue3	f	147	24	25
q.44.red1	44	Qualification 44	Qualification	2018-04-06T09:48:53.88	2018-04-06T09:51:48.1933333	5803	Red	Red1	f	508	51	30
q.44.red2	44	Qualification 44	Qualification	2018-04-06T09:48:53.88	2018-04-06T09:51:48.1933333	2046	Red	Red2	f	508	51	30
q.44.red3	44	Qualification 44	Qualification	2018-04-06T09:48:53.88	2018-04-06T09:51:48.1933333	2471	Red	Red3	f	508	51	30
q.45.blue1	45	Qualification 45	Qualification	2018-04-06T09:54:59.9333333	2018-04-06T09:58:02.2566667	5468	Blue	Blue1	f	397	31	30
q.45.blue2	45	Qualification 45	Qualification	2018-04-06T09:54:59.9333333	2018-04-06T09:58:02.2566667	5920	Blue	Blue2	f	397	31	30
q.45.blue3	45	Qualification 45	Qualification	2018-04-06T09:54:59.9333333	2018-04-06T09:58:02.2566667	1983	Blue	Blue3	f	397	31	30
q.45.red1	45	Qualification 45	Qualification	2018-04-06T09:54:59.9333333	2018-04-06T09:58:02.2566667	1359	Red	Red1	f	303	29	25
q.45.red2	45	Qualification 45	Qualification	2018-04-06T09:54:59.9333333	2018-04-06T09:58:02.2566667	3223	Red	Red2	f	303	29	25
q.45.red3	45	Qualification 45	Qualification	2018-04-06T09:54:59.9333333	2018-04-06T09:58:02.2566667	2976	Red	Red3	f	303	29	25
q.46.blue1	46	Qualification 46	Qualification	2018-04-06T10:01:18.1066667	2018-04-06T10:04:56.5966667	948	Blue	Blue1	f	370	33	20
q.46.blue2	46	Qualification 46	Qualification	2018-04-06T10:01:18.1066667	2018-04-06T10:04:56.5966667	7034	Blue	Blue2	f	370	33	20
q.46.blue3	46	Qualification 46	Qualification	2018-04-06T10:01:18.1066667	2018-04-06T10:04:56.5966667	2910	Blue	Blue3	f	370	33	20
q.46.red1	46	Qualification 46	Qualification	2018-04-06T10:01:18.1066667	2018-04-06T10:04:56.5966667	1778	Red	Red1	f	295	37	55
q.46.red2	46	Qualification 46	Qualification	2018-04-06T10:01:18.1066667	2018-04-06T10:04:56.5966667	2522	Red	Red2	f	295	37	55
q.46.red3	46	Qualification 46	Qualification	2018-04-06T10:01:18.1066667	2018-04-06T10:04:56.5966667	847	Red	Red3	f	295	37	55
q.47.blue1	47	Qualification 47	Qualification	2018-04-06T10:08:17.88	2018-04-06T10:11:08.6566667	6845	Blue	Blue1	f	316	45	10
q.47.blue2	47	Qualification 47	Qualification	2018-04-06T10:08:17.88	2018-04-06T10:11:08.6566667	4061	Blue	Blue2	f	316	45	10
q.47.blue3	47	Qualification 47	Qualification	2018-04-06T10:08:17.88	2018-04-06T10:11:08.6566667	2374	Blue	Blue3	f	316	45	10
q.47.red1	47	Qualification 47	Qualification	2018-04-06T10:08:17.88	2018-04-06T10:11:08.6566667	4911	Red	Red1	f	274	35	0
q.47.red2	47	Qualification 47	Qualification	2018-04-06T10:08:17.88	2018-04-06T10:11:08.6566667	6076	Red	Red2	f	274	35	0
q.47.red3	47	Qualification 47	Qualification	2018-04-06T10:08:17.88	2018-04-06T10:11:08.6566667	2811	Red	Red3	f	274	35	0
q.48.blue1	48	Qualification 48	Qualification	2018-04-06T10:14:54.1466667	2018-04-06T10:17:45.1533333	3238	Blue	Blue1	f	362	51	5
q.48.blue2	48	Qualification 48	Qualification	2018-04-06T10:14:54.1466667	2018-04-06T10:17:45.1533333	6831	Blue	Blue2	f	362	51	5
q.48.blue3	48	Qualification 48	Qualification	2018-04-06T10:14:54.1466667	2018-04-06T10:17:45.1533333	1318	Blue	Blue3	f	362	51	5
q.48.red1	48	Qualification 48	Qualification	2018-04-06T10:14:54.1466667	2018-04-06T10:17:45.1533333	1425	Red	Red1	f	307	31	5
q.48.red2	48	Qualification 48	Qualification	2018-04-06T10:14:54.1466667	2018-04-06T10:17:45.1533333	492	Red	Red2	f	307	31	5
q.48.red3	48	Qualification 48	Qualification	2018-04-06T10:14:54.1466667	2018-04-06T10:17:45.1533333	2635	Red	Red3	f	307	31	5
q.49.blue1	49	Qualification 49	Qualification	2018-04-06T10:22:22.1766667	2018-04-06T10:25:18.48	2928	Blue	Blue1	f	384	29	0
q.49.blue2	49	Qualification 49	Qualification	2018-04-06T10:22:22.1766667	2018-04-06T10:25:18.48	3663	Blue	Blue2	f	384	29	0
q.49.blue3	49	Qualification 49	Qualification	2018-04-06T10:22:22.1766667	2018-04-06T10:25:18.48	488	Blue	Blue3	f	384	29	0
q.49.red1	49	Qualification 49	Qualification	2018-04-06T10:22:22.1766667	2018-04-06T10:25:18.48	1595	Red	Red1	f	343	43	50
q.49.red2	49	Qualification 49	Qualification	2018-04-06T10:22:22.1766667	2018-04-06T10:25:18.48	5450	Red	Red2	f	343	43	50
q.49.red3	49	Qualification 49	Qualification	2018-04-06T10:22:22.1766667	2018-04-06T10:25:18.48	2521	Red	Red3	f	343	43	50
q.50.blue1	50	Qualification 50	Qualification	2018-04-06T03:29:27.6266667	2018-04-06T03:33:32.3866667	3711	Blue	Blue1	f	341	35	75
q.50.blue2	50	Qualification 50	Qualification	2018-04-06T03:29:27.6266667	2018-04-06T03:33:32.3866667	4125	Blue	Blue2	f	341	35	75
q.50.blue3	50	Qualification 50	Qualification	2018-04-06T03:29:27.6266667	2018-04-06T03:33:32.3866667	4980	Blue	Blue3	f	341	35	75
q.50.red1	50	Qualification 50	Qualification	2018-04-06T03:29:27.6266667	2018-04-06T03:33:32.3866667	3826	Red	Red1	f	369	35	5
q.50.red2	50	Qualification 50	Qualification	2018-04-06T03:29:27.6266667	2018-04-06T03:33:32.3866667	2733	Red	Red2	f	369	35	5
q.50.red3	50	Qualification 50	Qualification	2018-04-06T03:29:27.6266667	2018-04-06T03:33:32.3866667	2147	Red	Red3	f	369	35	5
q.51.blue1	51	Qualification 51	Qualification	2018-04-06T03:36:21.1666667	2018-04-06T03:41:57.18	1510	Blue	Blue1	f	273	31	0
q.51.blue2	51	Qualification 51	Qualification	2018-04-06T03:36:21.1666667	2018-04-06T03:41:57.18	3218	Blue	Blue2	f	273	31	0
q.51.blue3	51	Qualification 51	Qualification	2018-04-06T03:36:21.1666667	2018-04-06T03:41:57.18	4662	Blue	Blue3	f	273	31	0
q.51.red1	51	Qualification 51	Qualification	2018-04-06T03:36:21.1666667	2018-04-06T03:41:57.18	4488	Red	Red1	f	512	35	100
q.51.red2	51	Qualification 51	Qualification	2018-04-06T03:36:21.1666667	2018-04-06T03:41:57.18	957	Red	Red2	f	512	35	100
q.51.red3	51	Qualification 51	Qualification	2018-04-06T03:36:21.1666667	2018-04-06T03:41:57.18	2557	Red	Red3	f	512	35	100
q.52.blue1	52	Qualification 52	Qualification	2018-04-06T03:46:00.24	2018-04-06T03:49:02.81	2605	Blue	Blue1	f	286	29	20
q.52.blue2	52	Qualification 52	Qualification	2018-04-06T03:46:00.24	2018-04-06T03:49:02.81	4469	Blue	Blue2	f	286	29	20
q.52.blue3	52	Qualification 52	Qualification	2018-04-06T03:46:00.24	2018-04-06T03:49:02.81	2944	Blue	Blue3	f	286	29	20
q.52.red1	52	Qualification 52	Qualification	2018-04-06T03:46:00.24	2018-04-06T03:49:02.81	360	Red	Red1	f	432	49	45
q.52.red2	52	Qualification 52	Qualification	2018-04-06T03:46:00.24	2018-04-06T03:49:02.81	6443	Red	Red2	f	432	49	45
q.52.red3	52	Qualification 52	Qualification	2018-04-06T03:46:00.24	2018-04-06T03:49:02.81	4513	Red	Red3	f	432	49	45
q.53.blue1	53	Qualification 53	Qualification	2018-04-06T03:52:17.65	2018-04-06T03:55:09.1566667	3024	Blue	Blue1	f	279	29	0
q.53.blue2	53	Qualification 53	Qualification	2018-04-06T03:52:17.65	2018-04-06T03:55:09.1566667	4915	Blue	Blue2	f	279	29	0
q.53.blue3	53	Qualification 53	Qualification	2018-04-06T03:52:17.65	2018-04-06T03:55:09.1566667	4450	Blue	Blue3	f	279	29	0
q.53.red1	53	Qualification 53	Qualification	2018-04-06T03:52:17.65	2018-04-06T03:55:09.1566667	2990	Red	Red1	f	419	45	0
q.53.red2	53	Qualification 53	Qualification	2018-04-06T03:52:17.65	2018-04-06T03:55:09.1566667	2906	Red	Red2	f	419	45	0
q.53.red3	53	Qualification 53	Qualification	2018-04-06T03:52:17.65	2018-04-06T03:55:09.1566667	997	Red	Red3	f	419	45	0
q.54.blue1	54	Qualification 54	Qualification	2018-04-06T03:57:59.1933333	2018-04-06T04:00:51.78	4512	Blue	Blue1	f	278	45	5
q.54.blue2	54	Qualification 54	Qualification	2018-04-06T03:57:59.1933333	2018-04-06T04:00:51.78	4131	Blue	Blue2	f	278	45	5
q.54.blue3	54	Qualification 54	Qualification	2018-04-06T03:57:59.1933333	2018-04-06T04:00:51.78	5468	Blue	Blue3	f	278	45	5
q.54.red1	54	Qualification 54	Qualification	2018-04-06T03:57:59.1933333	2018-04-06T04:00:51.78	6445	Red	Red1	f	328	35	5
q.54.red2	54	Qualification 54	Qualification	2018-04-06T03:57:59.1933333	2018-04-06T04:00:51.78	6465	Red	Red2	f	328	35	5
q.54.red3	54	Qualification 54	Qualification	2018-04-06T03:57:59.1933333	2018-04-06T04:00:51.78	7034	Red	Red3	f	328	35	5
q.55.blue1	55	Qualification 55	Qualification	2018-04-06T11:03:58.4733333	2018-04-06T11:06:47.1466667	4980	Blue	Blue1	f	435	53	30
q.55.blue2	55	Qualification 55	Qualification	2018-04-06T11:03:58.4733333	2018-04-06T11:06:47.1466667	3663	Blue	Blue2	f	435	53	30
q.55.blue3	55	Qualification 55	Qualification	2018-04-06T11:03:58.4733333	2018-04-06T11:06:47.1466667	3223	Blue	Blue3	f	435	53	30
q.55.red1	55	Qualification 55	Qualification	2018-04-06T11:03:58.4733333	2018-04-06T11:06:47.1466667	2522	Red	Red1	f	171	30	0
q.55.red2	55	Qualification 55	Qualification	2018-04-06T11:03:58.4733333	2018-04-06T11:06:47.1466667	4061	Red	Red2	f	171	30	0
q.55.red3	55	Qualification 55	Qualification	2018-04-06T11:03:58.4733333	2018-04-06T11:06:47.1466667	1540	Red	Red3	f	171	30	0
q.56.blue1	56	Qualification 56	Qualification	2018-04-06T11:10:39.9666667	2018-04-06T11:13:32.0533333	1778	Blue	Blue1	f	337	23	5
q.56.blue2	56	Qualification 56	Qualification	2018-04-06T11:10:39.9666667	2018-04-06T11:13:32.0533333	2811	Blue	Blue2	f	337	23	5
q.56.blue3	56	Qualification 56	Qualification	2018-04-06T11:10:39.9666667	2018-04-06T11:13:32.0533333	2521	Blue	Blue3	f	337	23	5
q.56.red1	56	Qualification 56	Qualification	2018-04-06T11:10:39.9666667	2018-04-06T11:13:32.0533333	488	Red	Red1	f	326	35	25
q.56.red2	56	Qualification 56	Qualification	2018-04-06T11:10:39.9666667	2018-04-06T11:13:32.0533333	2557	Red	Red2	f	326	35	25
q.56.red3	56	Qualification 56	Qualification	2018-04-06T11:10:39.9666667	2018-04-06T11:13:32.0533333	3826	Red	Red3	f	326	35	25
q.57.blue1	57	Qualification 57	Qualification	2018-04-06T11:19:15.09	2018-04-06T11:22:18.0033333	2046	Blue	Blue1	f	221	51	0
q.57.blue2	57	Qualification 57	Qualification	2018-04-06T11:19:15.09	2018-04-06T11:22:18.0033333	2147	Blue	Blue2	f	221	51	0
q.57.blue3	57	Qualification 57	Qualification	2018-04-06T11:19:15.09	2018-04-06T11:22:18.0033333	2635	Blue	Blue3	f	221	51	0
q.57.red1	57	Qualification 57	Qualification	2018-04-06T11:19:15.09	2018-04-06T11:22:18.0033333	4488	Red	Red1	f	354	33	0
q.57.red2	57	Qualification 57	Qualification	2018-04-06T11:19:15.09	2018-04-06T11:22:18.0033333	4911	Red	Red2	f	354	33	0
q.57.red3	57	Qualification 57	Qualification	2018-04-06T11:19:15.09	2018-04-06T11:22:18.0033333	6443	Red	Red3	f	354	33	0
q.58.blue1	58	Qualification 58	Qualification	2018-04-06T11:28:32.7833333	2018-04-06T11:31:36.3866667	2605	Blue	Blue1	f	227	15	50
q.58.blue2	58	Qualification 58	Qualification	2018-04-06T11:28:32.7833333	2018-04-06T11:31:36.3866667	5803	Blue	Blue2	f	227	15	50
q.58.blue3	58	Qualification 58	Qualification	2018-04-06T11:28:32.7833333	2018-04-06T11:31:36.3866667	2733	Blue	Blue3	f	227	15	50
q.58.red1	58	Qualification 58	Qualification	2018-04-06T11:28:32.7833333	2018-04-06T11:31:36.3866667	1318	Red	Red1	f	420	47	5
q.58.red2	58	Qualification 58	Qualification	2018-04-06T11:28:32.7833333	2018-04-06T11:31:36.3866667	2976	Red	Red2	f	420	47	5
q.58.red3	58	Qualification 58	Qualification	2018-04-06T11:28:32.7833333	2018-04-06T11:31:36.3866667	5450	Red	Red3	f	420	47	5
q.59.blue1	59	Qualification 59	Qualification	2018-04-06T11:35:05.2866667	2018-04-06T11:38:07.42	2906	Blue	Blue1	f	205	17	0
q.59.blue2	59	Qualification 59	Qualification	2018-04-06T11:35:05.2866667	2018-04-06T11:38:07.42	5920	Blue	Blue2	f	205	17	0
q.59.blue3	59	Qualification 59	Qualification	2018-04-06T11:35:05.2866667	2018-04-06T11:38:07.42	957	Blue	Blue3	f	205	17	0
q.59.red1	59	Qualification 59	Qualification	2018-04-06T11:35:05.2866667	2018-04-06T11:38:07.42	3238	Red	Red1	f	350	37	0
q.59.red2	59	Qualification 59	Qualification	2018-04-06T11:35:05.2866667	2018-04-06T11:38:07.42	847	Red	Red2	f	350	37	0
q.59.red3	59	Qualification 59	Qualification	2018-04-06T11:35:05.2866667	2018-04-06T11:38:07.42	360	Red	Red3	f	350	37	0
q.60.blue1	60	Qualification 60	Qualification	2018-04-06T11:43:49.2266667	2018-04-06T11:46:42.84	2990	Blue	Blue1	f	323	42	0
q.60.blue2	60	Qualification 60	Qualification	2018-04-06T11:43:49.2266667	2018-04-06T11:46:42.84	2930	Blue	Blue2	f	323	42	0
q.60.blue3	60	Qualification 60	Qualification	2018-04-06T11:43:49.2266667	2018-04-06T11:46:42.84	1595	Blue	Blue3	f	323	42	0
q.60.red1	60	Qualification 60	Qualification	2018-04-06T11:43:49.2266667	2018-04-06T11:46:42.84	4513	Red	Red1	f	350	33	0
q.60.red2	60	Qualification 60	Qualification	2018-04-06T11:43:49.2266667	2018-04-06T11:46:42.84	6831	Red	Red2	f	350	33	0
q.60.red3	60	Qualification 60	Qualification	2018-04-06T11:43:49.2266667	2018-04-06T11:46:42.84	1510	Red	Red3	f	350	33	0
q.61.blue1	61	Qualification 61	Qualification	2018-04-06T11:51:03.84	2018-04-06T11:53:56.9166667	3711	Blue	Blue1	f	234	33	0
q.61.blue2	61	Qualification 61	Qualification	2018-04-06T11:51:03.84	2018-04-06T11:53:56.9166667	2928	Blue	Blue2	f	234	33	0
q.61.blue3	61	Qualification 61	Qualification	2018-04-06T11:51:03.84	2018-04-06T11:53:56.9166667	1983	Blue	Blue3	f	234	33	0
q.61.red1	61	Qualification 61	Qualification	2018-04-06T11:51:03.84	2018-04-06T11:53:56.9166667	4450	Red	Red1	f	357	33	5
q.61.red2	61	Qualification 61	Qualification	2018-04-06T11:51:03.84	2018-04-06T11:53:56.9166667	6076	Red	Red2	f	357	33	5
q.61.red3	61	Qualification 61	Qualification	2018-04-06T11:51:03.84	2018-04-06T11:53:56.9166667	2471	Red	Red3	f	357	33	5
q.62.blue1	62	Qualification 62	Qualification	2018-04-06T11:57:34.65	2018-04-06T12:00:28.5566667	3674	Blue	Blue1	f	282	29	0
q.62.blue2	62	Qualification 62	Qualification	2018-04-06T11:57:34.65	2018-04-06T12:00:28.5566667	6845	Blue	Blue2	f	282	29	0
q.62.blue3	62	Qualification 62	Qualification	2018-04-06T11:57:34.65	2018-04-06T12:00:28.5566667	3218	Blue	Blue3	f	282	29	0
q.62.red1	62	Qualification 62	Qualification	2018-04-06T11:57:34.65	2018-04-06T12:00:28.5566667	4512	Red	Red1	f	403	45	5
q.62.red2	62	Qualification 62	Qualification	2018-04-06T11:57:34.65	2018-04-06T12:00:28.5566667	1425	Red	Red2	f	403	45	5
q.62.red3	62	Qualification 62	Qualification	2018-04-06T11:57:34.65	2018-04-06T12:00:28.5566667	4915	Red	Red3	f	403	45	5
q.63.blue1	63	Qualification 63	Qualification	2018-04-06T12:03:15.83	2018-04-06T12:06:08.5566667	6445	Blue	Blue1	f	396	31	0
q.63.blue2	63	Qualification 63	Qualification	2018-04-06T12:03:15.83	2018-04-06T12:06:08.5566667	492	Blue	Blue2	f	396	31	0
q.63.blue3	63	Qualification 63	Qualification	2018-04-06T12:03:15.83	2018-04-06T12:06:08.5566667	3024	Blue	Blue3	f	396	31	0
q.63.red1	63	Qualification 63	Qualification	2018-04-06T12:03:15.83	2018-04-06T12:06:08.5566667	2944	Red	Red1	f	107	25	0
q.63.red2	63	Qualification 63	Qualification	2018-04-06T12:03:15.83	2018-04-06T12:06:08.5566667	948	Red	Red2	f	107	25	0
q.63.red3	63	Qualification 63	Qualification	2018-04-06T12:03:15.83	2018-04-06T12:06:08.5566667	4662	Red	Red3	f	107	25	0
q.64.blue1	64	Qualification 64	Qualification	2018-04-06T12:09:15.1433333	2018-04-06T12:12:39.3066667	997	Blue	Blue1	f	158	10	10
q.64.blue2	64	Qualification 64	Qualification	2018-04-06T12:09:15.1433333	2018-04-06T12:12:39.3066667	1359	Blue	Blue2	f	158	10	10
q.64.blue3	64	Qualification 64	Qualification	2018-04-06T12:09:15.1433333	2018-04-06T12:12:39.3066667	4125	Blue	Blue3	f	158	10	10
q.64.red1	64	Qualification 64	Qualification	2018-04-06T12:09:15.1433333	2018-04-06T12:12:39.3066667	2374	Red	Red1	f	425	37	5
q.64.red2	64	Qualification 64	Qualification	2018-04-06T12:09:15.1433333	2018-04-06T12:12:39.3066667	2910	Red	Red2	f	425	37	5
q.64.red3	64	Qualification 64	Qualification	2018-04-06T12:09:15.1433333	2018-04-06T12:12:39.3066667	4469	Red	Red3	f	425	37	5
q.65.blue1	65	Qualification 65	Qualification	2018-04-06T12:15:41.5766667	2018-04-06T12:21:38.1266667	488	Blue	Blue1	f	383	45	65
q.65.blue2	65	Qualification 65	Qualification	2018-04-06T12:15:41.5766667	2018-04-06T12:21:38.1266667	2635	Blue	Blue2	f	383	45	65
q.65.blue3	65	Qualification 65	Qualification	2018-04-06T12:15:41.5766667	2018-04-06T12:21:38.1266667	5803	Blue	Blue3	f	383	45	65
q.65.red1	65	Qualification 65	Qualification	2018-04-06T12:15:41.5766667	2018-04-06T12:21:38.1266667	3223	Red	Red1	f	407	31	180
q.65.red2	65	Qualification 65	Qualification	2018-04-06T12:15:41.5766667	2018-04-06T12:21:38.1266667	360	Red	Red2	f	407	31	180
q.65.red3	65	Qualification 65	Qualification	2018-04-06T12:15:41.5766667	2018-04-06T12:21:38.1266667	2147	Red	Red3	f	407	31	180
q.66.blue1	66	Qualification 66	Qualification	2018-04-06T12:27:05.1966667	2018-04-06T12:30:26.8166667	2557	Blue	Blue1	f	287	32	0
q.66.blue2	66	Qualification 66	Qualification	2018-04-06T12:27:05.1966667	2018-04-06T12:30:26.8166667	5920	Blue	Blue2	f	287	32	0
q.66.blue3	66	Qualification 66	Qualification	2018-04-06T12:27:05.1966667	2018-04-06T12:30:26.8166667	7034	Blue	Blue3	f	287	32	0
q.66.red1	66	Qualification 66	Qualification	2018-04-06T12:27:05.1966667	2018-04-06T12:30:26.8166667	4061	Red	Red1	f	282	35	0
q.66.red2	66	Qualification 66	Qualification	2018-04-06T12:27:05.1966667	2018-04-06T12:30:26.8166667	2605	Red	Red2	f	282	35	0
q.66.red3	66	Qualification 66	Qualification	2018-04-06T12:27:05.1966667	2018-04-06T12:30:26.8166667	1595	Red	Red3	f	282	35	0
q.67.blue1	67	Qualification 67	Qualification	2018-04-06T12:33:59.3766667	2018-04-06T12:37:40.3733333	2046	Blue	Blue1	f	398	45	25
q.67.blue2	67	Qualification 67	Qualification	2018-04-06T12:33:59.3766667	2018-04-06T12:37:40.3733333	4512	Blue	Blue2	f	398	45	25
q.67.blue3	67	Qualification 67	Qualification	2018-04-06T12:33:59.3766667	2018-04-06T12:37:40.3733333	957	Blue	Blue3	f	398	45	25
q.67.red1	67	Qualification 67	Qualification	2018-04-06T12:33:59.3766667	2018-04-06T12:37:40.3733333	5468	Red	Red1	f	272	37	25
q.67.red2	67	Qualification 67	Qualification	2018-04-06T12:33:59.3766667	2018-04-06T12:37:40.3733333	2990	Red	Red2	f	272	37	25
q.67.red3	67	Qualification 67	Qualification	2018-04-06T12:33:59.3766667	2018-04-06T12:37:40.3733333	3663	Red	Red3	f	272	37	25
q.68.blue1	68	Qualification 68	Qualification	2018-04-06T13:31:23.1366667	2018-04-06T13:34:22.2133333	847	Blue	Blue1	f	326	35	0
q.68.blue2	68	Qualification 68	Qualification	2018-04-06T13:31:23.1366667	2018-04-06T13:34:22.2133333	3711	Blue	Blue2	f	326	35	0
q.68.blue3	68	Qualification 68	Qualification	2018-04-06T13:31:23.1366667	2018-04-06T13:34:22.2133333	6465	Blue	Blue3	f	326	35	0
q.68.red1	68	Qualification 68	Qualification	2018-04-06T13:31:23.1366667	2018-04-06T13:34:22.2133333	4662	Red	Red1	f	169	27	0
q.68.red2	68	Qualification 68	Qualification	2018-04-06T13:31:23.1366667	2018-04-06T13:34:22.2133333	1778	Red	Red2	f	169	27	0
q.68.red3	68	Qualification 68	Qualification	2018-04-06T13:31:23.1366667	2018-04-06T13:34:22.2133333	5450	Red	Red3	f	169	27	0
q.69.blue1	69	Qualification 69	Qualification	2018-04-06T13:37:12.25	2018-04-06T13:40:12.3266667	4488	Blue	Blue1	f	228	33	5
q.69.blue2	69	Qualification 69	Qualification	2018-04-06T13:37:12.25	2018-04-06T13:40:12.3266667	2944	Blue	Blue2	f	228	33	5
q.69.blue3	69	Qualification 69	Qualification	2018-04-06T13:37:12.25	2018-04-06T13:40:12.3266667	2811	Blue	Blue3	f	228	33	5
q.69.red1	69	Qualification 69	Qualification	2018-04-06T13:37:12.25	2018-04-06T13:40:12.3266667	4125	Red	Red1	f	396	36	0
q.69.red2	69	Qualification 69	Qualification	2018-04-06T13:37:12.25	2018-04-06T13:40:12.3266667	948	Red	Red2	f	396	36	0
q.69.red3	69	Qualification 69	Qualification	2018-04-06T13:37:12.25	2018-04-06T13:40:12.3266667	1425	Red	Red3	f	396	36	0
q.70.blue1	70	Qualification 70	Qualification	2018-04-06T13:43:10.19	2018-04-06T13:46:04.07	6445	Blue	Blue1	f	104	15	5
q.70.blue2	70	Qualification 70	Qualification	2018-04-06T13:43:10.19	2018-04-06T13:46:04.07	1540	Blue	Blue2	f	104	15	5
q.70.blue3	70	Qualification 70	Qualification	2018-04-06T13:43:10.19	2018-04-06T13:46:04.07	1359	Blue	Blue3	f	104	15	5
q.70.red1	70	Qualification 70	Qualification	2018-04-06T13:43:10.19	2018-04-06T13:46:04.07	4911	Red	Red1	f	357	41	0
q.70.red2	70	Qualification 70	Qualification	2018-04-06T13:43:10.19	2018-04-06T13:46:04.07	3218	Red	Red2	f	357	41	0
q.70.red3	70	Qualification 70	Qualification	2018-04-06T13:43:10.19	2018-04-06T13:46:04.07	2930	Red	Red3	f	357	41	0
q.71.blue1	71	Qualification 71	Qualification	2018-04-06T13:49:53.08	2018-04-06T13:52:46.0566667	2522	Blue	Blue1	f	454	53	0
q.71.blue2	71	Qualification 71	Qualification	2018-04-06T13:49:53.08	2018-04-06T13:52:46.0566667	2471	Blue	Blue2	f	454	53	0
q.71.blue3	71	Qualification 71	Qualification	2018-04-06T13:49:53.08	2018-04-06T13:52:46.0566667	997	Blue	Blue3	f	454	53	0
q.71.red1	71	Qualification 71	Qualification	2018-04-06T13:49:53.08	2018-04-06T13:52:46.0566667	1510	Red	Red1	f	225	37	35
q.71.red2	71	Qualification 71	Qualification	2018-04-06T13:49:53.08	2018-04-06T13:52:46.0566667	492	Red	Red2	f	225	37	35
q.71.red3	71	Qualification 71	Qualification	2018-04-06T13:49:53.08	2018-04-06T13:52:46.0566667	2906	Red	Red3	f	225	37	35
q.72.blue1	72	Qualification 72	Qualification	2018-04-06T13:55:49.6233333	2018-04-06T13:59:36.0166667	6831	Blue	Blue1	f	293	31	5
q.72.blue2	72	Qualification 72	Qualification	2018-04-06T13:55:49.6233333	2018-04-06T13:59:36.0166667	2976	Blue	Blue2	f	293	31	5
q.72.blue3	72	Qualification 72	Qualification	2018-04-06T13:55:49.6233333	2018-04-06T13:59:36.0166667	6076	Blue	Blue3	f	293	31	5
q.72.red1	72	Qualification 72	Qualification	2018-04-06T13:55:49.6233333	2018-04-06T13:59:36.0166667	4980	Red	Red1	f	324	31	85
q.72.red2	72	Qualification 72	Qualification	2018-04-06T13:55:49.6233333	2018-04-06T13:59:36.0166667	3674	Red	Red2	f	324	31	85
q.72.red3	72	Qualification 72	Qualification	2018-04-06T13:55:49.6233333	2018-04-06T13:59:36.0166667	6443	Red	Red3	f	324	31	85
q.73.blue1	73	Qualification 73	Qualification	2018-04-06T14:03:09.57	2018-04-06T14:06:05.7666667	3826	Blue	Blue1	f	325	35	10
q.73.blue2	73	Qualification 73	Qualification	2018-04-06T14:03:09.57	2018-04-06T14:06:05.7666667	4469	Blue	Blue2	f	325	35	10
q.73.blue3	73	Qualification 73	Qualification	2018-04-06T14:03:09.57	2018-04-06T14:06:05.7666667	3238	Blue	Blue3	f	325	35	10
q.73.red1	73	Qualification 73	Qualification	2018-04-06T14:03:09.57	2018-04-06T14:06:05.7666667	6845	Red	Red1	f	377	45	5
q.73.red2	73	Qualification 73	Qualification	2018-04-06T14:03:09.57	2018-04-06T14:06:05.7666667	4915	Red	Red2	f	377	45	5
q.73.red3	73	Qualification 73	Qualification	2018-04-06T14:03:09.57	2018-04-06T14:06:05.7666667	2928	Red	Red3	f	377	45	5
q.74.blue1	74	Qualification 74	Qualification	2018-04-06T14:08:59.05	2018-04-06T14:12:06.92	2521	Blue	Blue1	f	412	22	75
q.74.blue2	74	Qualification 74	Qualification	2018-04-06T14:08:59.05	2018-04-06T14:12:06.92	4513	Blue	Blue2	f	412	22	75
q.74.blue3	74	Qualification 74	Qualification	2018-04-06T14:08:59.05	2018-04-06T14:12:06.92	4131	Blue	Blue3	f	412	22	75
q.74.red1	74	Qualification 74	Qualification	2018-04-06T14:08:59.05	2018-04-06T14:12:06.92	2733	Red	Red1	f	163	10	0
q.74.red2	74	Qualification 74	Qualification	2018-04-06T14:08:59.05	2018-04-06T14:12:06.92	2374	Red	Red2	f	163	10	0
q.74.red3	74	Qualification 74	Qualification	2018-04-06T14:08:59.05	2018-04-06T14:12:06.92	1983	Red	Red3	f	163	10	0
q.75.blue1	75	Qualification 75	Qualification	2018-04-06T14:14:45.7733333	2018-04-06T14:17:40.6933333	4450	Blue	Blue1	f	347	31	40
q.75.blue2	75	Qualification 75	Qualification	2018-04-06T14:14:45.7733333	2018-04-06T14:17:40.6933333	1318	Blue	Blue2	f	347	31	40
q.75.blue3	75	Qualification 75	Qualification	2018-04-06T14:14:45.7733333	2018-04-06T14:17:40.6933333	3663	Blue	Blue3	f	347	31	40
q.75.red1	75	Qualification 75	Qualification	2018-04-06T14:14:45.7733333	2018-04-06T14:17:40.6933333	2910	Red	Red1	f	434	51	50
q.75.red2	75	Qualification 75	Qualification	2018-04-06T14:14:45.7733333	2018-04-06T14:17:40.6933333	3024	Red	Red2	f	434	51	50
q.75.red3	75	Qualification 75	Qualification	2018-04-06T14:14:45.7733333	2018-04-06T14:17:40.6933333	2557	Red	Red3	f	434	51	50
q.76.blue1	76	Qualification 76	Qualification	2018-04-06T14:23:48.2766667	2018-04-06T14:26:44.55	1510	Blue	Blue1	f	340	42	0
q.76.blue2	76	Qualification 76	Qualification	2018-04-06T14:23:48.2766667	2018-04-06T14:26:44.55	2605	Blue	Blue2	f	340	42	0
q.76.blue3	76	Qualification 76	Qualification	2018-04-06T14:23:48.2766667	2018-04-06T14:26:44.55	1540	Blue	Blue3	f	340	42	0
q.76.red1	76	Qualification 76	Qualification	2018-04-06T14:23:48.2766667	2018-04-06T14:26:44.55	2147	Red	Red1	f	249	20	5
q.76.red2	76	Qualification 76	Qualification	2018-04-06T14:23:48.2766667	2018-04-06T14:26:44.55	3711	Red	Red2	f	249	20	5
q.76.red3	76	Qualification 76	Qualification	2018-04-06T14:23:48.2766667	2018-04-06T14:26:44.55	1778	Red	Red3	f	249	20	5
q.77.blue1	77	Qualification 77	Qualification	2018-04-06T14:30:02.3833333	2018-04-06T14:33:36.35	3674	Blue	Blue1	f	413	35	5
q.77.blue2	77	Qualification 77	Qualification	2018-04-06T14:30:02.3833333	2018-04-06T14:33:36.35	488	Blue	Blue2	f	413	35	5
q.77.blue3	77	Qualification 77	Qualification	2018-04-06T14:30:02.3833333	2018-04-06T14:33:36.35	5468	Blue	Blue3	f	413	35	5
q.77.red1	77	Qualification 77	Qualification	2018-04-06T14:30:02.3833333	2018-04-06T14:33:36.35	2635	Red	Red1	f	278	31	5
q.77.red2	77	Qualification 77	Qualification	2018-04-06T14:30:02.3833333	2018-04-06T14:33:36.35	2930	Red	Red2	f	278	31	5
q.77.red3	77	Qualification 77	Qualification	2018-04-06T14:30:02.3833333	2018-04-06T14:33:36.35	4980	Red	Red3	f	278	31	5
q.78.blue1	78	Qualification 78	Qualification	2018-04-06T14:37:16.82	2018-04-06T14:40:33.9066667	4662	Blue	Blue1	f	75	15	0
q.78.blue2	78	Qualification 78	Qualification	2018-04-06T14:37:16.82	2018-04-06T14:40:33.9066667	2522	Blue	Blue2	f	75	15	0
q.78.blue3	78	Qualification 78	Qualification	2018-04-06T14:37:16.82	2018-04-06T14:40:33.9066667	3238	Blue	Blue3	f	75	15	0
q.78.red1	78	Qualification 78	Qualification	2018-04-06T14:37:16.82	2018-04-06T14:40:33.9066667	4125	Red	Red1	f	431	31	65
q.78.red2	78	Qualification 78	Qualification	2018-04-06T14:37:16.82	2018-04-06T14:40:33.9066667	2976	Red	Red2	f	431	31	65
q.78.red3	78	Qualification 78	Qualification	2018-04-06T14:37:16.82	2018-04-06T14:40:33.9066667	4512	Red	Red3	f	431	31	65
q.79.blue1	79	Qualification 79	Qualification	2018-04-06T14:44:48.3766667	2018-04-06T14:47:39.74	6445	Blue	Blue1	f	220	35	30
q.79.blue2	79	Qualification 79	Qualification	2018-04-06T14:44:48.3766667	2018-04-06T14:47:39.74	4513	Blue	Blue2	f	220	35	30
q.79.blue3	79	Qualification 79	Qualification	2018-04-06T14:44:48.3766667	2018-04-06T14:47:39.74	2906	Blue	Blue3	f	220	35	30
q.79.red1	79	Qualification 79	Qualification	2018-04-06T14:44:48.3766667	2018-04-06T14:47:39.74	3826	Red	Red1	f	512	55	50
q.79.red2	79	Qualification 79	Qualification	2018-04-06T14:44:48.3766667	2018-04-06T14:47:39.74	2046	Red	Red2	f	512	55	50
q.79.red3	79	Qualification 79	Qualification	2018-04-06T14:44:48.3766667	2018-04-06T14:47:39.74	4061	Red	Red3	f	512	55	50
q.80.blue1	80	Qualification 80	Qualification	2018-04-06T14:51:05.19	2018-04-06T14:54:06.9833333	847	Blue	Blue1	f	303	33	30
q.80.blue2	80	Qualification 80	Qualification	2018-04-06T14:51:05.19	2018-04-06T14:54:06.9833333	4450	Blue	Blue2	f	303	33	30
q.80.blue3	80	Qualification 80	Qualification	2018-04-06T14:51:05.19	2018-04-06T14:54:06.9833333	2944	Blue	Blue3	f	303	33	30
q.80.red1	80	Qualification 80	Qualification	2018-04-06T14:51:05.19	2018-04-06T14:54:06.9833333	4915	Red	Red1	f	306	35	0
q.80.red2	80	Qualification 80	Qualification	2018-04-06T14:51:05.19	2018-04-06T14:54:06.9833333	2521	Red	Red2	f	306	35	0
q.80.red3	80	Qualification 80	Qualification	2018-04-06T14:51:05.19	2018-04-06T14:54:06.9833333	6831	Red	Red3	f	306	35	0
q.81.blue1	81	Qualification 81	Qualification	2018-04-06T15:00:38.3866667	2018-04-06T15:04:20.6133333	4911	Blue	Blue1	f	311	35	0
q.81.blue2	81	Qualification 81	Qualification	2018-04-06T15:00:38.3866667	2018-04-06T15:04:20.6133333	360	Blue	Blue2	f	311	35	0
q.81.blue3	81	Qualification 81	Qualification	2018-04-06T15:00:38.3866667	2018-04-06T15:04:20.6133333	6845	Blue	Blue3	f	311	35	0
q.81.red1	81	Qualification 81	Qualification	2018-04-06T15:00:38.3866667	2018-04-06T15:04:20.6133333	997	Red	Red1	f	374	35	5
q.81.red2	81	Qualification 81	Qualification	2018-04-06T15:00:38.3866667	2018-04-06T15:04:20.6133333	4131	Red	Red2	f	374	35	5
q.81.red3	81	Qualification 81	Qualification	2018-04-06T15:00:38.3866667	2018-04-06T15:04:20.6133333	3223	Red	Red3	f	374	35	5
q.82.blue1	82	Qualification 82	Qualification	2018-04-06T15:07:06.8066667	2018-04-06T15:09:57.5066667	2811	Blue	Blue1	f	427	43	25
q.82.blue2	82	Qualification 82	Qualification	2018-04-06T15:07:06.8066667	2018-04-06T15:09:57.5066667	2910	Blue	Blue2	f	427	43	25
q.82.blue3	82	Qualification 82	Qualification	2018-04-06T15:07:06.8066667	2018-04-06T15:09:57.5066667	1595	Blue	Blue3	f	427	43	25
q.82.red1	82	Qualification 82	Qualification	2018-04-06T15:07:06.8066667	2018-04-06T15:09:57.5066667	1318	Red	Red1	f	216	37	15
q.82.red2	82	Qualification 82	Qualification	2018-04-06T15:07:06.8066667	2018-04-06T15:09:57.5066667	3218	Red	Red2	f	216	37	15
q.82.red3	82	Qualification 82	Qualification	2018-04-06T15:07:06.8066667	2018-04-06T15:09:57.5066667	492	Red	Red3	f	216	37	15
q.83.blue1	83	Qualification 83	Qualification	2018-04-06T15:14:21.78	2018-04-06T15:17:30.39	1425	Blue	Blue1	f	431	36	80
q.83.blue2	83	Qualification 83	Qualification	2018-04-06T15:14:21.78	2018-04-06T15:17:30.39	2733	Blue	Blue2	f	431	36	80
q.83.blue3	83	Qualification 83	Qualification	2018-04-06T15:14:21.78	2018-04-06T15:17:30.39	2928	Blue	Blue3	f	431	36	80
q.83.red1	83	Qualification 83	Qualification	2018-04-06T15:14:21.78	2018-04-06T15:17:30.39	6443	Red	Red1	f	279	35	5
q.83.red2	83	Qualification 83	Qualification	2018-04-06T15:14:21.78	2018-04-06T15:17:30.39	957	Red	Red2	f	279	35	5
q.83.red3	83	Qualification 83	Qualification	2018-04-06T15:14:21.78	2018-04-06T15:17:30.39	7034	Red	Red3	f	279	35	5
q.84.blue1	84	Qualification 84	Qualification	2018-04-06T15:20:43.8433333	2018-04-06T15:23:52.2266667	5920	Blue	Blue1	f	372	31	5
q.84.blue2	84	Qualification 84	Qualification	2018-04-06T15:20:43.8433333	2018-04-06T15:23:52.2266667	2471	Blue	Blue2	f	372	31	5
q.84.blue3	84	Qualification 84	Qualification	2018-04-06T15:20:43.8433333	2018-04-06T15:23:52.2266667	948	Blue	Blue3	f	372	31	5
q.84.red1	84	Qualification 84	Qualification	2018-04-06T15:20:43.8433333	2018-04-06T15:23:52.2266667	6076	Red	Red1	f	325	37	50
q.84.red2	84	Qualification 84	Qualification	2018-04-06T15:20:43.8433333	2018-04-06T15:23:52.2266667	2990	Red	Red2	f	325	37	50
q.84.red3	84	Qualification 84	Qualification	2018-04-06T15:20:43.8433333	2018-04-06T15:23:52.2266667	4469	Red	Red3	f	325	37	50
q.85.blue1	85	Qualification 85	Qualification	2018-04-06T15:27:15.7166667	2018-04-06T15:30:19.72	1983	Blue	Blue1	f	427	39	25
q.85.blue2	85	Qualification 85	Qualification	2018-04-06T15:27:15.7166667	2018-04-06T15:30:19.72	4488	Blue	Blue2	f	427	39	25
q.85.blue3	85	Qualification 85	Qualification	2018-04-06T15:27:15.7166667	2018-04-06T15:30:19.72	6465	Blue	Blue3	f	427	39	25
q.85.red1	85	Qualification 85	Qualification	2018-04-06T15:27:15.7166667	2018-04-06T15:30:19.72	2374	Red	Red1	f	206	29	5
q.85.red2	85	Qualification 85	Qualification	2018-04-06T15:27:15.7166667	2018-04-06T15:30:19.72	5803	Red	Red2	f	206	29	5
q.85.red3	85	Qualification 85	Qualification	2018-04-06T15:27:15.7166667	2018-04-06T15:30:19.72	3024	Red	Red3	f	206	29	5
q.86.blue1	86	Qualification 86	Qualification	2018-04-06T15:33:59.0166667	2018-04-06T15:36:51.7	5450	Blue	Blue1	f	363	33	0
q.86.blue2	86	Qualification 86	Qualification	2018-04-06T15:33:59.0166667	2018-04-06T15:36:51.7	2557	Blue	Blue2	f	363	33	0
q.86.blue3	86	Qualification 86	Qualification	2018-04-06T15:33:59.0166667	2018-04-06T15:36:51.7	360	Blue	Blue3	f	363	33	0
q.86.red1	86	Qualification 86	Qualification	2018-04-06T15:33:59.0166667	2018-04-06T15:36:51.7	1359	Red	Red1	f	311	49	55
q.86.red2	86	Qualification 86	Qualification	2018-04-06T15:33:59.0166667	2018-04-06T15:36:51.7	6845	Red	Red2	f	311	49	55
q.86.red3	86	Qualification 86	Qualification	2018-04-06T15:33:59.0166667	2018-04-06T15:36:51.7	2522	Red	Red3	f	311	49	55
q.87.blue1	87	Qualification 87	Qualification	2018-04-06T15:39:41.4166667	2018-04-06T15:47:13.0366667	997	Blue	Blue1	f	404	35	5
q.87.blue2	87	Qualification 87	Qualification	2018-04-06T15:39:41.4166667	2018-04-06T15:47:13.0366667	1778	Blue	Blue2	f	404	35	5
q.87.blue3	87	Qualification 87	Qualification	2018-04-06T15:39:41.4166667	2018-04-06T15:47:13.0366667	4915	Blue	Blue3	f	404	35	5
q.87.red1	87	Qualification 87	Qualification	2018-04-06T15:39:41.4166667	2018-04-06T15:47:13.0366667	1318	Red	Red1	f	247	33	30
q.87.red2	87	Qualification 87	Qualification	2018-04-06T15:39:41.4166667	2018-04-06T15:47:13.0366667	4512	Red	Red2	t	247	33	30
q.87.red3	87	Qualification 87	Qualification	2018-04-06T15:39:41.4166667	2018-04-06T15:47:13.0366667	6445	Red	Red3	f	247	33	30
q.88.blue1	88	Qualification 88	Qualification	2018-04-06T15:52:26.5533333	2018-04-06T15:55:32.4166667	6831	Blue	Blue1	f	410	47	10
q.88.blue2	88	Qualification 88	Qualification	2018-04-06T15:52:26.5533333	2018-04-06T15:55:32.4166667	3218	Blue	Blue2	f	410	47	10
q.88.blue3	88	Qualification 88	Qualification	2018-04-06T15:52:26.5533333	2018-04-06T15:55:32.4166667	4980	Blue	Blue3	f	410	47	10
q.88.red1	88	Qualification 88	Qualification	2018-04-06T15:52:26.5533333	2018-04-06T15:55:32.4166667	2605	Red	Red1	f	308	35	5
q.88.red2	88	Qualification 88	Qualification	2018-04-06T15:52:26.5533333	2018-04-06T15:55:32.4166667	2928	Red	Red2	f	308	35	5
q.88.red3	88	Qualification 88	Qualification	2018-04-06T15:52:26.5533333	2018-04-06T15:55:32.4166667	2046	Red	Red3	f	308	35	5
q.89.blue1	89	Qualification 89	Qualification	2018-04-06T15:58:59.0966667	2018-04-06T16:01:53.31	4662	Blue	Blue1	f	162	29	0
q.89.blue2	89	Qualification 89	Qualification	2018-04-06T15:58:59.0966667	2018-04-06T16:01:53.31	3826	Blue	Blue2	f	162	29	0
q.89.blue3	89	Qualification 89	Qualification	2018-04-06T15:58:59.0966667	2018-04-06T16:01:53.31	6076	Blue	Blue3	f	162	29	0
q.89.red1	89	Qualification 89	Qualification	2018-04-06T15:58:59.0966667	2018-04-06T16:01:53.31	1540	Red	Red1	f	375	37	10
q.89.red2	89	Qualification 89	Qualification	2018-04-06T15:58:59.0966667	2018-04-06T16:01:53.31	2635	Red	Red2	f	375	37	10
q.89.red3	89	Qualification 89	Qualification	2018-04-06T15:58:59.0966667	2018-04-06T16:01:53.31	7034	Red	Red3	f	375	37	10
q.90.blue1	90	Qualification 90	Qualification	2018-04-06T16:05:50.8266667	2018-04-06T16:10:46.0533333	6443	Blue	Blue1	f	193	31	0
q.90.blue2	90	Qualification 90	Qualification	2018-04-06T16:05:50.8266667	2018-04-06T16:10:46.0533333	4450	Blue	Blue2	f	193	31	0
q.90.blue3	90	Qualification 90	Qualification	2018-04-06T16:05:50.8266667	2018-04-06T16:10:46.0533333	4125	Blue	Blue3	f	193	31	0
q.90.red1	90	Qualification 90	Qualification	2018-04-06T16:05:50.8266667	2018-04-06T16:10:46.0533333	2471	Red	Red1	f	444	31	30
q.90.red2	90	Qualification 90	Qualification	2018-04-06T16:05:50.8266667	2018-04-06T16:10:46.0533333	4131	Red	Red2	f	444	31	30
q.90.red3	90	Qualification 90	Qualification	2018-04-06T16:05:50.8266667	2018-04-06T16:10:46.0533333	488	Red	Red3	f	444	31	30
q.91.blue1	91	Qualification 91	Qualification	2018-04-06T16:13:36.3766667	2018-04-06T16:17:49.7866667	957	Blue	Blue1	f	331	49	35
q.91.blue2	91	Qualification 91	Qualification	2018-04-06T16:13:36.3766667	2018-04-06T16:17:49.7866667	492	Blue	Blue2	f	331	49	35
q.91.blue3	91	Qualification 91	Qualification	2018-04-06T16:13:36.3766667	2018-04-06T16:17:49.7866667	4061	Blue	Blue3	f	331	49	35
q.91.red1	91	Qualification 91	Qualification	2018-04-06T16:13:36.3766667	2018-04-06T16:17:49.7866667	2147	Red	Red1	f	314	15	5
q.91.red2	91	Qualification 91	Qualification	2018-04-06T16:13:36.3766667	2018-04-06T16:17:49.7866667	2930	Red	Red2	f	314	15	5
q.91.red3	91	Qualification 91	Qualification	2018-04-06T16:13:36.3766667	2018-04-06T16:17:49.7866667	2521	Red	Red3	f	314	15	5
q.92.blue1	92	Qualification 92	Qualification	2018-04-06T16:21:38.4633333	2018-04-06T16:24:35.14	4488	Blue	Blue1	f	265	29	5
q.92.blue2	92	Qualification 92	Qualification	2018-04-06T16:21:38.4633333	2018-04-06T16:24:35.14	4513	Blue	Blue2	f	265	29	5
q.92.blue3	92	Qualification 92	Qualification	2018-04-06T16:21:38.4633333	2018-04-06T16:24:35.14	948	Blue	Blue3	f	265	29	5
q.92.red1	92	Qualification 92	Qualification	2018-04-06T16:21:38.4633333	2018-04-06T16:24:35.14	5468	Red	Red1	f	426	39	0
q.92.red2	92	Qualification 92	Qualification	2018-04-06T16:21:38.4633333	2018-04-06T16:24:35.14	2976	Red	Red2	f	426	39	0
q.92.red3	92	Qualification 92	Qualification	2018-04-06T16:21:38.4633333	2018-04-06T16:24:35.14	2910	Red	Red3	f	426	39	0
q.93.blue1	93	Qualification 93	Qualification	2018-04-06T16:28:58.89	2018-04-06T16:31:52.97	847	Blue	Blue1	f	411	55	5
q.93.blue2	93	Qualification 93	Qualification	2018-04-06T16:28:58.89	2018-04-06T16:31:52.97	2733	Blue	Blue2	f	411	55	5
q.93.blue3	93	Qualification 93	Qualification	2018-04-06T16:28:58.89	2018-04-06T16:31:52.97	2990	Blue	Blue3	f	411	55	5
q.93.red1	93	Qualification 93	Qualification	2018-04-06T16:28:58.89	2018-04-06T16:31:52.97	6465	Red	Red1	f	327	27	25
q.93.red2	93	Qualification 93	Qualification	2018-04-06T16:28:58.89	2018-04-06T16:31:52.97	4469	Red	Red2	f	327	27	25
q.93.red3	93	Qualification 93	Qualification	2018-04-06T16:28:58.89	2018-04-06T16:31:52.97	4911	Red	Red3	f	327	27	25
q.94.blue1	94	Qualification 94	Qualification	2018-04-06T18:20:37.51	2018-04-06T18:24:14.23	3024	Blue	Blue1	f	265	33	0
q.94.blue2	94	Qualification 94	Qualification	2018-04-06T18:20:37.51	2018-04-06T18:24:14.23	2944	Blue	Blue2	f	265	33	0
q.94.blue3	94	Qualification 94	Qualification	2018-04-06T18:20:37.51	2018-04-06T18:24:14.23	1359	Blue	Blue3	f	265	33	0
q.94.red1	94	Qualification 94	Qualification	2018-04-06T18:20:37.51	2018-04-06T18:24:14.23	3238	Red	Red1	f	416	35	5
q.94.red2	94	Qualification 94	Qualification	2018-04-06T18:20:37.51	2018-04-06T18:24:14.23	5803	Red	Red2	f	416	35	5
q.94.red3	94	Qualification 94	Qualification	2018-04-06T18:20:37.51	2018-04-06T18:24:14.23	1510	Red	Red3	f	416	35	5
q.95.blue1	95	Qualification 95	Qualification	2018-04-06T16:42:48.3266667	2018-04-06T16:45:51.3066667	2906	Blue	Blue1	f	349	25	10
q.95.blue2	95	Qualification 95	Qualification	2018-04-06T16:42:48.3266667	2018-04-06T16:45:51.3066667	3223	Blue	Blue2	f	349	25	10
q.95.blue3	95	Qualification 95	Qualification	2018-04-06T16:42:48.3266667	2018-04-06T16:45:51.3066667	1425	Blue	Blue3	f	349	25	10
q.95.red1	95	Qualification 95	Qualification	2018-04-06T16:42:48.3266667	2018-04-06T16:45:51.3066667	2374	Red	Red1	f	348	43	25
q.95.red2	95	Qualification 95	Qualification	2018-04-06T16:42:48.3266667	2018-04-06T16:45:51.3066667	1595	Red	Red2	f	348	43	25
q.95.red3	95	Qualification 95	Qualification	2018-04-06T16:42:48.3266667	2018-04-06T16:45:51.3066667	3711	Red	Red3	f	348	43	25
q.96.blue1	96	Qualification 96	Qualification	2018-04-06T16:54:39.1433333	2018-04-06T16:57:36.62	1983	Blue	Blue1	f	453	41	30
q.96.blue2	96	Qualification 96	Qualification	2018-04-06T16:54:39.1433333	2018-04-06T16:57:36.62	3663	Blue	Blue2	f	453	41	30
q.96.blue3	96	Qualification 96	Qualification	2018-04-06T16:54:39.1433333	2018-04-06T16:57:36.62	5450	Blue	Blue3	f	453	41	30
q.96.red1	96	Qualification 96	Qualification	2018-04-06T16:54:39.1433333	2018-04-06T16:57:36.62	5920	Red	Red1	f	311	33	0
q.96.red2	96	Qualification 96	Qualification	2018-04-06T16:54:39.1433333	2018-04-06T16:57:36.62	3674	Red	Red2	f	311	33	0
q.96.red3	96	Qualification 96	Qualification	2018-04-06T16:54:39.1433333	2018-04-06T16:57:36.62	2811	Red	Red3	f	311	33	0
q.97.blue1	97	Qualification 97	Qualification	2018-04-06T17:00:51.5566667	2018-04-06T17:03:47.0266667	492	Blue	Blue1	f	299	37	25
q.97.blue2	97	Qualification 97	Qualification	2018-04-06T17:00:51.5566667	2018-04-06T17:03:47.0266667	4980	Blue	Blue2	f	299	37	25
q.97.blue3	97	Qualification 97	Qualification	2018-04-06T17:00:51.5566667	2018-04-06T17:03:47.0266667	948	Blue	Blue3	f	299	37	25
q.97.red1	97	Qualification 97	Qualification	2018-04-06T17:00:51.5566667	2018-04-06T17:03:47.0266667	2557	Red	Red1	f	378	33	10
q.97.red2	97	Qualification 97	Qualification	2018-04-06T17:00:51.5566667	2018-04-06T17:03:47.0266667	6443	Red	Red2	f	378	33	10
q.97.red3	97	Qualification 97	Qualification	2018-04-06T17:00:51.5566667	2018-04-06T17:03:47.0266667	4512	Red	Red3	f	378	33	10
q.98.blue1	98	Qualification 98	Qualification	2018-04-06T17:07:44.2133333	2018-04-06T17:10:39.7333333	1318	Blue	Blue1	f	435	35	35
q.98.blue2	98	Qualification 98	Qualification	2018-04-06T17:07:44.2133333	2018-04-06T17:10:39.7333333	7034	Blue	Blue2	f	435	35	35
q.98.blue3	98	Qualification 98	Qualification	2018-04-06T17:07:44.2133333	2018-04-06T17:10:39.7333333	4513	Blue	Blue3	f	435	35	35
q.98.red1	98	Qualification 98	Qualification	2018-04-06T17:07:44.2133333	2018-04-06T17:10:39.7333333	2471	Red	Red1	f	315	35	0
q.98.red2	98	Qualification 98	Qualification	2018-04-06T17:07:44.2133333	2018-04-06T17:10:39.7333333	6445	Red	Red2	f	315	35	0
q.98.red3	98	Qualification 98	Qualification	2018-04-06T17:07:44.2133333	2018-04-06T17:10:39.7333333	957	Red	Red3	f	315	35	0
q.99.blue1	99	Qualification 99	Qualification	2018-04-06T17:13:40.2133333	2018-04-06T17:16:37.4866667	2930	Blue	Blue1	f	485	47	50
q.99.blue2	99	Qualification 99	Qualification	2018-04-06T17:13:40.2133333	2018-04-06T17:16:37.4866667	360	Blue	Blue2	f	485	47	50
q.99.blue3	99	Qualification 99	Qualification	2018-04-06T17:13:40.2133333	2018-04-06T17:16:37.4866667	2522	Blue	Blue3	f	485	47	50
q.99.red1	99	Qualification 99	Qualification	2018-04-06T17:13:40.2133333	2018-04-06T17:16:37.4866667	4450	Red	Red1	f	253	35	0
q.99.red2	99	Qualification 99	Qualification	2018-04-06T17:13:40.2133333	2018-04-06T17:16:37.4866667	3238	Red	Red2	f	253	35	0
q.99.red3	99	Qualification 99	Qualification	2018-04-06T17:13:40.2133333	2018-04-06T17:16:37.4866667	2733	Red	Red3	f	253	35	0
q.100.blue1	100	Qualification 100	Qualification	2018-04-06T17:19:25.82	2018-04-06T17:22:17.98	6831	Blue	Blue1	f	327	35	10
q.100.blue2	100	Qualification 100	Qualification	2018-04-06T17:19:25.82	2018-04-06T17:22:17.98	3826	Blue	Blue2	f	327	35	10
q.100.blue3	100	Qualification 100	Qualification	2018-04-06T17:19:25.82	2018-04-06T17:22:17.98	997	Blue	Blue3	f	327	35	10
q.100.red1	100	Qualification 100	Qualification	2018-04-06T17:19:25.82	2018-04-06T17:22:17.98	3223	Red	Red1	f	363	53	0
q.100.red2	100	Qualification 100	Qualification	2018-04-06T17:19:25.82	2018-04-06T17:22:17.98	4061	Red	Red2	f	363	53	0
q.100.red3	100	Qualification 100	Qualification	2018-04-06T17:19:25.82	2018-04-06T17:22:17.98	4488	Red	Red3	f	363	53	0
q.101.blue1	101	Qualification 101	Qualification	2018-04-06T17:25:10.8366667	2018-04-06T17:28:04.1733333	2521	Blue	Blue1	f	457	49	0
q.101.blue2	101	Qualification 101	Qualification	2018-04-06T17:25:10.8366667	2018-04-06T17:28:04.1733333	5803	Blue	Blue2	f	457	49	0
q.101.blue3	101	Qualification 101	Qualification	2018-04-06T17:25:10.8366667	2018-04-06T17:28:04.1733333	5468	Blue	Blue3	f	457	49	0
q.101.red1	101	Qualification 101	Qualification	2018-04-06T17:25:10.8366667	2018-04-06T17:28:04.1733333	5920	Red	Red1	f	210	29	35
q.101.red2	101	Qualification 101	Qualification	2018-04-06T17:25:10.8366667	2018-04-06T17:28:04.1733333	4469	Red	Red2	f	210	29	35
q.101.red3	101	Qualification 101	Qualification	2018-04-06T17:25:10.8366667	2018-04-06T17:28:04.1733333	1510	Red	Red3	f	210	29	35
q.102.blue1	102	Qualification 102	Qualification	2018-04-06T17:31:06.11	2018-04-06T17:34:21.69	3711	Blue	Blue1	f	284	29	0
q.102.blue2	102	Qualification 102	Qualification	2018-04-06T17:31:06.11	2018-04-06T17:34:21.69	2910	Blue	Blue2	f	284	29	0
q.102.blue3	102	Qualification 102	Qualification	2018-04-06T17:31:06.11	2018-04-06T17:34:21.69	2605	Blue	Blue3	f	284	29	0
q.102.red1	102	Qualification 102	Qualification	2018-04-06T17:31:06.11	2018-04-06T17:34:21.69	3674	Red	Red1	f	368	31	10
q.102.red2	102	Qualification 102	Qualification	2018-04-06T17:31:06.11	2018-04-06T17:34:21.69	3024	Red	Red2	f	368	31	10
q.102.red3	102	Qualification 102	Qualification	2018-04-06T17:31:06.11	2018-04-06T17:34:21.69	4911	Red	Red3	f	368	31	10
q.103.blue1	103	Qualification 103	Qualification	2018-04-06T17:37:08.97	2018-04-06T17:40:08.1433333	3663	Blue	Blue1	f	274	33	5
q.103.blue2	103	Qualification 103	Qualification	2018-04-06T17:37:08.97	2018-04-06T17:40:08.1433333	4915	Blue	Blue2	f	274	33	5
q.103.blue3	103	Qualification 103	Qualification	2018-04-06T17:37:08.97	2018-04-06T17:40:08.1433333	6076	Blue	Blue3	f	274	33	5
q.103.red1	103	Qualification 103	Qualification	2018-04-06T17:37:08.97	2018-04-06T17:40:08.1433333	488	Red	Red1	f	374	35	0
q.103.red2	103	Qualification 103	Qualification	2018-04-06T17:37:08.97	2018-04-06T17:40:08.1433333	1359	Red	Red2	f	374	35	0
q.103.red3	103	Qualification 103	Qualification	2018-04-06T17:37:08.97	2018-04-06T17:40:08.1433333	1425	Red	Red3	f	374	35	0
q.104.blue1	104	Qualification 104	Qualification	2018-04-06T17:42:58.6866667	2018-04-06T17:49:37.9933333	2976	Blue	Blue1	f	365	31	135
q.104.blue2	104	Qualification 104	Qualification	2018-04-06T17:42:58.6866667	2018-04-06T17:49:37.9933333	1778	Blue	Blue2	f	365	31	135
q.104.blue3	104	Qualification 104	Qualification	2018-04-06T17:42:58.6866667	2018-04-06T17:49:37.9933333	2374	Blue	Blue3	f	365	31	135
q.104.red1	104	Qualification 104	Qualification	2018-04-06T17:42:58.6866667	2018-04-06T17:49:37.9933333	3218	Red	Red1	f	387	35	55
q.104.red2	104	Qualification 104	Qualification	2018-04-06T17:42:58.6866667	2018-04-06T17:49:37.9933333	2944	Red	Red2	f	387	35	55
q.104.red3	104	Qualification 104	Qualification	2018-04-06T17:42:58.6866667	2018-04-06T17:49:37.9933333	2046	Red	Red3	f	387	35	55
q.105.blue1	105	Qualification 105	Qualification	2018-04-06T17:53:29.9766667	2018-04-06T17:56:29.14	2147	Blue	Blue1	f	324	51	10
q.105.blue2	105	Qualification 105	Qualification	2018-04-06T17:53:29.9766667	2018-04-06T17:56:29.14	4662	Blue	Blue2	f	324	51	10
q.105.blue3	105	Qualification 105	Qualification	2018-04-06T17:53:29.9766667	2018-04-06T17:56:29.14	2990	Blue	Blue3	f	324	51	10
q.105.red1	105	Qualification 105	Qualification	2018-04-06T17:53:29.9766667	2018-04-06T17:56:29.14	2811	Red	Red1	f	311	33	0
q.105.red2	105	Qualification 105	Qualification	2018-04-06T17:53:29.9766667	2018-04-06T17:56:29.14	4131	Red	Red2	f	311	33	0
q.105.red3	105	Qualification 105	Qualification	2018-04-06T17:53:29.9766667	2018-04-06T17:56:29.14	847	Red	Red3	f	311	33	0
q.106.blue1	106	Qualification 106	Qualification	2018-04-06T18:00:07.1366667	2018-04-06T18:03:14.7433333	1595	Blue	Blue1	f	319	18	35
q.106.blue2	106	Qualification 106	Qualification	2018-04-06T18:00:07.1366667	2018-04-06T18:03:14.7433333	6845	Blue	Blue2	f	319	18	35
q.106.blue3	106	Qualification 106	Qualification	2018-04-06T18:00:07.1366667	2018-04-06T18:03:14.7433333	2635	Blue	Blue3	f	319	18	35
q.106.red1	106	Qualification 106	Qualification	2018-04-06T18:00:07.1366667	2018-04-06T18:03:14.7433333	1983	Red	Red1	f	396	31	25
q.106.red2	106	Qualification 106	Qualification	2018-04-06T18:00:07.1366667	2018-04-06T18:03:14.7433333	1540	Red	Red2	f	396	31	25
q.106.red3	106	Qualification 106	Qualification	2018-04-06T18:00:07.1366667	2018-04-06T18:03:14.7433333	4125	Red	Red3	f	396	31	25
q.107.blue1	107	Qualification 107	Qualification	2018-04-06T18:06:12.4	2018-04-06T18:09:14.9966667	5450	Blue	Blue1	f	356	51	5
q.107.blue2	107	Qualification 107	Qualification	2018-04-06T18:06:12.4	2018-04-06T18:09:14.9966667	2928	Blue	Blue2	f	356	51	5
q.107.blue3	107	Qualification 107	Qualification	2018-04-06T18:06:12.4	2018-04-06T18:09:14.9966667	4911	Blue	Blue3	f	356	51	5
q.107.red1	107	Qualification 107	Qualification	2018-04-06T18:06:12.4	2018-04-06T18:09:14.9966667	6465	Red	Red1	f	204	27	5
q.107.red2	107	Qualification 107	Qualification	2018-04-06T18:06:12.4	2018-04-06T18:09:14.9966667	2906	Red	Red2	f	204	27	5
q.107.red3	107	Qualification 107	Qualification	2018-04-06T18:06:12.4	2018-04-06T18:09:14.9966667	948	Red	Red3	f	204	27	5
q.108.blue1	108	Qualification 108	Qualification	2018-04-07T09:13:14.2866667	2018-04-07T09:16:09.2166667	957	Blue	Blue1	f	427	37	25
q.108.blue2	108	Qualification 108	Qualification	2018-04-07T09:13:14.2866667	2018-04-07T09:16:09.2166667	5803	Blue	Blue2	f	427	37	25
q.108.blue3	108	Qualification 108	Qualification	2018-04-07T09:13:14.2866667	2018-04-07T09:16:09.2166667	6076	Blue	Blue3	f	427	37	25
q.108.red1	108	Qualification 108	Qualification	2018-04-07T09:13:14.2866667	2018-04-07T09:16:09.2166667	492	Red	Red1	f	294	37	0
q.108.red2	108	Qualification 108	Qualification	2018-04-07T09:13:14.2866667	2018-04-07T09:16:09.2166667	3826	Red	Red2	f	294	37	0
q.108.red3	108	Qualification 108	Qualification	2018-04-07T09:13:14.2866667	2018-04-07T09:16:09.2166667	2522	Red	Red3	f	294	37	0
q.109.blue1	109	Qualification 109	Qualification	2018-04-07T09:19:44.7566667	2018-04-07T09:23:02.97	997	Blue	Blue1	f	306	43	0
q.109.blue2	109	Qualification 109	Qualification	2018-04-07T09:19:44.7566667	2018-04-07T09:23:02.97	4450	Blue	Blue2	f	306	43	0
q.109.blue3	109	Qualification 109	Qualification	2018-04-07T09:19:44.7566667	2018-04-07T09:23:02.97	3711	Blue	Blue3	f	306	43	0
q.109.red1	109	Qualification 109	Qualification	2018-04-07T09:19:44.7566667	2018-04-07T09:23:02.97	4513	Red	Red1	f	462	29	30
q.109.red2	109	Qualification 109	Qualification	2018-04-07T09:19:44.7566667	2018-04-07T09:23:02.97	5468	Red	Red2	f	462	29	30
q.109.red3	109	Qualification 109	Qualification	2018-04-07T09:19:44.7566667	2018-04-07T09:23:02.97	3218	Red	Red3	f	462	29	30
q.110.blue1	110	Qualification 110	Qualification	2018-04-07T09:25:56.2566667	2018-04-07T09:28:54.2333333	847	Blue	Blue1	f	391	41	5
q.110.blue2	110	Qualification 110	Qualification	2018-04-07T09:25:56.2566667	2018-04-07T09:28:54.2333333	2521	Blue	Blue2	f	391	41	5
q.110.blue3	110	Qualification 110	Qualification	2018-04-07T09:25:56.2566667	2018-04-07T09:28:54.2333333	4488	Blue	Blue3	f	391	41	5
q.110.red1	110	Qualification 110	Qualification	2018-04-07T09:25:56.2566667	2018-04-07T09:28:54.2333333	360	Red	Red1	f	350	35	45
q.110.red2	110	Qualification 110	Qualification	2018-04-07T09:25:56.2566667	2018-04-07T09:28:54.2333333	1318	Red	Red2	f	350	35	45
q.110.red3	110	Qualification 110	Qualification	2018-04-07T09:25:56.2566667	2018-04-07T09:28:54.2333333	4980	Red	Red3	f	350	35	45
q.111.blue1	111	Qualification 111	Qualification	2018-04-07T09:32:20.57	2018-04-07T09:35:32.66	7034	Blue	Blue1	f	220	35	0
q.111.blue2	111	Qualification 111	Qualification	2018-04-07T09:32:20.57	2018-04-07T09:35:32.66	2147	Blue	Blue2	f	220	35	0
q.111.blue3	111	Qualification 111	Qualification	2018-04-07T09:32:20.57	2018-04-07T09:35:32.66	1595	Blue	Blue3	f	220	35	0
q.111.red1	111	Qualification 111	Qualification	2018-04-07T09:32:20.57	2018-04-07T09:35:32.66	2910	Red	Red1	f	408	47	0
q.111.red2	111	Qualification 111	Qualification	2018-04-07T09:32:20.57	2018-04-07T09:35:32.66	1983	Red	Red2	f	408	47	0
q.111.red3	111	Qualification 111	Qualification	2018-04-07T09:32:20.57	2018-04-07T09:35:32.66	6845	Red	Red3	f	408	47	0
q.112.blue1	112	Qualification 112	Qualification	2018-04-07T09:39:36.15	2018-04-07T09:42:34.46	4061	Blue	Blue1	f	349	35	50
q.112.blue2	112	Qualification 112	Qualification	2018-04-07T09:39:36.15	2018-04-07T09:42:34.46	1425	Blue	Blue2	f	349	35	50
q.112.blue3	112	Qualification 112	Qualification	2018-04-07T09:39:36.15	2018-04-07T09:42:34.46	2976	Blue	Blue3	f	349	35	50
q.112.red1	112	Qualification 112	Qualification	2018-04-07T09:39:36.15	2018-04-07T09:42:34.46	488	Red	Red1	f	267	39	5
q.112.red2	112	Qualification 112	Qualification	2018-04-07T09:39:36.15	2018-04-07T09:42:34.46	6465	Red	Red2	f	267	39	5
q.112.red3	112	Qualification 112	Qualification	2018-04-07T09:39:36.15	2018-04-07T09:42:34.46	2990	Red	Red3	f	267	39	5
q.113.blue1	113	Qualification 113	Qualification	2018-04-07T09:45:42.21	2018-04-07T09:48:37.4433333	2928	Blue	Blue1	f	391	35	0
q.113.blue2	113	Qualification 113	Qualification	2018-04-07T09:45:42.21	2018-04-07T09:48:37.4433333	2557	Blue	Blue2	f	391	35	0
q.113.blue3	113	Qualification 113	Qualification	2018-04-07T09:45:42.21	2018-04-07T09:48:37.4433333	4131	Blue	Blue3	f	391	35	0
q.113.red1	113	Qualification 113	Qualification	2018-04-07T09:45:42.21	2018-04-07T09:48:37.4433333	2944	Red	Red1	f	190	25	20
q.113.red2	113	Qualification 113	Qualification	2018-04-07T09:45:42.21	2018-04-07T09:48:37.4433333	2635	Red	Red2	f	190	25	20
q.113.red3	113	Qualification 113	Qualification	2018-04-07T09:45:42.21	2018-04-07T09:48:37.4433333	3238	Red	Red3	f	190	25	20
q.114.blue1	114	Qualification 114	Qualification	2018-04-07T09:51:47.9033333	2018-04-07T09:54:45.4166667	6831	Blue	Blue1	f	268	35	10
q.114.blue2	114	Qualification 114	Qualification	2018-04-07T09:51:47.9033333	2018-04-07T09:54:45.4166667	1540	Blue	Blue2	f	268	35	10
q.114.blue3	114	Qualification 114	Qualification	2018-04-07T09:51:47.9033333	2018-04-07T09:54:45.4166667	1778	Blue	Blue3	f	268	35	10
q.114.red1	114	Qualification 114	Qualification	2018-04-07T09:51:47.9033333	2018-04-07T09:54:45.4166667	4469	Red	Red1	f	375	27	30
q.114.red2	114	Qualification 114	Qualification	2018-04-07T09:51:47.9033333	2018-04-07T09:54:45.4166667	2733	Red	Red2	f	375	27	30
q.114.red3	114	Qualification 114	Qualification	2018-04-07T09:51:47.9033333	2018-04-07T09:54:45.4166667	2906	Red	Red3	f	375	27	30
q.115.blue1	115	Qualification 115	Qualification	2018-04-07T09:58:42.9866667	2018-04-07T10:01:46.0266667	5450	Blue	Blue1	f	412	53	5
q.115.blue2	115	Qualification 115	Qualification	2018-04-07T09:58:42.9866667	2018-04-07T10:01:46.0266667	2811	Blue	Blue2	f	412	53	5
q.115.blue3	115	Qualification 115	Qualification	2018-04-07T09:58:42.9866667	2018-04-07T10:01:46.0266667	2046	Blue	Blue3	f	412	53	5
q.115.red1	115	Qualification 115	Qualification	2018-04-07T09:58:42.9866667	2018-04-07T10:01:46.0266667	1359	Red	Red1	f	240	10	0
q.115.red2	115	Qualification 115	Qualification	2018-04-07T09:58:42.9866667	2018-04-07T10:01:46.0266667	4512	Red	Red2	f	240	10	0
q.115.red3	115	Qualification 115	Qualification	2018-04-07T09:58:42.9866667	2018-04-07T10:01:46.0266667	1510	Red	Red3	f	240	10	0
q.116.blue1	116	Qualification 116	Qualification	2018-04-07T10:04:51.3666667	2018-04-07T10:08:19.52	3223	Blue	Blue1	f	425	53	0
q.116.blue2	116	Qualification 116	Qualification	2018-04-07T10:04:51.3666667	2018-04-07T10:08:19.52	4662	Blue	Blue2	f	425	53	0
q.116.blue3	116	Qualification 116	Qualification	2018-04-07T10:04:51.3666667	2018-04-07T10:08:19.52	2471	Blue	Blue3	f	425	53	0
q.116.red1	116	Qualification 116	Qualification	2018-04-07T10:04:51.3666667	2018-04-07T10:08:19.52	4915	Red	Red1	f	272	31	5
q.116.red2	116	Qualification 116	Qualification	2018-04-07T10:04:51.3666667	2018-04-07T10:08:19.52	2930	Red	Red2	f	272	31	5
q.116.red3	116	Qualification 116	Qualification	2018-04-07T10:04:51.3666667	2018-04-07T10:08:19.52	2605	Red	Red3	f	272	31	5
q.117.blue1	117	Qualification 117	Qualification	2018-04-07T10:13:27.4433333	2018-04-07T10:16:58.84	3663	Blue	Blue1	f	326	31	30
q.117.blue2	117	Qualification 117	Qualification	2018-04-07T10:13:27.4433333	2018-04-07T10:16:58.84	4125	Blue	Blue2	f	326	31	30
q.117.blue3	117	Qualification 117	Qualification	2018-04-07T10:13:27.4433333	2018-04-07T10:16:58.84	3024	Blue	Blue3	f	326	31	30
q.117.red1	117	Qualification 117	Qualification	2018-04-07T10:13:27.4433333	2018-04-07T10:16:58.84	6443	Red	Red1	f	340	10	25
q.117.red2	117	Qualification 117	Qualification	2018-04-07T10:13:27.4433333	2018-04-07T10:16:58.84	5920	Red	Red2	f	340	10	25
q.117.red3	117	Qualification 117	Qualification	2018-04-07T10:13:27.4433333	2018-04-07T10:16:58.84	6445	Red	Red3	f	340	10	25
q.118.blue1	118	Qualification 118	Qualification	2018-04-07T10:20:05.9833333	2018-04-07T10:25:31.01	2374	Blue	Blue1	f	145	37	0
q.118.blue2	118	Qualification 118	Qualification	2018-04-07T10:20:05.9833333	2018-04-07T10:25:31.01	7034	Blue	Blue2	f	145	37	0
q.118.blue3	118	Qualification 118	Qualification	2018-04-07T10:20:05.9833333	2018-04-07T10:25:31.01	2990	Blue	Blue3	f	145	37	0
q.118.red1	118	Qualification 118	Qualification	2018-04-07T10:20:05.9833333	2018-04-07T10:25:31.01	3674	Red	Red1	f	316	41	5
q.118.red2	118	Qualification 118	Qualification	2018-04-07T10:20:05.9833333	2018-04-07T10:25:31.01	360	Red	Red2	f	316	41	5
q.118.red3	118	Qualification 118	Qualification	2018-04-07T10:20:05.9833333	2018-04-07T10:25:31.01	492	Red	Red3	f	316	41	5
q.119.blue1	119	Qualification 119	Qualification	2018-04-07T10:28:21.2366667	2018-04-07T10:31:27.9966667	4131	Blue	Blue1	f	332	33	10
q.119.blue2	119	Qualification 119	Qualification	2018-04-07T10:28:21.2366667	2018-04-07T10:31:27.9966667	1595	Blue	Blue2	f	332	33	10
q.119.blue3	119	Qualification 119	Qualification	2018-04-07T10:28:21.2366667	2018-04-07T10:31:27.9966667	4911	Blue	Blue3	f	332	33	10
q.119.red1	119	Qualification 119	Qualification	2018-04-07T10:28:21.2366667	2018-04-07T10:31:27.9966667	6076	Red	Red1	f	358	25	30
q.119.red2	119	Qualification 119	Qualification	2018-04-07T10:28:21.2366667	2018-04-07T10:31:27.9966667	5468	Red	Red2	f	358	25	30
q.119.red3	119	Qualification 119	Qualification	2018-04-07T10:28:21.2366667	2018-04-07T10:31:27.9966667	1778	Red	Red3	f	358	25	30
q.120.blue1	120	Qualification 120	Qualification	2018-04-07T10:40:01.0133333	2018-04-07T10:42:56.4166667	2944	Blue	Blue1	f	319	51	0
q.120.blue2	120	Qualification 120	Qualification	2018-04-07T10:40:01.0133333	2018-04-07T10:42:56.4166667	1318	Blue	Blue2	f	319	51	0
q.120.blue3	120	Qualification 120	Qualification	2018-04-07T10:40:01.0133333	2018-04-07T10:42:56.4166667	1540	Blue	Blue3	f	319	51	0
q.120.red1	120	Qualification 120	Qualification	2018-04-07T10:40:01.0133333	2018-04-07T10:42:56.4166667	948	Red	Red1	f	251	35	25
q.120.red2	120	Qualification 120	Qualification	2018-04-07T10:40:01.0133333	2018-04-07T10:42:56.4166667	1359	Red	Red2	f	251	35	25
q.120.red3	120	Qualification 120	Qualification	2018-04-07T10:40:01.0133333	2018-04-07T10:42:56.4166667	4061	Red	Red3	f	251	35	25
q.121.blue1	121	Qualification 121	Qualification	2018-04-07T10:45:56.94	2018-04-07T10:48:50.7733333	2910	Blue	Blue1	f	413	55	5
q.121.blue2	121	Qualification 121	Qualification	2018-04-07T10:45:56.94	2018-04-07T10:48:50.7733333	3223	Blue	Blue2	f	413	55	5
q.121.blue3	121	Qualification 121	Qualification	2018-04-07T10:45:56.94	2018-04-07T10:48:50.7733333	6465	Blue	Blue3	f	413	55	5
q.121.red1	121	Qualification 121	Qualification	2018-04-07T10:45:56.94	2018-04-07T10:48:50.7733333	2521	Red	Red1	f	274	37	0
q.121.red2	121	Qualification 121	Qualification	2018-04-07T10:45:56.94	2018-04-07T10:48:50.7733333	1510	Red	Red2	f	274	37	0
q.121.red3	121	Qualification 121	Qualification	2018-04-07T10:45:56.94	2018-04-07T10:48:50.7733333	2635	Red	Red3	f	274	37	0
q.122.blue1	122	Qualification 122	Qualification	2018-04-07T10:52:18.4066667	2018-04-07T10:55:11.49	4980	Blue	Blue1	f	489	47	30
q.122.blue2	122	Qualification 122	Qualification	2018-04-07T10:52:18.4066667	2018-04-07T10:55:11.49	2605	Blue	Blue2	f	489	47	30
q.122.blue3	122	Qualification 122	Qualification	2018-04-07T10:52:18.4066667	2018-04-07T10:55:11.49	4488	Blue	Blue3	f	489	47	30
q.122.red1	122	Qualification 122	Qualification	2018-04-07T10:52:18.4066667	2018-04-07T10:55:11.49	2906	Red	Red1	f	260	35	0
q.122.red2	122	Qualification 122	Qualification	2018-04-07T10:52:18.4066667	2018-04-07T10:55:11.49	3238	Red	Red2	f	260	35	0
q.122.red3	122	Qualification 122	Qualification	2018-04-07T10:52:18.4066667	2018-04-07T10:55:11.49	3663	Red	Red3	f	260	35	0
q.123.blue1	123	Qualification 123	Qualification	2018-04-07T10:58:20.8666667	2018-04-07T11:01:23.6633333	2733	Blue	Blue1	f	269	45	0
q.123.blue2	123	Qualification 123	Qualification	2018-04-07T10:58:20.8666667	2018-04-07T11:01:23.6633333	2811	Blue	Blue2	f	269	45	0
q.123.blue3	123	Qualification 123	Qualification	2018-04-07T10:58:20.8666667	2018-04-07T11:01:23.6633333	4662	Blue	Blue3	f	269	45	0
q.123.red1	123	Qualification 123	Qualification	2018-04-07T10:58:20.8666667	2018-04-07T11:01:23.6633333	2046	Red	Red1	f	473	31	30
q.123.red2	123	Qualification 123	Qualification	2018-04-07T10:58:20.8666667	2018-04-07T11:01:23.6633333	4450	Red	Red2	f	473	31	30
q.123.red3	123	Qualification 123	Qualification	2018-04-07T10:58:20.8666667	2018-04-07T11:01:23.6633333	3674	Red	Red3	f	473	31	30
q.124.blue1	124	Qualification 124	Qualification	2018-04-07T11:04:34.6633333	2018-04-07T11:12:06.9466667	4915	Blue	Blue1	f	105	15	50
q.124.blue2	124	Qualification 124	Qualification	2018-04-07T11:04:34.6633333	2018-04-07T11:12:06.9466667	4125	Blue	Blue2	f	105	15	50
q.124.blue3	124	Qualification 124	Qualification	2018-04-07T11:04:34.6633333	2018-04-07T11:12:06.9466667	847	Blue	Blue3	f	105	15	50
q.124.red1	124	Qualification 124	Qualification	2018-04-07T11:04:34.6633333	2018-04-07T11:12:06.9466667	2930	Red	Red1	f	487	47	25
q.124.red2	124	Qualification 124	Qualification	2018-04-07T11:04:34.6633333	2018-04-07T11:12:06.9466667	2557	Red	Red2	f	487	47	25
q.124.red3	124	Qualification 124	Qualification	2018-04-07T11:04:34.6633333	2018-04-07T11:12:06.9466667	5803	Red	Red3	f	487	47	25
q.125.blue1	125	Qualification 125	Qualification	2018-04-07T11:15:29.5	2018-04-07T11:20:19.77	2471	Blue	Blue1	f	423	53	5
q.125.blue2	125	Qualification 125	Qualification	2018-04-07T11:15:29.5	2018-04-07T11:20:19.77	1983	Blue	Blue2	f	423	53	5
q.125.blue3	125	Qualification 125	Qualification	2018-04-07T11:15:29.5	2018-04-07T11:20:19.77	4469	Blue	Blue3	f	423	53	5
q.125.red1	125	Qualification 125	Qualification	2018-04-07T11:15:29.5	2018-04-07T11:20:19.77	3218	Red	Red1	f	154	18	10
q.125.red2	125	Qualification 125	Qualification	2018-04-07T11:15:29.5	2018-04-07T11:20:19.77	3826	Red	Red2	f	154	18	10
q.125.red3	125	Qualification 125	Qualification	2018-04-07T11:15:29.5	2018-04-07T11:20:19.77	1425	Red	Red3	f	154	18	10
q.126.blue1	126	Qualification 126	Qualification	2018-04-07T11:23:20.4333333	2018-04-07T11:26:14.1433333	4513	Blue	Blue1	f	344	21	25
q.126.blue2	126	Qualification 126	Qualification	2018-04-07T11:23:20.4333333	2018-04-07T11:26:14.1433333	3024	Blue	Blue2	f	344	21	25
q.126.blue3	126	Qualification 126	Qualification	2018-04-07T11:23:20.4333333	2018-04-07T11:26:14.1433333	957	Blue	Blue3	f	344	21	25
q.126.red1	126	Qualification 126	Qualification	2018-04-07T11:23:20.4333333	2018-04-07T11:26:14.1433333	5450	Red	Red1	f	286	29	0
q.126.red2	126	Qualification 126	Qualification	2018-04-07T11:23:20.4333333	2018-04-07T11:26:14.1433333	6831	Red	Red2	f	286	29	0
q.126.red3	126	Qualification 126	Qualification	2018-04-07T11:23:20.4333333	2018-04-07T11:26:14.1433333	6845	Red	Red3	f	286	29	0
q.127.blue1	127	Qualification 127	Qualification	2018-04-07T11:29:15.93	2018-04-07T11:32:11.3933333	6443	Blue	Blue1	f	272	33	10
q.127.blue2	127	Qualification 127	Qualification	2018-04-07T11:29:15.93	2018-04-07T11:32:11.3933333	2374	Blue	Blue2	f	272	33	10
q.127.blue3	127	Qualification 127	Qualification	2018-04-07T11:29:15.93	2018-04-07T11:32:11.3933333	488	Blue	Blue3	f	272	33	10
q.127.red1	127	Qualification 127	Qualification	2018-04-07T11:29:15.93	2018-04-07T11:32:11.3933333	3711	Red	Red1	f	364	49	0
q.127.red2	127	Qualification 127	Qualification	2018-04-07T11:29:15.93	2018-04-07T11:32:11.3933333	6445	Red	Red2	f	364	49	0
q.127.red3	127	Qualification 127	Qualification	2018-04-07T11:29:15.93	2018-04-07T11:32:11.3933333	2522	Red	Red3	f	364	49	0
q.128.blue1	128	Qualification 128	Qualification	2018-04-07T11:36:33.0366667	2018-04-07T11:39:34.3233333	4512	Blue	Blue1	f	405	35	25
q.128.blue2	128	Qualification 128	Qualification	2018-04-07T11:36:33.0366667	2018-04-07T11:39:34.3233333	997	Blue	Blue2	f	405	35	25
q.128.blue3	128	Qualification 128	Qualification	2018-04-07T11:36:33.0366667	2018-04-07T11:39:34.3233333	2928	Blue	Blue3	f	405	35	25
q.128.red1	128	Qualification 128	Qualification	2018-04-07T11:36:33.0366667	2018-04-07T11:39:34.3233333	2976	Red	Red1	f	296	29	0
q.128.red2	128	Qualification 128	Qualification	2018-04-07T11:36:33.0366667	2018-04-07T11:39:34.3233333	2147	Red	Red2	f	296	29	0
q.128.red3	128	Qualification 128	Qualification	2018-04-07T11:36:33.0366667	2018-04-07T11:39:34.3233333	5920	Red	Red3	f	296	29	0
\.


--
-- Data for Name: schedule; Type: TABLE DATA; Schema: public; Owner: irs1318
--

COPY public.schedule ("row.names", match, description, level, field, start, team, alliance, station, surrogate) FROM stdin;
q.1.blue1	1	Qualification 1	Qualification	Primary	2018-04-05T14:00:00	6845	Blue	Blue1	f
q.1.blue2	1	Qualification 1	Qualification	Primary	2018-04-05T14:00:00	4488	Blue	Blue2	f
q.1.blue3	1	Qualification 1	Qualification	Primary	2018-04-05T14:00:00	6445	Blue	Blue3	f
q.1.red1	1	Qualification 1	Qualification	Primary	2018-04-05T14:00:00	2471	Red	Red1	f
q.1.red2	1	Qualification 1	Qualification	Primary	2018-04-05T14:00:00	2521	Red	Red2	f
q.1.red3	1	Qualification 1	Qualification	Primary	2018-04-05T14:00:00	3674	Red	Red3	f
q.2.blue1	2	Qualification 2	Qualification	Primary	2018-04-05T14:07:00	2976	Blue	Blue1	f
q.2.blue2	2	Qualification 2	Qualification	Primary	2018-04-05T14:07:00	4911	Blue	Blue2	f
q.2.blue3	2	Qualification 2	Qualification	Primary	2018-04-05T14:07:00	3826	Blue	Blue3	f
q.2.red1	2	Qualification 2	Qualification	Primary	2018-04-05T14:07:00	2930	Red	Red1	f
q.2.red2	2	Qualification 2	Qualification	Primary	2018-04-05T14:07:00	1510	Red	Red2	f
q.2.red3	2	Qualification 2	Qualification	Primary	2018-04-05T14:07:00	3663	Red	Red3	f
q.3.blue1	3	Qualification 3	Qualification	Primary	2018-04-05T14:14:00	2990	Blue	Blue1	f
q.3.blue2	3	Qualification 3	Qualification	Primary	2018-04-05T14:14:00	5450	Blue	Blue2	f
q.3.blue3	3	Qualification 3	Qualification	Primary	2018-04-05T14:14:00	3218	Blue	Blue3	f
q.3.red1	3	Qualification 3	Qualification	Primary	2018-04-05T14:14:00	4125	Red	Red1	f
q.3.red2	3	Qualification 3	Qualification	Primary	2018-04-05T14:14:00	3238	Red	Red2	f
q.3.red3	3	Qualification 3	Qualification	Primary	2018-04-05T14:14:00	7034	Red	Red3	f
q.4.blue1	4	Qualification 4	Qualification	Primary	2018-04-05T14:21:00	847	Blue	Blue1	f
q.4.blue2	4	Qualification 4	Qualification	Primary	2018-04-05T14:21:00	1425	Blue	Blue2	f
q.4.blue3	4	Qualification 4	Qualification	Primary	2018-04-05T14:21:00	2557	Blue	Blue3	f
q.4.red1	4	Qualification 4	Qualification	Primary	2018-04-05T14:21:00	1540	Red	Red1	f
q.4.red2	4	Qualification 4	Qualification	Primary	2018-04-05T14:21:00	997	Red	Red2	f
q.4.red3	4	Qualification 4	Qualification	Primary	2018-04-05T14:21:00	4513	Red	Red3	f
q.5.blue1	5	Qualification 5	Qualification	Primary	2018-04-05T14:28:00	6465	Blue	Blue1	f
q.5.blue2	5	Qualification 5	Qualification	Primary	2018-04-05T14:28:00	1595	Blue	Blue2	f
q.5.blue3	5	Qualification 5	Qualification	Primary	2018-04-05T14:28:00	4450	Blue	Blue3	f
q.5.red1	5	Qualification 5	Qualification	Primary	2018-04-05T14:28:00	4980	Red	Red1	f
q.5.red2	5	Qualification 5	Qualification	Primary	2018-04-05T14:28:00	957	Red	Red2	f
q.5.red3	5	Qualification 5	Qualification	Primary	2018-04-05T14:28:00	2944	Red	Red3	f
q.6.blue1	6	Qualification 6	Qualification	Primary	2018-04-05T14:35:00	4061	Blue	Blue1	f
q.6.blue2	6	Qualification 6	Qualification	Primary	2018-04-05T14:35:00	4662	Blue	Blue2	f
q.6.blue3	6	Qualification 6	Qualification	Primary	2018-04-05T14:35:00	2910	Blue	Blue3	f
q.6.red1	6	Qualification 6	Qualification	Primary	2018-04-05T14:35:00	5803	Red	Red1	f
q.6.red2	6	Qualification 6	Qualification	Primary	2018-04-05T14:35:00	2928	Red	Red2	f
q.6.red3	6	Qualification 6	Qualification	Primary	2018-04-05T14:35:00	6443	Red	Red3	f
q.7.blue1	7	Qualification 7	Qualification	Primary	2018-04-05T14:42:00	948	Blue	Blue1	f
q.7.blue2	7	Qualification 7	Qualification	Primary	2018-04-05T14:42:00	4512	Blue	Blue2	f
q.7.blue3	7	Qualification 7	Qualification	Primary	2018-04-05T14:42:00	360	Blue	Blue3	f
q.7.red1	7	Qualification 7	Qualification	Primary	2018-04-05T14:42:00	3024	Red	Red1	f
q.7.red2	7	Qualification 7	Qualification	Primary	2018-04-05T14:42:00	6831	Red	Red2	f
q.7.red3	7	Qualification 7	Qualification	Primary	2018-04-05T14:42:00	3711	Red	Red3	f
q.8.blue1	8	Qualification 8	Qualification	Primary	2018-04-05T14:49:00	2147	Blue	Blue1	f
q.8.blue2	8	Qualification 8	Qualification	Primary	2018-04-05T14:49:00	5468	Blue	Blue2	f
q.8.blue3	8	Qualification 8	Qualification	Primary	2018-04-05T14:49:00	2906	Blue	Blue3	f
q.8.red1	8	Qualification 8	Qualification	Primary	2018-04-05T14:49:00	6076	Red	Red1	f
q.8.red2	8	Qualification 8	Qualification	Primary	2018-04-05T14:49:00	1318	Red	Red2	f
q.8.red3	8	Qualification 8	Qualification	Primary	2018-04-05T14:49:00	2733	Red	Red3	f
q.9.blue1	9	Qualification 9	Qualification	Primary	2018-04-05T14:56:00	4469	Blue	Blue1	f
q.9.blue2	9	Qualification 9	Qualification	Primary	2018-04-05T14:56:00	488	Blue	Blue2	f
q.9.blue3	9	Qualification 9	Qualification	Primary	2018-04-05T14:56:00	492	Blue	Blue3	f
q.9.red1	9	Qualification 9	Qualification	Primary	2018-04-05T14:56:00	4131	Red	Red1	f
q.9.red2	9	Qualification 9	Qualification	Primary	2018-04-05T14:56:00	1983	Red	Red2	f
q.9.red3	9	Qualification 9	Qualification	Primary	2018-04-05T14:56:00	2605	Red	Red3	f
q.10.blue1	10	Qualification 10	Qualification	Primary	2018-04-05T15:03:00	2046	Blue	Blue1	f
q.10.blue2	10	Qualification 10	Qualification	Primary	2018-04-05T15:03:00	2522	Blue	Blue2	f
q.10.blue3	10	Qualification 10	Qualification	Primary	2018-04-05T15:03:00	2374	Blue	Blue3	f
q.10.red1	10	Qualification 10	Qualification	Primary	2018-04-05T15:03:00	2635	Red	Red1	f
q.10.red2	10	Qualification 10	Qualification	Primary	2018-04-05T15:03:00	4915	Red	Red2	f
q.10.red3	10	Qualification 10	Qualification	Primary	2018-04-05T15:03:00	5920	Red	Red3	f
q.11.blue1	11	Qualification 11	Qualification	Primary	2018-04-05T15:10:00	1359	Blue	Blue1	f
q.11.blue2	11	Qualification 11	Qualification	Primary	2018-04-05T15:10:00	2811	Blue	Blue2	f
q.11.blue3	11	Qualification 11	Qualification	Primary	2018-04-05T15:10:00	6443	Blue	Blue3	f
q.11.red1	11	Qualification 11	Qualification	Primary	2018-04-05T15:10:00	4513	Red	Red1	f
q.11.red2	11	Qualification 11	Qualification	Primary	2018-04-05T15:10:00	1778	Red	Red2	f
q.11.red3	11	Qualification 11	Qualification	Primary	2018-04-05T15:10:00	3223	Red	Red3	f
q.12.blue1	12	Qualification 12	Qualification	Primary	2018-04-05T15:17:00	2930	Blue	Blue1	f
q.12.blue2	12	Qualification 12	Qualification	Primary	2018-04-05T15:17:00	7034	Blue	Blue2	f
q.12.blue3	12	Qualification 12	Qualification	Primary	2018-04-05T15:17:00	6831	Blue	Blue3	f
q.12.red1	12	Qualification 12	Qualification	Primary	2018-04-05T15:17:00	2557	Red	Red1	f
q.12.red2	12	Qualification 12	Qualification	Primary	2018-04-05T15:17:00	3663	Red	Red2	f
q.12.red3	12	Qualification 12	Qualification	Primary	2018-04-05T15:17:00	3711	Red	Red3	f
q.13.blue1	13	Qualification 13	Qualification	Primary	2018-04-05T15:24:00	1425	Blue	Blue1	f
q.13.blue2	13	Qualification 13	Qualification	Primary	2018-04-05T15:24:00	1510	Blue	Blue2	f
q.13.blue3	13	Qualification 13	Qualification	Primary	2018-04-05T15:24:00	5450	Blue	Blue3	f
q.13.red1	13	Qualification 13	Qualification	Primary	2018-04-05T15:24:00	360	Red	Red1	f
q.13.red2	13	Qualification 13	Qualification	Primary	2018-04-05T15:24:00	4662	Red	Red2	f
q.13.red3	13	Qualification 13	Qualification	Primary	2018-04-05T15:24:00	6445	Red	Red3	f
q.14.blue1	14	Qualification 14	Qualification	Primary	2018-04-05T15:31:00	4469	Blue	Blue1	f
q.14.blue2	14	Qualification 14	Qualification	Primary	2018-04-05T15:31:00	2147	Blue	Blue2	f
q.14.blue3	14	Qualification 14	Qualification	Primary	2018-04-05T15:31:00	847	Blue	Blue3	f
q.14.red1	14	Qualification 14	Qualification	Primary	2018-04-05T15:31:00	2976	Red	Red1	f
q.14.red2	14	Qualification 14	Qualification	Primary	2018-04-05T15:31:00	1595	Red	Red2	f
q.14.red3	14	Qualification 14	Qualification	Primary	2018-04-05T15:31:00	3024	Red	Red3	f
q.15.blue1	15	Qualification 15	Qualification	Primary	2018-04-05T15:38:00	5803	Blue	Blue1	f
q.15.blue2	15	Qualification 15	Qualification	Primary	2018-04-05T15:38:00	6845	Blue	Blue2	f
q.15.blue3	15	Qualification 15	Qualification	Primary	2018-04-05T15:38:00	3826	Blue	Blue3	f
q.15.red1	15	Qualification 15	Qualification	Primary	2018-04-05T15:38:00	4450	Red	Red1	f
q.15.red2	15	Qualification 15	Qualification	Primary	2018-04-05T15:38:00	2990	Red	Red2	f
q.15.red3	15	Qualification 15	Qualification	Primary	2018-04-05T15:38:00	948	Red	Red3	f
q.16.blue1	16	Qualification 16	Qualification	Primary	2018-04-05T15:45:00	3218	Blue	Blue1	f
q.16.blue2	16	Qualification 16	Qualification	Primary	2018-04-05T15:45:00	3223	Blue	Blue2	f
q.16.blue3	16	Qualification 16	Qualification	Primary	2018-04-05T15:45:00	2811	Blue	Blue3	f
q.16.red1	16	Qualification 16	Qualification	Primary	2018-04-05T15:45:00	2944	Red	Red1	f
q.16.red2	16	Qualification 16	Qualification	Primary	2018-04-05T15:45:00	2906	Red	Red2	f
q.16.red3	16	Qualification 16	Qualification	Primary	2018-04-05T15:45:00	4131	Red	Red3	f
q.17.blue1	17	Qualification 17	Qualification	Primary	2018-04-05T15:52:00	4512	Blue	Blue1	f
q.17.blue2	17	Qualification 17	Qualification	Primary	2018-04-05T15:52:00	2471	Blue	Blue2	f
q.17.blue3	17	Qualification 17	Qualification	Primary	2018-04-05T15:52:00	2605	Blue	Blue3	f
q.17.red1	17	Qualification 17	Qualification	Primary	2018-04-05T15:52:00	2635	Red	Red1	f
q.17.red2	17	Qualification 17	Qualification	Primary	2018-04-05T15:52:00	4061	Red	Red2	f
q.17.red3	17	Qualification 17	Qualification	Primary	2018-04-05T15:52:00	2733	Red	Red3	f
q.18.blue1	18	Qualification 18	Qualification	Primary	2018-04-05T15:59:00	4125	Blue	Blue1	f
q.18.blue2	18	Qualification 18	Qualification	Primary	2018-04-05T15:59:00	2374	Blue	Blue2	f
q.18.blue3	18	Qualification 18	Qualification	Primary	2018-04-05T15:59:00	3674	Blue	Blue3	f
q.18.red1	18	Qualification 18	Qualification	Primary	2018-04-05T15:59:00	2928	Red	Red1	f
q.18.red2	18	Qualification 18	Qualification	Primary	2018-04-05T15:59:00	5468	Red	Red2	f
q.18.red3	18	Qualification 18	Qualification	Primary	2018-04-05T15:59:00	1318	Red	Red3	f
q.19.blue1	19	Qualification 19	Qualification	Primary	2018-04-05T16:06:00	957	Blue	Blue1	f
q.19.blue2	19	Qualification 19	Qualification	Primary	2018-04-05T16:06:00	4911	Blue	Blue2	f
q.19.blue3	19	Qualification 19	Qualification	Primary	2018-04-05T16:06:00	1778	Blue	Blue3	f
q.19.red1	19	Qualification 19	Qualification	Primary	2018-04-05T16:06:00	4915	Red	Red1	f
q.19.red2	19	Qualification 19	Qualification	Primary	2018-04-05T16:06:00	4980	Red	Red2	f
q.19.red3	19	Qualification 19	Qualification	Primary	2018-04-05T16:06:00	1983	Red	Red3	f
q.20.blue1	20	Qualification 20	Qualification	Primary	2018-04-05T16:13:00	6465	Blue	Blue1	f
q.20.blue2	20	Qualification 20	Qualification	Primary	2018-04-05T16:13:00	1540	Blue	Blue2	f
q.20.blue3	20	Qualification 20	Qualification	Primary	2018-04-05T16:13:00	492	Blue	Blue3	f
q.20.red1	20	Qualification 20	Qualification	Primary	2018-04-05T16:13:00	5920	Red	Red1	f
q.20.red2	20	Qualification 20	Qualification	Primary	2018-04-05T16:13:00	4488	Red	Red2	f
q.20.red3	20	Qualification 20	Qualification	Primary	2018-04-05T16:13:00	488	Red	Red3	f
q.21.blue1	21	Qualification 21	Qualification	Primary	2018-04-05T16:20:00	6076	Blue	Blue1	f
q.21.blue2	21	Qualification 21	Qualification	Primary	2018-04-05T16:20:00	2046	Blue	Blue2	f
q.21.blue3	21	Qualification 21	Qualification	Primary	2018-04-05T16:20:00	3238	Blue	Blue3	f
q.21.red1	21	Qualification 21	Qualification	Primary	2018-04-05T16:20:00	2910	Red	Red1	f
q.21.red2	21	Qualification 21	Qualification	Primary	2018-04-05T16:20:00	2521	Red	Red2	f
q.21.red3	21	Qualification 21	Qualification	Primary	2018-04-05T16:20:00	997	Red	Red3	f
q.22.blue1	22	Qualification 22	Qualification	Primary	2018-04-05T16:27:00	4131	Blue	Blue1	f
q.22.blue2	22	Qualification 22	Qualification	Primary	2018-04-05T16:27:00	1359	Blue	Blue2	f
q.22.blue3	22	Qualification 22	Qualification	Primary	2018-04-05T16:27:00	2147	Blue	Blue3	f
q.22.red1	22	Qualification 22	Qualification	Primary	2018-04-05T16:27:00	2522	Red	Red1	f
q.22.red2	22	Qualification 22	Qualification	Primary	2018-04-05T16:27:00	1425	Red	Red2	f
q.22.red3	22	Qualification 22	Qualification	Primary	2018-04-05T16:27:00	6831	Red	Red3	f
q.23.blue1	23	Qualification 23	Qualification	Primary	2018-04-05T16:34:00	3223	Blue	Blue1	f
q.23.blue2	23	Qualification 23	Qualification	Primary	2018-04-05T16:34:00	2635	Blue	Blue2	f
q.23.blue3	23	Qualification 23	Qualification	Primary	2018-04-05T16:34:00	4469	Blue	Blue3	f
q.23.red1	23	Qualification 23	Qualification	Primary	2018-04-05T16:34:00	5450	Red	Red1	f
q.23.red2	23	Qualification 23	Qualification	Primary	2018-04-05T16:34:00	6445	Red	Red2	f
q.23.red3	23	Qualification 23	Qualification	Primary	2018-04-05T16:34:00	4450	Red	Red3	f
q.24.blue1	24	Qualification 24	Qualification	Primary	2018-04-05T16:41:00	7034	Blue	Blue1	f
q.24.blue2	24	Qualification 24	Qualification	Primary	2018-04-05T16:41:00	360	Blue	Blue2	f
q.24.blue3	24	Qualification 24	Qualification	Primary	2018-04-05T16:41:00	2976	Blue	Blue3	f
q.24.red1	24	Qualification 24	Qualification	Primary	2018-04-05T16:41:00	2811	Red	Red1	f
q.24.red2	24	Qualification 24	Qualification	Primary	2018-04-05T16:41:00	2906	Red	Red2	f
q.24.red3	24	Qualification 24	Qualification	Primary	2018-04-05T16:41:00	4125	Red	Red3	f
q.25.blue1	25	Qualification 25	Qualification	Primary	2018-04-05T16:48:00	3663	Blue	Blue1	f
q.25.blue2	25	Qualification 25	Qualification	Primary	2018-04-05T16:48:00	2944	Blue	Blue2	f
q.25.blue3	25	Qualification 25	Qualification	Primary	2018-04-05T16:48:00	5920	Blue	Blue3	f
q.25.red1	25	Qualification 25	Qualification	Primary	2018-04-05T16:48:00	2733	Red	Red1	f
q.25.red2	25	Qualification 25	Qualification	Primary	2018-04-05T16:48:00	3711	Red	Red2	f
q.25.red3	25	Qualification 25	Qualification	Primary	2018-04-05T16:48:00	6845	Red	Red3	f
q.26.blue1	26	Qualification 26	Qualification	Primary	2018-04-05T16:55:00	3238	Blue	Blue1	f
q.26.blue2	26	Qualification 26	Qualification	Primary	2018-04-05T16:55:00	957	Blue	Blue2	f
q.26.blue3	26	Qualification 26	Qualification	Primary	2018-04-05T16:55:00	2910	Blue	Blue3	f
q.26.red1	26	Qualification 26	Qualification	Primary	2018-04-05T16:55:00	1540	Red	Red1	f
q.26.red2	26	Qualification 26	Qualification	Primary	2018-04-05T16:55:00	2374	Red	Red2	f
q.26.red3	26	Qualification 26	Qualification	Primary	2018-04-05T16:55:00	2471	Red	Red3	f
q.27.blue1	27	Qualification 27	Qualification	Primary	2018-04-05T17:02:00	2990	Blue	Blue1	f
q.27.blue2	27	Qualification 27	Qualification	Primary	2018-04-05T17:02:00	6443	Blue	Blue2	f
q.27.blue3	27	Qualification 27	Qualification	Primary	2018-04-05T17:02:00	4915	Blue	Blue3	f
q.27.red1	27	Qualification 27	Qualification	Primary	2018-04-05T17:02:00	1983	Red	Red1	f
q.27.red2	27	Qualification 27	Qualification	Primary	2018-04-05T17:02:00	1595	Red	Red2	f
q.27.red3	27	Qualification 27	Qualification	Primary	2018-04-05T17:02:00	1318	Red	Red3	f
q.28.blue1	28	Qualification 28	Qualification	Primary	2018-04-05T17:09:00	2928	Blue	Blue1	f
q.28.blue2	28	Qualification 28	Qualification	Primary	2018-04-05T17:09:00	6076	Blue	Blue2	f
q.28.blue3	28	Qualification 28	Qualification	Primary	2018-04-05T17:09:00	2930	Blue	Blue3	f
q.28.red1	28	Qualification 28	Qualification	Primary	2018-04-05T17:09:00	3024	Red	Red1	f
q.28.red2	28	Qualification 28	Qualification	Primary	2018-04-05T17:09:00	4488	Red	Red2	f
q.28.red3	28	Qualification 28	Qualification	Primary	2018-04-05T17:09:00	2046	Red	Red3	f
q.29.blue1	29	Qualification 29	Qualification	Primary	2018-04-05T17:16:00	1510	Blue	Blue1	f
q.29.blue2	29	Qualification 29	Qualification	Primary	2018-04-05T17:16:00	3674	Blue	Blue2	f
q.29.blue3	29	Qualification 29	Qualification	Primary	2018-04-05T17:16:00	4061	Blue	Blue3	f
q.29.red1	29	Qualification 29	Qualification	Primary	2018-04-05T17:16:00	948	Red	Red1	f
q.29.red2	29	Qualification 29	Qualification	Primary	2018-04-05T17:16:00	847	Red	Red2	f
q.29.red3	29	Qualification 29	Qualification	Primary	2018-04-05T17:16:00	3218	Red	Red3	f
q.30.blue1	30	Qualification 30	Qualification	Primary	2018-04-05T17:23:00	2521	Blue	Blue1	f
q.30.blue2	30	Qualification 30	Qualification	Primary	2018-04-05T17:23:00	488	Blue	Blue2	f
q.30.blue3	30	Qualification 30	Qualification	Primary	2018-04-05T17:23:00	4512	Blue	Blue3	f
q.30.red1	30	Qualification 30	Qualification	Primary	2018-04-05T17:23:00	5803	Red	Red1	f
q.30.red2	30	Qualification 30	Qualification	Primary	2018-04-05T17:23:00	4911	Red	Red2	f
q.30.red3	30	Qualification 30	Qualification	Primary	2018-04-05T17:23:00	4513	Red	Red3	f
q.31.blue1	31	Qualification 31	Qualification	Primary	2018-04-05T17:30:00	1778	Blue	Blue1	f
q.31.blue2	31	Qualification 31	Qualification	Primary	2018-04-05T17:30:00	4980	Blue	Blue2	f
q.31.blue3	31	Qualification 31	Qualification	Primary	2018-04-05T17:30:00	1359	Blue	Blue3	f
q.31.red1	31	Qualification 31	Qualification	Primary	2018-04-05T17:30:00	492	Red	Red1	f
q.31.red2	31	Qualification 31	Qualification	Primary	2018-04-05T17:30:00	997	Red	Red2	f
q.31.red3	31	Qualification 31	Qualification	Primary	2018-04-05T17:30:00	4662	Red	Red3	f
q.32.blue1	32	Qualification 32	Qualification	Primary	2018-04-05T17:37:00	2522	Blue	Blue1	f
q.32.blue2	32	Qualification 32	Qualification	Primary	2018-04-05T17:37:00	2605	Blue	Blue2	f
q.32.blue3	32	Qualification 32	Qualification	Primary	2018-04-05T17:37:00	2557	Blue	Blue3	f
q.32.red1	32	Qualification 32	Qualification	Primary	2018-04-05T17:37:00	5468	Red	Red1	f
q.32.red2	32	Qualification 32	Qualification	Primary	2018-04-05T17:37:00	6465	Red	Red2	f
q.32.red3	32	Qualification 32	Qualification	Primary	2018-04-05T17:37:00	3826	Red	Red3	f
q.33.blue1	33	Qualification 33	Qualification	Primary	2018-04-05T17:44:00	1540	Blue	Blue1	f
q.33.blue2	33	Qualification 33	Qualification	Primary	2018-04-05T17:44:00	4915	Blue	Blue2	f
q.33.blue3	33	Qualification 33	Qualification	Primary	2018-04-05T17:44:00	2976	Blue	Blue3	f
q.33.red1	33	Qualification 33	Qualification	Primary	2018-04-05T17:44:00	7034	Red	Red1	f
q.33.red2	33	Qualification 33	Qualification	Primary	2018-04-05T17:44:00	3024	Red	Red2	f
q.33.red3	33	Qualification 33	Qualification	Primary	2018-04-05T17:44:00	4131	Red	Red3	f
q.34.blue1	34	Qualification 34	Qualification	Primary	2018-04-05T17:51:00	2733	Blue	Blue1	f
q.34.blue2	34	Qualification 34	Qualification	Primary	2018-04-05T17:51:00	948	Blue	Blue2	f
q.34.blue3	34	Qualification 34	Qualification	Primary	2018-04-05T17:51:00	3674	Blue	Blue3	f
q.34.red1	34	Qualification 34	Qualification	Primary	2018-04-05T17:51:00	1595	Red	Red1	f
q.34.red2	34	Qualification 34	Qualification	Primary	2018-04-05T17:51:00	3238	Red	Red2	f
q.34.red3	34	Qualification 34	Qualification	Primary	2018-04-05T17:51:00	3223	Red	Red3	f
q.35.blue1	35	Qualification 35	Qualification	Primary	2018-04-05T17:58:00	2906	Blue	Blue1	f
q.35.blue2	35	Qualification 35	Qualification	Primary	2018-04-05T17:58:00	1983	Blue	Blue2	f
q.35.blue3	35	Qualification 35	Qualification	Primary	2018-04-05T17:58:00	2930	Blue	Blue3	f
q.35.red1	35	Qualification 35	Qualification	Primary	2018-04-05T17:58:00	4512	Red	Red1	f
q.35.red2	35	Qualification 35	Qualification	Primary	2018-04-05T17:58:00	2910	Red	Red2	f
q.35.red3	35	Qualification 35	Qualification	Primary	2018-04-05T17:58:00	2944	Red	Red3	f
q.36.blue1	36	Qualification 36	Qualification	Primary	2018-04-05T18:05:00	2635	Blue	Blue1	f
q.36.blue2	36	Qualification 36	Qualification	Primary	2018-04-05T18:05:00	3711	Blue	Blue2	f
q.36.blue3	36	Qualification 36	Qualification	Primary	2018-04-05T18:05:00	1359	Blue	Blue3	f
q.36.red1	36	Qualification 36	Qualification	Primary	2018-04-05T18:05:00	957	Red	Red1	f
q.36.red2	36	Qualification 36	Qualification	Primary	2018-04-05T18:05:00	2990	Red	Red2	f
q.36.red3	36	Qualification 36	Qualification	Primary	2018-04-05T18:05:00	2521	Red	Red3	f
q.37.blue1	37	Qualification 37	Qualification	Primary	2018-04-05T18:12:00	3218	Blue	Blue1	f
q.37.blue2	37	Qualification 37	Qualification	Primary	2018-04-05T18:12:00	2471	Blue	Blue2	f
q.37.blue3	37	Qualification 37	Qualification	Primary	2018-04-05T18:12:00	360	Blue	Blue3	f
q.37.red1	37	Qualification 37	Qualification	Primary	2018-04-05T18:12:00	3663	Red	Red1	f
q.37.red2	37	Qualification 37	Qualification	Primary	2018-04-05T18:12:00	6465	Red	Red2	f
q.37.red3	37	Qualification 37	Qualification	Primary	2018-04-05T18:12:00	2147	Red	Red3	f
q.38.blue1	38	Qualification 38	Qualification	Primary	2018-04-06T09:00:00	1425	Blue	Blue1	f
q.38.blue2	38	Qualification 38	Qualification	Primary	2018-04-06T09:00:00	6445	Blue	Blue2	f
q.38.blue3	38	Qualification 38	Qualification	Primary	2018-04-06T09:00:00	5803	Blue	Blue3	f
q.38.red1	38	Qualification 38	Qualification	Primary	2018-04-06T09:00:00	2811	Red	Red1	f
q.38.red2	38	Qualification 38	Qualification	Primary	2018-04-06T09:00:00	4980	Red	Red2	f
q.38.red3	38	Qualification 38	Qualification	Primary	2018-04-06T09:00:00	2928	Red	Red3	f
q.39.blue1	39	Qualification 39	Qualification	Primary	2018-04-06T09:07:00	492	Blue	Blue1	f
q.39.blue2	39	Qualification 39	Qualification	Primary	2018-04-06T09:07:00	2046	Blue	Blue2	f
q.39.blue3	39	Qualification 39	Qualification	Primary	2018-04-06T09:07:00	5468	Blue	Blue3	f
q.39.red1	39	Qualification 39	Qualification	Primary	2018-04-06T09:07:00	6845	Red	Red1	f
q.39.red2	39	Qualification 39	Qualification	Primary	2018-04-06T09:07:00	847	Red	Red2	f
q.39.red3	39	Qualification 39	Qualification	Primary	2018-04-06T09:07:00	488	Red	Red3	f
q.40.blue1	40	Qualification 40	Qualification	Primary	2018-04-06T09:14:00	4061	Blue	Blue1	f
q.40.blue2	40	Qualification 40	Qualification	Primary	2018-04-06T09:14:00	4513	Blue	Blue2	f
q.40.blue3	40	Qualification 40	Qualification	Primary	2018-04-06T09:14:00	5920	Blue	Blue3	f
q.40.red1	40	Qualification 40	Qualification	Primary	2018-04-06T09:14:00	1778	Red	Red1	f
q.40.red2	40	Qualification 40	Qualification	Primary	2018-04-06T09:14:00	4125	Red	Red2	f
q.40.red3	40	Qualification 40	Qualification	Primary	2018-04-06T09:14:00	4488	Red	Red3	f
q.41.blue1	41	Qualification 41	Qualification	Primary	2018-04-06T09:21:00	4911	Blue	Blue1	f
q.41.blue2	41	Qualification 41	Qualification	Primary	2018-04-06T09:21:00	2522	Blue	Blue2	f
q.41.blue3	41	Qualification 41	Qualification	Primary	2018-04-06T09:21:00	1318	Blue	Blue3	f
q.41.red1	41	Qualification 41	Qualification	Primary	2018-04-06T09:21:00	4662	Red	Red1	f
q.41.red2	41	Qualification 41	Qualification	Primary	2018-04-06T09:21:00	4469	Red	Red2	f
q.41.red3	41	Qualification 41	Qualification	Primary	2018-04-06T09:21:00	6831	Red	Red3	f
q.42.blue1	42	Qualification 42	Qualification	Primary	2018-04-06T09:28:00	2557	Blue	Blue1	f
q.42.blue2	42	Qualification 42	Qualification	Primary	2018-04-06T09:28:00	1510	Blue	Blue2	f
q.42.blue3	42	Qualification 42	Qualification	Primary	2018-04-06T09:28:00	4450	Blue	Blue3	f
q.42.red1	42	Qualification 42	Qualification	Primary	2018-04-06T09:28:00	2605	Red	Red1	f
q.42.red2	42	Qualification 42	Qualification	Primary	2018-04-06T09:28:00	6076	Red	Red2	f
q.42.red3	42	Qualification 42	Qualification	Primary	2018-04-06T09:28:00	2374	Red	Red3	f
q.43.blue1	43	Qualification 43	Qualification	Primary	2018-04-06T09:35:00	3826	Blue	Blue1	f
q.43.blue2	43	Qualification 43	Qualification	Primary	2018-04-06T09:35:00	6443	Blue	Blue2	f
q.43.blue3	43	Qualification 43	Qualification	Primary	2018-04-06T09:35:00	2930	Blue	Blue3	f
q.43.red1	43	Qualification 43	Qualification	Primary	2018-04-06T09:35:00	997	Red	Red1	f
q.43.red2	43	Qualification 43	Qualification	Primary	2018-04-06T09:35:00	5450	Red	Red2	f
q.43.red3	43	Qualification 43	Qualification	Primary	2018-04-06T09:35:00	6465	Red	Red3	f
q.44.blue1	44	Qualification 44	Qualification	Primary	2018-04-06T09:42:00	4131	Blue	Blue1	f
q.44.blue2	44	Qualification 44	Qualification	Primary	2018-04-06T09:42:00	3674	Blue	Blue2	f
q.44.blue3	44	Qualification 44	Qualification	Primary	2018-04-06T09:42:00	1540	Blue	Blue3	f
q.44.red1	44	Qualification 44	Qualification	Primary	2018-04-06T09:42:00	5803	Red	Red1	f
q.44.red2	44	Qualification 44	Qualification	Primary	2018-04-06T09:42:00	2046	Red	Red2	f
q.44.red3	44	Qualification 44	Qualification	Primary	2018-04-06T09:42:00	2471	Red	Red3	f
q.45.blue1	45	Qualification 45	Qualification	Primary	2018-04-06T09:49:00	5468	Blue	Blue1	f
q.45.blue2	45	Qualification 45	Qualification	Primary	2018-04-06T09:49:00	5920	Blue	Blue2	f
q.45.blue3	45	Qualification 45	Qualification	Primary	2018-04-06T09:49:00	1983	Blue	Blue3	f
q.45.red1	45	Qualification 45	Qualification	Primary	2018-04-06T09:49:00	1359	Red	Red1	f
q.45.red2	45	Qualification 45	Qualification	Primary	2018-04-06T09:49:00	3223	Red	Red2	f
q.45.red3	45	Qualification 45	Qualification	Primary	2018-04-06T09:49:00	2976	Red	Red3	f
q.46.blue1	46	Qualification 46	Qualification	Primary	2018-04-06T09:56:00	948	Blue	Blue1	f
q.46.blue2	46	Qualification 46	Qualification	Primary	2018-04-06T09:56:00	7034	Blue	Blue2	f
q.46.blue3	46	Qualification 46	Qualification	Primary	2018-04-06T09:56:00	2910	Blue	Blue3	f
q.46.red1	46	Qualification 46	Qualification	Primary	2018-04-06T09:56:00	1778	Red	Red1	f
q.46.red2	46	Qualification 46	Qualification	Primary	2018-04-06T09:56:00	2522	Red	Red2	f
q.46.red3	46	Qualification 46	Qualification	Primary	2018-04-06T09:56:00	847	Red	Red3	f
q.47.blue1	47	Qualification 47	Qualification	Primary	2018-04-06T10:03:00	6845	Blue	Blue1	f
q.47.blue2	47	Qualification 47	Qualification	Primary	2018-04-06T10:03:00	4061	Blue	Blue2	f
q.47.blue3	47	Qualification 47	Qualification	Primary	2018-04-06T10:03:00	2374	Blue	Blue3	f
q.47.red1	47	Qualification 47	Qualification	Primary	2018-04-06T10:03:00	4911	Red	Red1	f
q.47.red2	47	Qualification 47	Qualification	Primary	2018-04-06T10:03:00	6076	Red	Red2	f
q.47.red3	47	Qualification 47	Qualification	Primary	2018-04-06T10:03:00	2811	Red	Red3	f
q.48.blue1	48	Qualification 48	Qualification	Primary	2018-04-06T10:10:00	3238	Blue	Blue1	f
q.48.blue2	48	Qualification 48	Qualification	Primary	2018-04-06T10:10:00	6831	Blue	Blue2	f
q.48.blue3	48	Qualification 48	Qualification	Primary	2018-04-06T10:10:00	1318	Blue	Blue3	f
q.48.red1	48	Qualification 48	Qualification	Primary	2018-04-06T10:10:00	1425	Red	Red1	f
q.48.red2	48	Qualification 48	Qualification	Primary	2018-04-06T10:10:00	492	Red	Red2	f
q.48.red3	48	Qualification 48	Qualification	Primary	2018-04-06T10:10:00	2635	Red	Red3	f
q.49.blue1	49	Qualification 49	Qualification	Primary	2018-04-06T10:17:00	2928	Blue	Blue1	f
q.49.blue2	49	Qualification 49	Qualification	Primary	2018-04-06T10:17:00	3663	Blue	Blue2	f
q.49.blue3	49	Qualification 49	Qualification	Primary	2018-04-06T10:17:00	488	Blue	Blue3	f
q.49.red1	49	Qualification 49	Qualification	Primary	2018-04-06T10:17:00	1595	Red	Red1	f
q.49.red2	49	Qualification 49	Qualification	Primary	2018-04-06T10:17:00	5450	Red	Red2	f
q.49.red3	49	Qualification 49	Qualification	Primary	2018-04-06T10:17:00	2521	Red	Red3	f
q.50.blue1	50	Qualification 50	Qualification	Primary	2018-04-06T10:24:00	3711	Blue	Blue1	f
q.50.blue2	50	Qualification 50	Qualification	Primary	2018-04-06T10:24:00	4125	Blue	Blue2	f
q.50.blue3	50	Qualification 50	Qualification	Primary	2018-04-06T10:24:00	4980	Blue	Blue3	f
q.50.red1	50	Qualification 50	Qualification	Primary	2018-04-06T10:24:00	3826	Red	Red1	f
q.50.red2	50	Qualification 50	Qualification	Primary	2018-04-06T10:24:00	2733	Red	Red2	f
q.50.red3	50	Qualification 50	Qualification	Primary	2018-04-06T10:24:00	2147	Red	Red3	f
q.51.blue1	51	Qualification 51	Qualification	Primary	2018-04-06T10:31:00	1510	Blue	Blue1	f
q.51.blue2	51	Qualification 51	Qualification	Primary	2018-04-06T10:31:00	3218	Blue	Blue2	f
q.51.blue3	51	Qualification 51	Qualification	Primary	2018-04-06T10:31:00	4662	Blue	Blue3	f
q.51.red1	51	Qualification 51	Qualification	Primary	2018-04-06T10:31:00	4488	Red	Red1	f
q.51.red2	51	Qualification 51	Qualification	Primary	2018-04-06T10:31:00	957	Red	Red2	f
q.51.red3	51	Qualification 51	Qualification	Primary	2018-04-06T10:31:00	2557	Red	Red3	f
q.52.blue1	52	Qualification 52	Qualification	Primary	2018-04-06T10:38:00	2605	Blue	Blue1	f
q.52.blue2	52	Qualification 52	Qualification	Primary	2018-04-06T10:38:00	4469	Blue	Blue2	f
q.52.blue3	52	Qualification 52	Qualification	Primary	2018-04-06T10:38:00	2944	Blue	Blue3	f
q.52.red1	52	Qualification 52	Qualification	Primary	2018-04-06T10:38:00	360	Red	Red1	f
q.52.red2	52	Qualification 52	Qualification	Primary	2018-04-06T10:38:00	6443	Red	Red2	f
q.52.red3	52	Qualification 52	Qualification	Primary	2018-04-06T10:38:00	4513	Red	Red3	f
q.53.blue1	53	Qualification 53	Qualification	Primary	2018-04-06T10:45:00	3024	Blue	Blue1	f
q.53.blue2	53	Qualification 53	Qualification	Primary	2018-04-06T10:45:00	4915	Blue	Blue2	f
q.53.blue3	53	Qualification 53	Qualification	Primary	2018-04-06T10:45:00	4450	Blue	Blue3	f
q.53.red1	53	Qualification 53	Qualification	Primary	2018-04-06T10:45:00	2990	Red	Red1	f
q.53.red2	53	Qualification 53	Qualification	Primary	2018-04-06T10:45:00	2906	Red	Red2	f
q.53.red3	53	Qualification 53	Qualification	Primary	2018-04-06T10:45:00	997	Red	Red3	f
q.54.blue1	54	Qualification 54	Qualification	Primary	2018-04-06T10:52:00	4512	Blue	Blue1	f
q.54.blue2	54	Qualification 54	Qualification	Primary	2018-04-06T10:52:00	4131	Blue	Blue2	f
q.54.blue3	54	Qualification 54	Qualification	Primary	2018-04-06T10:52:00	5468	Blue	Blue3	f
q.54.red1	54	Qualification 54	Qualification	Primary	2018-04-06T10:52:00	6445	Red	Red1	f
q.54.red2	54	Qualification 54	Qualification	Primary	2018-04-06T10:52:00	6465	Red	Red2	f
q.54.red3	54	Qualification 54	Qualification	Primary	2018-04-06T10:52:00	7034	Red	Red3	f
q.55.blue1	55	Qualification 55	Qualification	Primary	2018-04-06T10:59:00	4980	Blue	Blue1	f
q.55.blue2	55	Qualification 55	Qualification	Primary	2018-04-06T10:59:00	3663	Blue	Blue2	f
q.55.blue3	55	Qualification 55	Qualification	Primary	2018-04-06T10:59:00	3223	Blue	Blue3	f
q.55.red1	55	Qualification 55	Qualification	Primary	2018-04-06T10:59:00	2522	Red	Red1	f
q.55.red2	55	Qualification 55	Qualification	Primary	2018-04-06T10:59:00	4061	Red	Red2	f
q.55.red3	55	Qualification 55	Qualification	Primary	2018-04-06T10:59:00	1540	Red	Red3	f
q.56.blue1	56	Qualification 56	Qualification	Primary	2018-04-06T11:06:00	1778	Blue	Blue1	f
q.56.blue2	56	Qualification 56	Qualification	Primary	2018-04-06T11:06:00	2811	Blue	Blue2	f
q.56.blue3	56	Qualification 56	Qualification	Primary	2018-04-06T11:06:00	2521	Blue	Blue3	f
q.56.red1	56	Qualification 56	Qualification	Primary	2018-04-06T11:06:00	488	Red	Red1	f
q.56.red2	56	Qualification 56	Qualification	Primary	2018-04-06T11:06:00	2557	Red	Red2	f
q.56.red3	56	Qualification 56	Qualification	Primary	2018-04-06T11:06:00	3826	Red	Red3	f
q.57.blue1	57	Qualification 57	Qualification	Primary	2018-04-06T11:13:00	2046	Blue	Blue1	f
q.57.blue2	57	Qualification 57	Qualification	Primary	2018-04-06T11:13:00	2147	Blue	Blue2	f
q.57.blue3	57	Qualification 57	Qualification	Primary	2018-04-06T11:13:00	2635	Blue	Blue3	f
q.57.red1	57	Qualification 57	Qualification	Primary	2018-04-06T11:13:00	4488	Red	Red1	f
q.57.red2	57	Qualification 57	Qualification	Primary	2018-04-06T11:13:00	4911	Red	Red2	f
q.57.red3	57	Qualification 57	Qualification	Primary	2018-04-06T11:13:00	6443	Red	Red3	f
q.58.blue1	58	Qualification 58	Qualification	Primary	2018-04-06T11:20:00	2605	Blue	Blue1	f
q.58.blue2	58	Qualification 58	Qualification	Primary	2018-04-06T11:20:00	5803	Blue	Blue2	f
q.58.blue3	58	Qualification 58	Qualification	Primary	2018-04-06T11:20:00	2733	Blue	Blue3	f
q.58.red1	58	Qualification 58	Qualification	Primary	2018-04-06T11:20:00	1318	Red	Red1	f
q.58.red2	58	Qualification 58	Qualification	Primary	2018-04-06T11:20:00	2976	Red	Red2	f
q.58.red3	58	Qualification 58	Qualification	Primary	2018-04-06T11:20:00	5450	Red	Red3	f
q.59.blue1	59	Qualification 59	Qualification	Primary	2018-04-06T11:27:00	2906	Blue	Blue1	f
q.59.blue2	59	Qualification 59	Qualification	Primary	2018-04-06T11:27:00	5920	Blue	Blue2	f
q.59.blue3	59	Qualification 59	Qualification	Primary	2018-04-06T11:27:00	957	Blue	Blue3	f
q.59.red1	59	Qualification 59	Qualification	Primary	2018-04-06T11:27:00	3238	Red	Red1	f
q.59.red2	59	Qualification 59	Qualification	Primary	2018-04-06T11:27:00	847	Red	Red2	f
q.59.red3	59	Qualification 59	Qualification	Primary	2018-04-06T11:27:00	360	Red	Red3	f
q.60.blue1	60	Qualification 60	Qualification	Primary	2018-04-06T11:34:00	2990	Blue	Blue1	f
q.60.blue2	60	Qualification 60	Qualification	Primary	2018-04-06T11:34:00	2930	Blue	Blue2	f
q.60.blue3	60	Qualification 60	Qualification	Primary	2018-04-06T11:34:00	1595	Blue	Blue3	f
q.60.red1	60	Qualification 60	Qualification	Primary	2018-04-06T11:34:00	4513	Red	Red1	f
q.60.red2	60	Qualification 60	Qualification	Primary	2018-04-06T11:34:00	6831	Red	Red2	f
q.60.red3	60	Qualification 60	Qualification	Primary	2018-04-06T11:34:00	1510	Red	Red3	f
q.61.blue1	61	Qualification 61	Qualification	Primary	2018-04-06T11:41:00	3711	Blue	Blue1	f
q.61.blue2	61	Qualification 61	Qualification	Primary	2018-04-06T11:41:00	2928	Blue	Blue2	f
q.61.blue3	61	Qualification 61	Qualification	Primary	2018-04-06T11:41:00	1983	Blue	Blue3	f
q.61.red1	61	Qualification 61	Qualification	Primary	2018-04-06T11:41:00	4450	Red	Red1	f
q.61.red2	61	Qualification 61	Qualification	Primary	2018-04-06T11:41:00	6076	Red	Red2	f
q.61.red3	61	Qualification 61	Qualification	Primary	2018-04-06T11:41:00	2471	Red	Red3	f
q.62.blue1	62	Qualification 62	Qualification	Primary	2018-04-06T11:48:00	3674	Blue	Blue1	f
q.62.blue2	62	Qualification 62	Qualification	Primary	2018-04-06T11:48:00	6845	Blue	Blue2	f
q.62.blue3	62	Qualification 62	Qualification	Primary	2018-04-06T11:48:00	3218	Blue	Blue3	f
q.62.red1	62	Qualification 62	Qualification	Primary	2018-04-06T11:48:00	4512	Red	Red1	f
q.62.red2	62	Qualification 62	Qualification	Primary	2018-04-06T11:48:00	1425	Red	Red2	f
q.62.red3	62	Qualification 62	Qualification	Primary	2018-04-06T11:48:00	4915	Red	Red3	f
q.63.blue1	63	Qualification 63	Qualification	Primary	2018-04-06T11:55:00	6445	Blue	Blue1	f
q.63.blue2	63	Qualification 63	Qualification	Primary	2018-04-06T11:55:00	492	Blue	Blue2	f
q.63.blue3	63	Qualification 63	Qualification	Primary	2018-04-06T11:55:00	3024	Blue	Blue3	f
q.63.red1	63	Qualification 63	Qualification	Primary	2018-04-06T11:55:00	2944	Red	Red1	f
q.63.red2	63	Qualification 63	Qualification	Primary	2018-04-06T11:55:00	948	Red	Red2	f
q.63.red3	63	Qualification 63	Qualification	Primary	2018-04-06T11:55:00	4662	Red	Red3	f
q.64.blue1	64	Qualification 64	Qualification	Primary	2018-04-06T12:02:00	997	Blue	Blue1	f
q.64.blue2	64	Qualification 64	Qualification	Primary	2018-04-06T12:02:00	1359	Blue	Blue2	f
q.64.blue3	64	Qualification 64	Qualification	Primary	2018-04-06T12:02:00	4125	Blue	Blue3	f
q.64.red1	64	Qualification 64	Qualification	Primary	2018-04-06T12:02:00	2374	Red	Red1	f
q.64.red2	64	Qualification 64	Qualification	Primary	2018-04-06T12:02:00	2910	Red	Red2	f
q.64.red3	64	Qualification 64	Qualification	Primary	2018-04-06T12:02:00	4469	Red	Red3	f
q.65.blue1	65	Qualification 65	Qualification	Primary	2018-04-06T12:09:00	488	Blue	Blue1	f
q.65.blue2	65	Qualification 65	Qualification	Primary	2018-04-06T12:09:00	2635	Blue	Blue2	f
q.65.blue3	65	Qualification 65	Qualification	Primary	2018-04-06T12:09:00	5803	Blue	Blue3	f
q.65.red1	65	Qualification 65	Qualification	Primary	2018-04-06T12:09:00	3223	Red	Red1	f
q.65.red2	65	Qualification 65	Qualification	Primary	2018-04-06T12:09:00	360	Red	Red2	f
q.65.red3	65	Qualification 65	Qualification	Primary	2018-04-06T12:09:00	2147	Red	Red3	f
q.66.blue1	66	Qualification 66	Qualification	Primary	2018-04-06T12:16:00	2557	Blue	Blue1	f
q.66.blue2	66	Qualification 66	Qualification	Primary	2018-04-06T12:16:00	5920	Blue	Blue2	f
q.66.blue3	66	Qualification 66	Qualification	Primary	2018-04-06T12:16:00	7034	Blue	Blue3	f
q.66.red1	66	Qualification 66	Qualification	Primary	2018-04-06T12:16:00	4061	Red	Red1	f
q.66.red2	66	Qualification 66	Qualification	Primary	2018-04-06T12:16:00	2605	Red	Red2	f
q.66.red3	66	Qualification 66	Qualification	Primary	2018-04-06T12:16:00	1595	Red	Red3	f
q.67.blue1	67	Qualification 67	Qualification	Primary	2018-04-06T12:23:00	2046	Blue	Blue1	f
q.67.blue2	67	Qualification 67	Qualification	Primary	2018-04-06T12:23:00	4512	Blue	Blue2	f
q.67.blue3	67	Qualification 67	Qualification	Primary	2018-04-06T12:23:00	957	Blue	Blue3	f
q.67.red1	67	Qualification 67	Qualification	Primary	2018-04-06T12:23:00	5468	Red	Red1	f
q.67.red2	67	Qualification 67	Qualification	Primary	2018-04-06T12:23:00	2990	Red	Red2	f
q.67.red3	67	Qualification 67	Qualification	Primary	2018-04-06T12:23:00	3663	Red	Red3	f
q.68.blue1	68	Qualification 68	Qualification	Primary	2018-04-06T13:30:00	847	Blue	Blue1	f
q.68.blue2	68	Qualification 68	Qualification	Primary	2018-04-06T13:30:00	3711	Blue	Blue2	f
q.68.blue3	68	Qualification 68	Qualification	Primary	2018-04-06T13:30:00	6465	Blue	Blue3	f
q.68.red1	68	Qualification 68	Qualification	Primary	2018-04-06T13:30:00	4662	Red	Red1	f
q.68.red2	68	Qualification 68	Qualification	Primary	2018-04-06T13:30:00	1778	Red	Red2	f
q.68.red3	68	Qualification 68	Qualification	Primary	2018-04-06T13:30:00	5450	Red	Red3	f
q.69.blue1	69	Qualification 69	Qualification	Primary	2018-04-06T13:37:00	4488	Blue	Blue1	f
q.69.blue2	69	Qualification 69	Qualification	Primary	2018-04-06T13:37:00	2944	Blue	Blue2	f
q.69.blue3	69	Qualification 69	Qualification	Primary	2018-04-06T13:37:00	2811	Blue	Blue3	f
q.69.red1	69	Qualification 69	Qualification	Primary	2018-04-06T13:37:00	4125	Red	Red1	f
q.69.red2	69	Qualification 69	Qualification	Primary	2018-04-06T13:37:00	948	Red	Red2	f
q.69.red3	69	Qualification 69	Qualification	Primary	2018-04-06T13:37:00	1425	Red	Red3	f
q.70.blue1	70	Qualification 70	Qualification	Primary	2018-04-06T13:44:00	6445	Blue	Blue1	f
q.70.blue2	70	Qualification 70	Qualification	Primary	2018-04-06T13:44:00	1540	Blue	Blue2	f
q.70.blue3	70	Qualification 70	Qualification	Primary	2018-04-06T13:44:00	1359	Blue	Blue3	f
q.70.red1	70	Qualification 70	Qualification	Primary	2018-04-06T13:44:00	4911	Red	Red1	f
q.70.red2	70	Qualification 70	Qualification	Primary	2018-04-06T13:44:00	3218	Red	Red2	f
q.70.red3	70	Qualification 70	Qualification	Primary	2018-04-06T13:44:00	2930	Red	Red3	f
q.71.blue1	71	Qualification 71	Qualification	Primary	2018-04-06T13:51:00	2522	Blue	Blue1	f
q.71.blue2	71	Qualification 71	Qualification	Primary	2018-04-06T13:51:00	2471	Blue	Blue2	f
q.71.blue3	71	Qualification 71	Qualification	Primary	2018-04-06T13:51:00	997	Blue	Blue3	f
q.71.red1	71	Qualification 71	Qualification	Primary	2018-04-06T13:51:00	1510	Red	Red1	f
q.71.red2	71	Qualification 71	Qualification	Primary	2018-04-06T13:51:00	492	Red	Red2	f
q.71.red3	71	Qualification 71	Qualification	Primary	2018-04-06T13:51:00	2906	Red	Red3	f
q.72.blue1	72	Qualification 72	Qualification	Primary	2018-04-06T13:58:00	6831	Blue	Blue1	f
q.72.blue2	72	Qualification 72	Qualification	Primary	2018-04-06T13:58:00	2976	Blue	Blue2	f
q.72.blue3	72	Qualification 72	Qualification	Primary	2018-04-06T13:58:00	6076	Blue	Blue3	f
q.72.red1	72	Qualification 72	Qualification	Primary	2018-04-06T13:58:00	4980	Red	Red1	f
q.72.red2	72	Qualification 72	Qualification	Primary	2018-04-06T13:58:00	3674	Red	Red2	f
q.72.red3	72	Qualification 72	Qualification	Primary	2018-04-06T13:58:00	6443	Red	Red3	f
q.73.blue1	73	Qualification 73	Qualification	Primary	2018-04-06T14:05:00	3826	Blue	Blue1	f
q.73.blue2	73	Qualification 73	Qualification	Primary	2018-04-06T14:05:00	4469	Blue	Blue2	f
q.73.blue3	73	Qualification 73	Qualification	Primary	2018-04-06T14:05:00	3238	Blue	Blue3	f
q.73.red1	73	Qualification 73	Qualification	Primary	2018-04-06T14:05:00	6845	Red	Red1	f
q.73.red2	73	Qualification 73	Qualification	Primary	2018-04-06T14:05:00	4915	Red	Red2	f
q.73.red3	73	Qualification 73	Qualification	Primary	2018-04-06T14:05:00	2928	Red	Red3	f
q.74.blue1	74	Qualification 74	Qualification	Primary	2018-04-06T14:12:00	2521	Blue	Blue1	f
q.74.blue2	74	Qualification 74	Qualification	Primary	2018-04-06T14:12:00	4513	Blue	Blue2	f
q.74.blue3	74	Qualification 74	Qualification	Primary	2018-04-06T14:12:00	4131	Blue	Blue3	f
q.74.red1	74	Qualification 74	Qualification	Primary	2018-04-06T14:12:00	2733	Red	Red1	f
q.74.red2	74	Qualification 74	Qualification	Primary	2018-04-06T14:12:00	2374	Red	Red2	f
q.74.red3	74	Qualification 74	Qualification	Primary	2018-04-06T14:12:00	1983	Red	Red3	f
q.75.blue1	75	Qualification 75	Qualification	Primary	2018-04-06T14:19:00	4450	Blue	Blue1	f
q.75.blue2	75	Qualification 75	Qualification	Primary	2018-04-06T14:19:00	1318	Blue	Blue2	f
q.75.blue3	75	Qualification 75	Qualification	Primary	2018-04-06T14:19:00	3663	Blue	Blue3	f
q.75.red1	75	Qualification 75	Qualification	Primary	2018-04-06T14:19:00	2910	Red	Red1	f
q.75.red2	75	Qualification 75	Qualification	Primary	2018-04-06T14:19:00	3024	Red	Red2	f
q.75.red3	75	Qualification 75	Qualification	Primary	2018-04-06T14:19:00	2557	Red	Red3	f
q.76.blue1	76	Qualification 76	Qualification	Primary	2018-04-06T14:26:00	1510	Blue	Blue1	f
q.76.blue2	76	Qualification 76	Qualification	Primary	2018-04-06T14:26:00	2605	Blue	Blue2	f
q.76.blue3	76	Qualification 76	Qualification	Primary	2018-04-06T14:26:00	1540	Blue	Blue3	f
q.76.red1	76	Qualification 76	Qualification	Primary	2018-04-06T14:26:00	2147	Red	Red1	f
q.76.red2	76	Qualification 76	Qualification	Primary	2018-04-06T14:26:00	3711	Red	Red2	f
q.76.red3	76	Qualification 76	Qualification	Primary	2018-04-06T14:26:00	1778	Red	Red3	f
q.77.blue1	77	Qualification 77	Qualification	Primary	2018-04-06T14:33:00	3674	Blue	Blue1	f
q.77.blue2	77	Qualification 77	Qualification	Primary	2018-04-06T14:33:00	488	Blue	Blue2	f
q.77.blue3	77	Qualification 77	Qualification	Primary	2018-04-06T14:33:00	5468	Blue	Blue3	f
q.77.red1	77	Qualification 77	Qualification	Primary	2018-04-06T14:33:00	2635	Red	Red1	f
q.77.red2	77	Qualification 77	Qualification	Primary	2018-04-06T14:33:00	2930	Red	Red2	f
q.77.red3	77	Qualification 77	Qualification	Primary	2018-04-06T14:33:00	4980	Red	Red3	f
q.78.blue1	78	Qualification 78	Qualification	Primary	2018-04-06T14:40:00	4662	Blue	Blue1	f
q.78.blue2	78	Qualification 78	Qualification	Primary	2018-04-06T14:40:00	2522	Blue	Blue2	f
q.78.blue3	78	Qualification 78	Qualification	Primary	2018-04-06T14:40:00	3238	Blue	Blue3	f
q.78.red1	78	Qualification 78	Qualification	Primary	2018-04-06T14:40:00	4125	Red	Red1	f
q.78.red2	78	Qualification 78	Qualification	Primary	2018-04-06T14:40:00	2976	Red	Red2	f
q.78.red3	78	Qualification 78	Qualification	Primary	2018-04-06T14:40:00	4512	Red	Red3	f
q.79.blue1	79	Qualification 79	Qualification	Primary	2018-04-06T14:47:00	6445	Blue	Blue1	f
q.79.blue2	79	Qualification 79	Qualification	Primary	2018-04-06T14:47:00	4513	Blue	Blue2	f
q.79.blue3	79	Qualification 79	Qualification	Primary	2018-04-06T14:47:00	2906	Blue	Blue3	f
q.79.red1	79	Qualification 79	Qualification	Primary	2018-04-06T14:47:00	3826	Red	Red1	f
q.79.red2	79	Qualification 79	Qualification	Primary	2018-04-06T14:47:00	2046	Red	Red2	f
q.79.red3	79	Qualification 79	Qualification	Primary	2018-04-06T14:47:00	4061	Red	Red3	f
q.80.blue1	80	Qualification 80	Qualification	Primary	2018-04-06T14:54:00	847	Blue	Blue1	f
q.80.blue2	80	Qualification 80	Qualification	Primary	2018-04-06T14:54:00	4450	Blue	Blue2	f
q.80.blue3	80	Qualification 80	Qualification	Primary	2018-04-06T14:54:00	2944	Blue	Blue3	f
q.80.red1	80	Qualification 80	Qualification	Primary	2018-04-06T14:54:00	4915	Red	Red1	f
q.80.red2	80	Qualification 80	Qualification	Primary	2018-04-06T14:54:00	2521	Red	Red2	f
q.80.red3	80	Qualification 80	Qualification	Primary	2018-04-06T14:54:00	6831	Red	Red3	f
q.81.blue1	81	Qualification 81	Qualification	Primary	2018-04-06T15:01:00	4911	Blue	Blue1	f
q.81.blue2	81	Qualification 81	Qualification	Primary	2018-04-06T15:01:00	360	Blue	Blue2	f
q.81.blue3	81	Qualification 81	Qualification	Primary	2018-04-06T15:01:00	6845	Blue	Blue3	f
q.81.red1	81	Qualification 81	Qualification	Primary	2018-04-06T15:01:00	997	Red	Red1	f
q.81.red2	81	Qualification 81	Qualification	Primary	2018-04-06T15:01:00	4131	Red	Red2	f
q.81.red3	81	Qualification 81	Qualification	Primary	2018-04-06T15:01:00	3223	Red	Red3	f
q.82.blue1	82	Qualification 82	Qualification	Primary	2018-04-06T15:08:00	2811	Blue	Blue1	f
q.82.blue2	82	Qualification 82	Qualification	Primary	2018-04-06T15:08:00	2910	Blue	Blue2	f
q.82.blue3	82	Qualification 82	Qualification	Primary	2018-04-06T15:08:00	1595	Blue	Blue3	f
q.82.red1	82	Qualification 82	Qualification	Primary	2018-04-06T15:08:00	1318	Red	Red1	f
q.82.red2	82	Qualification 82	Qualification	Primary	2018-04-06T15:08:00	3218	Red	Red2	f
q.82.red3	82	Qualification 82	Qualification	Primary	2018-04-06T15:08:00	492	Red	Red3	f
q.83.blue1	83	Qualification 83	Qualification	Primary	2018-04-06T15:15:00	1425	Blue	Blue1	f
q.83.blue2	83	Qualification 83	Qualification	Primary	2018-04-06T15:15:00	2733	Blue	Blue2	f
q.83.blue3	83	Qualification 83	Qualification	Primary	2018-04-06T15:15:00	2928	Blue	Blue3	f
q.83.red1	83	Qualification 83	Qualification	Primary	2018-04-06T15:15:00	6443	Red	Red1	f
q.83.red2	83	Qualification 83	Qualification	Primary	2018-04-06T15:15:00	957	Red	Red2	f
q.83.red3	83	Qualification 83	Qualification	Primary	2018-04-06T15:15:00	7034	Red	Red3	f
q.84.blue1	84	Qualification 84	Qualification	Primary	2018-04-06T15:22:00	5920	Blue	Blue1	f
q.84.blue2	84	Qualification 84	Qualification	Primary	2018-04-06T15:22:00	2471	Blue	Blue2	f
q.84.blue3	84	Qualification 84	Qualification	Primary	2018-04-06T15:22:00	948	Blue	Blue3	f
q.84.red1	84	Qualification 84	Qualification	Primary	2018-04-06T15:22:00	6076	Red	Red1	f
q.84.red2	84	Qualification 84	Qualification	Primary	2018-04-06T15:22:00	2990	Red	Red2	f
q.84.red3	84	Qualification 84	Qualification	Primary	2018-04-06T15:22:00	4469	Red	Red3	f
q.85.blue1	85	Qualification 85	Qualification	Primary	2018-04-06T15:29:00	1983	Blue	Blue1	f
q.85.blue2	85	Qualification 85	Qualification	Primary	2018-04-06T15:29:00	4488	Blue	Blue2	f
q.85.blue3	85	Qualification 85	Qualification	Primary	2018-04-06T15:29:00	6465	Blue	Blue3	f
q.85.red1	85	Qualification 85	Qualification	Primary	2018-04-06T15:29:00	2374	Red	Red1	f
q.85.red2	85	Qualification 85	Qualification	Primary	2018-04-06T15:29:00	5803	Red	Red2	f
q.85.red3	85	Qualification 85	Qualification	Primary	2018-04-06T15:29:00	3024	Red	Red3	f
q.86.blue1	86	Qualification 86	Qualification	Primary	2018-04-06T15:36:00	5450	Blue	Blue1	f
q.86.blue2	86	Qualification 86	Qualification	Primary	2018-04-06T15:36:00	2557	Blue	Blue2	f
q.86.blue3	86	Qualification 86	Qualification	Primary	2018-04-06T15:36:00	360	Blue	Blue3	f
q.86.red1	86	Qualification 86	Qualification	Primary	2018-04-06T15:36:00	1359	Red	Red1	f
q.86.red2	86	Qualification 86	Qualification	Primary	2018-04-06T15:36:00	6845	Red	Red2	f
q.86.red3	86	Qualification 86	Qualification	Primary	2018-04-06T15:36:00	2522	Red	Red3	f
q.87.blue1	87	Qualification 87	Qualification	Primary	2018-04-06T15:43:00	997	Blue	Blue1	f
q.87.blue2	87	Qualification 87	Qualification	Primary	2018-04-06T15:43:00	1778	Blue	Blue2	f
q.87.blue3	87	Qualification 87	Qualification	Primary	2018-04-06T15:43:00	4915	Blue	Blue3	f
q.87.red1	87	Qualification 87	Qualification	Primary	2018-04-06T15:43:00	1318	Red	Red1	f
q.87.red2	87	Qualification 87	Qualification	Primary	2018-04-06T15:43:00	4512	Red	Red2	f
q.87.red3	87	Qualification 87	Qualification	Primary	2018-04-06T15:43:00	6445	Red	Red3	f
q.88.blue1	88	Qualification 88	Qualification	Primary	2018-04-06T15:50:00	6831	Blue	Blue1	f
q.88.blue2	88	Qualification 88	Qualification	Primary	2018-04-06T15:50:00	3218	Blue	Blue2	f
q.88.blue3	88	Qualification 88	Qualification	Primary	2018-04-06T15:50:00	4980	Blue	Blue3	f
q.88.red1	88	Qualification 88	Qualification	Primary	2018-04-06T15:50:00	2605	Red	Red1	f
q.88.red2	88	Qualification 88	Qualification	Primary	2018-04-06T15:50:00	2928	Red	Red2	f
q.88.red3	88	Qualification 88	Qualification	Primary	2018-04-06T15:50:00	2046	Red	Red3	f
q.89.blue1	89	Qualification 89	Qualification	Primary	2018-04-06T15:57:00	4662	Blue	Blue1	f
q.89.blue2	89	Qualification 89	Qualification	Primary	2018-04-06T15:57:00	3826	Blue	Blue2	f
q.89.blue3	89	Qualification 89	Qualification	Primary	2018-04-06T15:57:00	6076	Blue	Blue3	f
q.89.red1	89	Qualification 89	Qualification	Primary	2018-04-06T15:57:00	1540	Red	Red1	f
q.89.red2	89	Qualification 89	Qualification	Primary	2018-04-06T15:57:00	2635	Red	Red2	f
q.89.red3	89	Qualification 89	Qualification	Primary	2018-04-06T15:57:00	7034	Red	Red3	f
q.90.blue1	90	Qualification 90	Qualification	Primary	2018-04-06T16:04:00	6443	Blue	Blue1	f
q.90.blue2	90	Qualification 90	Qualification	Primary	2018-04-06T16:04:00	4450	Blue	Blue2	f
q.90.blue3	90	Qualification 90	Qualification	Primary	2018-04-06T16:04:00	4125	Blue	Blue3	f
q.90.red1	90	Qualification 90	Qualification	Primary	2018-04-06T16:04:00	2471	Red	Red1	f
q.90.red2	90	Qualification 90	Qualification	Primary	2018-04-06T16:04:00	4131	Red	Red2	f
q.90.red3	90	Qualification 90	Qualification	Primary	2018-04-06T16:04:00	488	Red	Red3	f
q.91.blue1	91	Qualification 91	Qualification	Primary	2018-04-06T16:11:00	957	Blue	Blue1	f
q.91.blue2	91	Qualification 91	Qualification	Primary	2018-04-06T16:11:00	492	Blue	Blue2	f
q.91.blue3	91	Qualification 91	Qualification	Primary	2018-04-06T16:11:00	4061	Blue	Blue3	f
q.91.red1	91	Qualification 91	Qualification	Primary	2018-04-06T16:11:00	2147	Red	Red1	f
q.91.red2	91	Qualification 91	Qualification	Primary	2018-04-06T16:11:00	2930	Red	Red2	f
q.91.red3	91	Qualification 91	Qualification	Primary	2018-04-06T16:11:00	2521	Red	Red3	f
q.92.blue1	92	Qualification 92	Qualification	Primary	2018-04-06T16:18:00	4488	Blue	Blue1	f
q.92.blue2	92	Qualification 92	Qualification	Primary	2018-04-06T16:18:00	4513	Blue	Blue2	f
q.92.blue3	92	Qualification 92	Qualification	Primary	2018-04-06T16:18:00	948	Blue	Blue3	f
q.92.red1	92	Qualification 92	Qualification	Primary	2018-04-06T16:18:00	5468	Red	Red1	f
q.92.red2	92	Qualification 92	Qualification	Primary	2018-04-06T16:18:00	2976	Red	Red2	f
q.92.red3	92	Qualification 92	Qualification	Primary	2018-04-06T16:18:00	2910	Red	Red3	f
q.93.blue1	93	Qualification 93	Qualification	Primary	2018-04-06T16:25:00	847	Blue	Blue1	f
q.93.blue2	93	Qualification 93	Qualification	Primary	2018-04-06T16:25:00	2733	Blue	Blue2	f
q.93.blue3	93	Qualification 93	Qualification	Primary	2018-04-06T16:25:00	2990	Blue	Blue3	f
q.93.red1	93	Qualification 93	Qualification	Primary	2018-04-06T16:25:00	6465	Red	Red1	f
q.93.red2	93	Qualification 93	Qualification	Primary	2018-04-06T16:25:00	4469	Red	Red2	f
q.93.red3	93	Qualification 93	Qualification	Primary	2018-04-06T16:25:00	4911	Red	Red3	f
q.94.blue1	94	Qualification 94	Qualification	Primary	2018-04-06T16:32:00	3024	Blue	Blue1	f
q.94.blue2	94	Qualification 94	Qualification	Primary	2018-04-06T16:32:00	2944	Blue	Blue2	f
q.94.blue3	94	Qualification 94	Qualification	Primary	2018-04-06T16:32:00	1359	Blue	Blue3	f
q.94.red1	94	Qualification 94	Qualification	Primary	2018-04-06T16:32:00	3238	Red	Red1	f
q.94.red2	94	Qualification 94	Qualification	Primary	2018-04-06T16:32:00	5803	Red	Red2	f
q.94.red3	94	Qualification 94	Qualification	Primary	2018-04-06T16:32:00	1510	Red	Red3	f
q.95.blue1	95	Qualification 95	Qualification	Primary	2018-04-06T16:39:00	2906	Blue	Blue1	f
q.95.blue2	95	Qualification 95	Qualification	Primary	2018-04-06T16:39:00	3223	Blue	Blue2	f
q.95.blue3	95	Qualification 95	Qualification	Primary	2018-04-06T16:39:00	1425	Blue	Blue3	f
q.95.red1	95	Qualification 95	Qualification	Primary	2018-04-06T16:39:00	2374	Red	Red1	f
q.95.red2	95	Qualification 95	Qualification	Primary	2018-04-06T16:39:00	1595	Red	Red2	f
q.95.red3	95	Qualification 95	Qualification	Primary	2018-04-06T16:39:00	3711	Red	Red3	f
q.96.blue1	96	Qualification 96	Qualification	Primary	2018-04-06T16:46:00	1983	Blue	Blue1	f
q.96.blue2	96	Qualification 96	Qualification	Primary	2018-04-06T16:46:00	3663	Blue	Blue2	f
q.96.blue3	96	Qualification 96	Qualification	Primary	2018-04-06T16:46:00	5450	Blue	Blue3	f
q.96.red1	96	Qualification 96	Qualification	Primary	2018-04-06T16:46:00	5920	Red	Red1	f
q.96.red2	96	Qualification 96	Qualification	Primary	2018-04-06T16:46:00	3674	Red	Red2	f
q.96.red3	96	Qualification 96	Qualification	Primary	2018-04-06T16:46:00	2811	Red	Red3	f
q.97.blue1	97	Qualification 97	Qualification	Primary	2018-04-06T16:53:00	492	Blue	Blue1	f
q.97.blue2	97	Qualification 97	Qualification	Primary	2018-04-06T16:53:00	4980	Blue	Blue2	f
q.97.blue3	97	Qualification 97	Qualification	Primary	2018-04-06T16:53:00	948	Blue	Blue3	f
q.97.red1	97	Qualification 97	Qualification	Primary	2018-04-06T16:53:00	2557	Red	Red1	f
q.97.red2	97	Qualification 97	Qualification	Primary	2018-04-06T16:53:00	6443	Red	Red2	f
q.97.red3	97	Qualification 97	Qualification	Primary	2018-04-06T16:53:00	4512	Red	Red3	f
q.98.blue1	98	Qualification 98	Qualification	Primary	2018-04-06T17:00:00	1318	Blue	Blue1	f
q.98.blue2	98	Qualification 98	Qualification	Primary	2018-04-06T17:00:00	7034	Blue	Blue2	f
q.98.blue3	98	Qualification 98	Qualification	Primary	2018-04-06T17:00:00	4513	Blue	Blue3	f
q.98.red1	98	Qualification 98	Qualification	Primary	2018-04-06T17:00:00	2471	Red	Red1	f
q.98.red2	98	Qualification 98	Qualification	Primary	2018-04-06T17:00:00	6445	Red	Red2	f
q.98.red3	98	Qualification 98	Qualification	Primary	2018-04-06T17:00:00	957	Red	Red3	f
q.99.blue1	99	Qualification 99	Qualification	Primary	2018-04-06T17:07:00	2930	Blue	Blue1	f
q.99.blue2	99	Qualification 99	Qualification	Primary	2018-04-06T17:07:00	360	Blue	Blue2	f
q.99.blue3	99	Qualification 99	Qualification	Primary	2018-04-06T17:07:00	2522	Blue	Blue3	f
q.99.red1	99	Qualification 99	Qualification	Primary	2018-04-06T17:07:00	4450	Red	Red1	f
q.99.red2	99	Qualification 99	Qualification	Primary	2018-04-06T17:07:00	3238	Red	Red2	f
q.99.red3	99	Qualification 99	Qualification	Primary	2018-04-06T17:07:00	2733	Red	Red3	f
q.100.blue1	100	Qualification 100	Qualification	Primary	2018-04-06T17:14:00	6831	Blue	Blue1	f
q.100.blue2	100	Qualification 100	Qualification	Primary	2018-04-06T17:14:00	3826	Blue	Blue2	f
q.100.blue3	100	Qualification 100	Qualification	Primary	2018-04-06T17:14:00	997	Blue	Blue3	f
q.100.red1	100	Qualification 100	Qualification	Primary	2018-04-06T17:14:00	3223	Red	Red1	f
q.100.red2	100	Qualification 100	Qualification	Primary	2018-04-06T17:14:00	4061	Red	Red2	f
q.100.red3	100	Qualification 100	Qualification	Primary	2018-04-06T17:14:00	4488	Red	Red3	f
q.101.blue1	101	Qualification 101	Qualification	Primary	2018-04-06T17:21:00	2521	Blue	Blue1	f
q.101.blue2	101	Qualification 101	Qualification	Primary	2018-04-06T17:21:00	5803	Blue	Blue2	f
q.101.blue3	101	Qualification 101	Qualification	Primary	2018-04-06T17:21:00	5468	Blue	Blue3	f
q.101.red1	101	Qualification 101	Qualification	Primary	2018-04-06T17:21:00	5920	Red	Red1	f
q.101.red2	101	Qualification 101	Qualification	Primary	2018-04-06T17:21:00	4469	Red	Red2	f
q.101.red3	101	Qualification 101	Qualification	Primary	2018-04-06T17:21:00	1510	Red	Red3	f
q.102.blue1	102	Qualification 102	Qualification	Primary	2018-04-06T17:28:00	3711	Blue	Blue1	f
q.102.blue2	102	Qualification 102	Qualification	Primary	2018-04-06T17:28:00	2910	Blue	Blue2	f
q.102.blue3	102	Qualification 102	Qualification	Primary	2018-04-06T17:28:00	2605	Blue	Blue3	f
q.102.red1	102	Qualification 102	Qualification	Primary	2018-04-06T17:28:00	3674	Red	Red1	f
q.102.red2	102	Qualification 102	Qualification	Primary	2018-04-06T17:28:00	3024	Red	Red2	f
q.102.red3	102	Qualification 102	Qualification	Primary	2018-04-06T17:28:00	4911	Red	Red3	f
q.103.blue1	103	Qualification 103	Qualification	Primary	2018-04-06T17:35:00	3663	Blue	Blue1	f
q.103.blue2	103	Qualification 103	Qualification	Primary	2018-04-06T17:35:00	4915	Blue	Blue2	f
q.103.blue3	103	Qualification 103	Qualification	Primary	2018-04-06T17:35:00	6076	Blue	Blue3	f
q.103.red1	103	Qualification 103	Qualification	Primary	2018-04-06T17:35:00	488	Red	Red1	f
q.103.red2	103	Qualification 103	Qualification	Primary	2018-04-06T17:35:00	1359	Red	Red2	f
q.103.red3	103	Qualification 103	Qualification	Primary	2018-04-06T17:35:00	1425	Red	Red3	f
q.104.blue1	104	Qualification 104	Qualification	Primary	2018-04-06T17:42:00	2976	Blue	Blue1	f
q.104.blue2	104	Qualification 104	Qualification	Primary	2018-04-06T17:42:00	1778	Blue	Blue2	f
q.104.blue3	104	Qualification 104	Qualification	Primary	2018-04-06T17:42:00	2374	Blue	Blue3	f
q.104.red1	104	Qualification 104	Qualification	Primary	2018-04-06T17:42:00	3218	Red	Red1	f
q.104.red2	104	Qualification 104	Qualification	Primary	2018-04-06T17:42:00	2944	Red	Red2	f
q.104.red3	104	Qualification 104	Qualification	Primary	2018-04-06T17:42:00	2046	Red	Red3	f
q.105.blue1	105	Qualification 105	Qualification	Primary	2018-04-06T17:49:00	2147	Blue	Blue1	f
q.105.blue2	105	Qualification 105	Qualification	Primary	2018-04-06T17:49:00	4662	Blue	Blue2	f
q.105.blue3	105	Qualification 105	Qualification	Primary	2018-04-06T17:49:00	2990	Blue	Blue3	f
q.105.red1	105	Qualification 105	Qualification	Primary	2018-04-06T17:49:00	2811	Red	Red1	f
q.105.red2	105	Qualification 105	Qualification	Primary	2018-04-06T17:49:00	4131	Red	Red2	f
q.105.red3	105	Qualification 105	Qualification	Primary	2018-04-06T17:49:00	847	Red	Red3	f
q.106.blue1	106	Qualification 106	Qualification	Primary	2018-04-06T17:56:00	1595	Blue	Blue1	f
q.106.blue2	106	Qualification 106	Qualification	Primary	2018-04-06T17:56:00	6845	Blue	Blue2	f
q.106.blue3	106	Qualification 106	Qualification	Primary	2018-04-06T17:56:00	2635	Blue	Blue3	f
q.106.red1	106	Qualification 106	Qualification	Primary	2018-04-06T17:56:00	1983	Red	Red1	f
q.106.red2	106	Qualification 106	Qualification	Primary	2018-04-06T17:56:00	1540	Red	Red2	f
q.106.red3	106	Qualification 106	Qualification	Primary	2018-04-06T17:56:00	4125	Red	Red3	f
q.107.blue1	107	Qualification 107	Qualification	Primary	2018-04-06T18:03:00	5450	Blue	Blue1	f
q.107.blue2	107	Qualification 107	Qualification	Primary	2018-04-06T18:03:00	2928	Blue	Blue2	f
q.107.blue3	107	Qualification 107	Qualification	Primary	2018-04-06T18:03:00	4911	Blue	Blue3	f
q.107.red1	107	Qualification 107	Qualification	Primary	2018-04-06T18:03:00	6465	Red	Red1	f
q.107.red2	107	Qualification 107	Qualification	Primary	2018-04-06T18:03:00	2906	Red	Red2	f
q.107.red3	107	Qualification 107	Qualification	Primary	2018-04-06T18:03:00	948	Red	Red3	f
q.108.blue1	108	Qualification 108	Qualification	Primary	2018-04-07T09:10:00	957	Blue	Blue1	f
q.108.blue2	108	Qualification 108	Qualification	Primary	2018-04-07T09:10:00	5803	Blue	Blue2	f
q.108.blue3	108	Qualification 108	Qualification	Primary	2018-04-07T09:10:00	6076	Blue	Blue3	f
q.108.red1	108	Qualification 108	Qualification	Primary	2018-04-07T09:10:00	492	Red	Red1	f
q.108.red2	108	Qualification 108	Qualification	Primary	2018-04-07T09:10:00	3826	Red	Red2	f
q.108.red3	108	Qualification 108	Qualification	Primary	2018-04-07T09:10:00	2522	Red	Red3	f
q.109.blue1	109	Qualification 109	Qualification	Primary	2018-04-07T09:17:00	997	Blue	Blue1	f
q.109.blue2	109	Qualification 109	Qualification	Primary	2018-04-07T09:17:00	4450	Blue	Blue2	f
q.109.blue3	109	Qualification 109	Qualification	Primary	2018-04-07T09:17:00	3711	Blue	Blue3	f
q.109.red1	109	Qualification 109	Qualification	Primary	2018-04-07T09:17:00	4513	Red	Red1	f
q.109.red2	109	Qualification 109	Qualification	Primary	2018-04-07T09:17:00	5468	Red	Red2	f
q.109.red3	109	Qualification 109	Qualification	Primary	2018-04-07T09:17:00	3218	Red	Red3	f
q.110.blue1	110	Qualification 110	Qualification	Primary	2018-04-07T09:24:00	847	Blue	Blue1	f
q.110.blue2	110	Qualification 110	Qualification	Primary	2018-04-07T09:24:00	2521	Blue	Blue2	f
q.110.blue3	110	Qualification 110	Qualification	Primary	2018-04-07T09:24:00	4488	Blue	Blue3	f
q.110.red1	110	Qualification 110	Qualification	Primary	2018-04-07T09:24:00	360	Red	Red1	f
q.110.red2	110	Qualification 110	Qualification	Primary	2018-04-07T09:24:00	1318	Red	Red2	f
q.110.red3	110	Qualification 110	Qualification	Primary	2018-04-07T09:24:00	4980	Red	Red3	f
q.111.blue1	111	Qualification 111	Qualification	Primary	2018-04-07T09:31:00	7034	Blue	Blue1	f
q.111.blue2	111	Qualification 111	Qualification	Primary	2018-04-07T09:31:00	2147	Blue	Blue2	f
q.111.blue3	111	Qualification 111	Qualification	Primary	2018-04-07T09:31:00	1595	Blue	Blue3	f
q.111.red1	111	Qualification 111	Qualification	Primary	2018-04-07T09:31:00	2910	Red	Red1	f
q.111.red2	111	Qualification 111	Qualification	Primary	2018-04-07T09:31:00	1983	Red	Red2	f
q.111.red3	111	Qualification 111	Qualification	Primary	2018-04-07T09:31:00	6845	Red	Red3	f
q.112.blue1	112	Qualification 112	Qualification	Primary	2018-04-07T09:38:00	4061	Blue	Blue1	f
q.112.blue2	112	Qualification 112	Qualification	Primary	2018-04-07T09:38:00	1425	Blue	Blue2	f
q.112.blue3	112	Qualification 112	Qualification	Primary	2018-04-07T09:38:00	2976	Blue	Blue3	f
q.112.red1	112	Qualification 112	Qualification	Primary	2018-04-07T09:38:00	488	Red	Red1	f
q.112.red2	112	Qualification 112	Qualification	Primary	2018-04-07T09:38:00	6465	Red	Red2	f
q.112.red3	112	Qualification 112	Qualification	Primary	2018-04-07T09:38:00	2990	Red	Red3	f
q.113.blue1	113	Qualification 113	Qualification	Primary	2018-04-07T09:45:00	2928	Blue	Blue1	f
q.113.blue2	113	Qualification 113	Qualification	Primary	2018-04-07T09:45:00	2557	Blue	Blue2	f
q.113.blue3	113	Qualification 113	Qualification	Primary	2018-04-07T09:45:00	4131	Blue	Blue3	f
q.113.red1	113	Qualification 113	Qualification	Primary	2018-04-07T09:45:00	2944	Red	Red1	f
q.113.red2	113	Qualification 113	Qualification	Primary	2018-04-07T09:45:00	2635	Red	Red2	f
q.113.red3	113	Qualification 113	Qualification	Primary	2018-04-07T09:45:00	3238	Red	Red3	f
q.114.blue1	114	Qualification 114	Qualification	Primary	2018-04-07T09:52:00	6831	Blue	Blue1	f
q.114.blue2	114	Qualification 114	Qualification	Primary	2018-04-07T09:52:00	1540	Blue	Blue2	f
q.114.blue3	114	Qualification 114	Qualification	Primary	2018-04-07T09:52:00	1778	Blue	Blue3	f
q.114.red1	114	Qualification 114	Qualification	Primary	2018-04-07T09:52:00	4469	Red	Red1	f
q.114.red2	114	Qualification 114	Qualification	Primary	2018-04-07T09:52:00	2733	Red	Red2	f
q.114.red3	114	Qualification 114	Qualification	Primary	2018-04-07T09:52:00	2906	Red	Red3	f
q.115.blue1	115	Qualification 115	Qualification	Primary	2018-04-07T09:59:00	5450	Blue	Blue1	f
q.115.blue2	115	Qualification 115	Qualification	Primary	2018-04-07T09:59:00	2811	Blue	Blue2	f
q.115.blue3	115	Qualification 115	Qualification	Primary	2018-04-07T09:59:00	2046	Blue	Blue3	f
q.115.red1	115	Qualification 115	Qualification	Primary	2018-04-07T09:59:00	1359	Red	Red1	f
q.115.red2	115	Qualification 115	Qualification	Primary	2018-04-07T09:59:00	4512	Red	Red2	f
q.115.red3	115	Qualification 115	Qualification	Primary	2018-04-07T09:59:00	1510	Red	Red3	f
q.116.blue1	116	Qualification 116	Qualification	Primary	2018-04-07T10:06:00	3223	Blue	Blue1	f
q.116.blue2	116	Qualification 116	Qualification	Primary	2018-04-07T10:06:00	4662	Blue	Blue2	f
q.116.blue3	116	Qualification 116	Qualification	Primary	2018-04-07T10:06:00	2471	Blue	Blue3	f
q.116.red1	116	Qualification 116	Qualification	Primary	2018-04-07T10:06:00	4915	Red	Red1	f
q.116.red2	116	Qualification 116	Qualification	Primary	2018-04-07T10:06:00	2930	Red	Red2	f
q.116.red3	116	Qualification 116	Qualification	Primary	2018-04-07T10:06:00	2605	Red	Red3	f
q.117.blue1	117	Qualification 117	Qualification	Primary	2018-04-07T10:13:00	3663	Blue	Blue1	f
q.117.blue2	117	Qualification 117	Qualification	Primary	2018-04-07T10:13:00	4125	Blue	Blue2	f
q.117.blue3	117	Qualification 117	Qualification	Primary	2018-04-07T10:13:00	3024	Blue	Blue3	f
q.117.red1	117	Qualification 117	Qualification	Primary	2018-04-07T10:13:00	6443	Red	Red1	f
q.117.red2	117	Qualification 117	Qualification	Primary	2018-04-07T10:13:00	5920	Red	Red2	f
q.117.red3	117	Qualification 117	Qualification	Primary	2018-04-07T10:13:00	6445	Red	Red3	f
q.118.blue1	118	Qualification 118	Qualification	Primary	2018-04-07T10:20:00	2374	Blue	Blue1	f
q.118.blue2	118	Qualification 118	Qualification	Primary	2018-04-07T10:20:00	7034	Blue	Blue2	f
q.118.blue3	118	Qualification 118	Qualification	Primary	2018-04-07T10:20:00	2990	Blue	Blue3	f
q.118.red1	118	Qualification 118	Qualification	Primary	2018-04-07T10:20:00	3674	Red	Red1	f
q.118.red2	118	Qualification 118	Qualification	Primary	2018-04-07T10:20:00	360	Red	Red2	f
q.118.red3	118	Qualification 118	Qualification	Primary	2018-04-07T10:20:00	492	Red	Red3	f
q.119.blue1	119	Qualification 119	Qualification	Primary	2018-04-07T10:27:00	4131	Blue	Blue1	f
q.119.blue2	119	Qualification 119	Qualification	Primary	2018-04-07T10:27:00	1595	Blue	Blue2	f
q.119.blue3	119	Qualification 119	Qualification	Primary	2018-04-07T10:27:00	4911	Blue	Blue3	f
q.119.red1	119	Qualification 119	Qualification	Primary	2018-04-07T10:27:00	6076	Red	Red1	f
q.119.red2	119	Qualification 119	Qualification	Primary	2018-04-07T10:27:00	5468	Red	Red2	f
q.119.red3	119	Qualification 119	Qualification	Primary	2018-04-07T10:27:00	1778	Red	Red3	f
q.120.blue1	120	Qualification 120	Qualification	Primary	2018-04-07T10:34:00	2944	Blue	Blue1	f
q.120.blue2	120	Qualification 120	Qualification	Primary	2018-04-07T10:34:00	1318	Blue	Blue2	f
q.120.blue3	120	Qualification 120	Qualification	Primary	2018-04-07T10:34:00	1540	Blue	Blue3	f
q.120.red1	120	Qualification 120	Qualification	Primary	2018-04-07T10:34:00	948	Red	Red1	f
q.120.red2	120	Qualification 120	Qualification	Primary	2018-04-07T10:34:00	1359	Red	Red2	f
q.120.red3	120	Qualification 120	Qualification	Primary	2018-04-07T10:34:00	4061	Red	Red3	f
q.121.blue1	121	Qualification 121	Qualification	Primary	2018-04-07T10:41:00	2910	Blue	Blue1	f
q.121.blue2	121	Qualification 121	Qualification	Primary	2018-04-07T10:41:00	3223	Blue	Blue2	f
q.121.blue3	121	Qualification 121	Qualification	Primary	2018-04-07T10:41:00	6465	Blue	Blue3	f
q.121.red1	121	Qualification 121	Qualification	Primary	2018-04-07T10:41:00	2521	Red	Red1	f
q.121.red2	121	Qualification 121	Qualification	Primary	2018-04-07T10:41:00	1510	Red	Red2	f
q.121.red3	121	Qualification 121	Qualification	Primary	2018-04-07T10:41:00	2635	Red	Red3	f
q.122.blue1	122	Qualification 122	Qualification	Primary	2018-04-07T10:48:00	4980	Blue	Blue1	f
q.122.blue2	122	Qualification 122	Qualification	Primary	2018-04-07T10:48:00	2605	Blue	Blue2	f
q.122.blue3	122	Qualification 122	Qualification	Primary	2018-04-07T10:48:00	4488	Blue	Blue3	f
q.122.red1	122	Qualification 122	Qualification	Primary	2018-04-07T10:48:00	2906	Red	Red1	f
q.122.red2	122	Qualification 122	Qualification	Primary	2018-04-07T10:48:00	3238	Red	Red2	f
q.122.red3	122	Qualification 122	Qualification	Primary	2018-04-07T10:48:00	3663	Red	Red3	f
q.123.blue1	123	Qualification 123	Qualification	Primary	2018-04-07T10:55:00	2733	Blue	Blue1	f
q.123.blue2	123	Qualification 123	Qualification	Primary	2018-04-07T10:55:00	2811	Blue	Blue2	f
q.123.blue3	123	Qualification 123	Qualification	Primary	2018-04-07T10:55:00	4662	Blue	Blue3	f
q.123.red1	123	Qualification 123	Qualification	Primary	2018-04-07T10:55:00	2046	Red	Red1	f
q.123.red2	123	Qualification 123	Qualification	Primary	2018-04-07T10:55:00	4450	Red	Red2	f
q.123.red3	123	Qualification 123	Qualification	Primary	2018-04-07T10:55:00	3674	Red	Red3	f
q.124.blue1	124	Qualification 124	Qualification	Primary	2018-04-07T11:02:00	4915	Blue	Blue1	f
q.124.blue2	124	Qualification 124	Qualification	Primary	2018-04-07T11:02:00	4125	Blue	Blue2	f
q.124.blue3	124	Qualification 124	Qualification	Primary	2018-04-07T11:02:00	847	Blue	Blue3	f
q.124.red1	124	Qualification 124	Qualification	Primary	2018-04-07T11:02:00	2930	Red	Red1	f
q.124.red2	124	Qualification 124	Qualification	Primary	2018-04-07T11:02:00	2557	Red	Red2	f
q.124.red3	124	Qualification 124	Qualification	Primary	2018-04-07T11:02:00	5803	Red	Red3	f
q.125.blue1	125	Qualification 125	Qualification	Primary	2018-04-07T11:09:00	2471	Blue	Blue1	f
q.125.blue2	125	Qualification 125	Qualification	Primary	2018-04-07T11:09:00	1983	Blue	Blue2	f
q.125.blue3	125	Qualification 125	Qualification	Primary	2018-04-07T11:09:00	4469	Blue	Blue3	f
q.125.red1	125	Qualification 125	Qualification	Primary	2018-04-07T11:09:00	3218	Red	Red1	f
q.125.red2	125	Qualification 125	Qualification	Primary	2018-04-07T11:09:00	3826	Red	Red2	f
q.125.red3	125	Qualification 125	Qualification	Primary	2018-04-07T11:09:00	1425	Red	Red3	f
q.126.blue1	126	Qualification 126	Qualification	Primary	2018-04-07T11:16:00	4513	Blue	Blue1	f
q.126.blue2	126	Qualification 126	Qualification	Primary	2018-04-07T11:16:00	3024	Blue	Blue2	f
q.126.blue3	126	Qualification 126	Qualification	Primary	2018-04-07T11:16:00	957	Blue	Blue3	f
q.126.red1	126	Qualification 126	Qualification	Primary	2018-04-07T11:16:00	5450	Red	Red1	f
q.126.red2	126	Qualification 126	Qualification	Primary	2018-04-07T11:16:00	6831	Red	Red2	f
q.126.red3	126	Qualification 126	Qualification	Primary	2018-04-07T11:16:00	6845	Red	Red3	f
q.127.blue1	127	Qualification 127	Qualification	Primary	2018-04-07T11:23:00	6443	Blue	Blue1	f
q.127.blue2	127	Qualification 127	Qualification	Primary	2018-04-07T11:23:00	2374	Blue	Blue2	f
q.127.blue3	127	Qualification 127	Qualification	Primary	2018-04-07T11:23:00	488	Blue	Blue3	f
q.127.red1	127	Qualification 127	Qualification	Primary	2018-04-07T11:23:00	3711	Red	Red1	f
q.127.red2	127	Qualification 127	Qualification	Primary	2018-04-07T11:23:00	6445	Red	Red2	f
q.127.red3	127	Qualification 127	Qualification	Primary	2018-04-07T11:23:00	2522	Red	Red3	f
q.128.blue1	128	Qualification 128	Qualification	Primary	2018-04-07T11:30:00	4512	Blue	Blue1	f
q.128.blue2	128	Qualification 128	Qualification	Primary	2018-04-07T11:30:00	997	Blue	Blue2	f
q.128.blue3	128	Qualification 128	Qualification	Primary	2018-04-07T11:30:00	2928	Blue	Blue3	f
q.128.red1	128	Qualification 128	Qualification	Primary	2018-04-07T11:30:00	2976	Red	Red1	f
q.128.red2	128	Qualification 128	Qualification	Primary	2018-04-07T11:30:00	2147	Red	Red2	f
q.128.red3	128	Qualification 128	Qualification	Primary	2018-04-07T11:30:00	5920	Red	Red3	f
\.


--
-- Data for Name: scores; Type: TABLE DATA; Schema: public; Owner: irs1318
--

COPY public.scores ("row.names", level, match, "switchLeftNearColor", "switchRightNearColor", "scaleNearColor", alliance, "autoRobot1", "autoRobot2", "autoRobot3", "autoSwitchOwnershipSec", "autoScaleOwnershipSec", "autoSwitchAtZero", "autoRunPoints", "autoOwnershipPoints", "autoPoints", "teleopSwitchOwnershipSec", "teleopScaleOwnershipSec", "teleopSwitchBoostSec", "teleopScaleBoostSec", "teleopSwitchForceSec", "teleopScaleForceSec", "vaultForceTotal", "vaultForcePlayed", "vaultLevitateTotal", "vaultLevitatePlayed", "vaultBoostTotal", "vaultBoostPlayed", "endgameRobot1", "endgameRobot2", "endgameRobot3", "teleopPoints", "teleopOwnershipPoints", "vaultPoints", "endgamePoints", "autoQuestRankingPoint", "faceTheBossRankingPoint", "foulCount", "techFoulCount", "adjustPoints", "foulPoints", rp, "totalPoints") FROM stdin;
1.blue	Qualification	1	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	9	0	t	15	18	33	96	0	10	0	8	0	1	1	3	3	1	1	Levitate	Climbing	Parking	196	106	25	65	t	f	0	0	0	0	1	229
1.red	Qualification	1	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	7	10	t	15	34	49	116	136	10	10	10	10	3	3	3	3	3	3	Parking	Levitate	Parking	357	272	45	40	t	f	0	0	0	0	3	406
2.blue	Qualification	2	Blue	Blue	Blue	Blue	AutoRun	AutoRun	None	0	0	f	10	0	10	105	13	6	0	0	0	0	0	3	3	1	1	None	Climbing	Levitate	204	124	20	60	f	f	1	1	0	25	0	239
2.red	Qualification	2	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	7	4	t	15	22	37	54	104	0	0	10	0	1	1	3	3	0	0	None	Parking	Levitate	213	158	20	35	t	f	0	1	0	30	3	280
3.blue	Qualification	3	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	12	1	t	15	26	41	136	135	10	0	1	1	3	3	3	3	1	1	Levitate	Parking	Climbing	381	281	35	65	t	f	0	0	0	25	3	447
3.red	Qualification	3	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	11	0	t	15	22	37	93	0	0	0	0	0	0	0	3	3	0	0	Levitate	Parking	Climbing	173	93	15	65	t	f	0	1	0	0	1	210
4.blue	Qualification	4	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	106	109	0	0	0	0	0	0	3	3	0	0	Levitate	Climbing	Parking	295	215	15	65	t	f	0	3	0	25	3	355
4.red	Qualification	4	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	10	2	t	15	24	39	136	12	10	0	0	2	2	2	3	3	1	1	Levitate	None	Parking	223	158	30	35	t	f	0	1	0	75	1	337
5.blue	Qualification	5	Red	Red	Red	Blue	AutoRun	AutoRun	None	1	0	t	10	2	12	136	12	10	0	0	10	2	2	3	3	3	1	Parking	Climbing	Levitate	263	158	40	65	f	f	0	0	0	0	2	275
5.red	Qualification	5	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	26	100	0	0	0	0	0	0	1	0	0	0	Parking	None	None	136	126	5	5	t	f	0	0	0	0	1	167
6.blue	Qualification	6	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	10	4	t	15	28	43	136	136	10	0	0	0	2	0	3	3	1	1	Levitate	Parking	Climbing	377	282	30	65	t	f	0	0	0	0	3	420
6.red	Qualification	6	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	46	0	0	0	10	0	1	1	3	3	0	0	Climbing	Climbing	Levitate	156	46	20	90	t	t	0	0	0	0	2	191
7.blue	Qualification	7	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	9	7	t	15	32	47	136	134	10	10	0	0	0	0	3	3	3	3	Parking	Climbing	Levitate	385	290	30	65	t	f	0	0	0	0	3	432
7.red	Qualification	7	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	9	0	t	15	18	33	131	3	10	0	2	2	3	3	3	3	1	1	Levitate	Climbing	Parking	244	144	35	65	t	f	0	0	0	0	1	277
8.blue	Qualification	8	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	0	0	f	15	0	15	80	94	0	0	0	0	0	0	2	0	0	0	Parking	None	None	189	174	10	5	f	f	1	1	0	0	0	204
8.red	Qualification	8	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	9	0	t	15	18	33	136	12	10	0	10	0	1	1	3	3	3	3	Levitate	Climbing	Parking	258	158	35	65	t	f	0	0	0	30	3	321
9.blue	Qualification	9	Red	Red	Blue	Blue	AutoRun	AutoRun	None	6	0	t	10	12	22	114	7	0	0	0	0	0	0	3	3	0	0	Parking	Levitate	Parking	176	121	15	40	f	f	2	0	0	50	0	248
9.red	Qualification	9	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	3	0	t	15	6	21	136	99	10	10	0	10	2	2	3	3	3	3	Climbing	Parking	Levitate	360	255	40	65	t	f	0	2	0	10	3	391
10.blue	Qualification	10	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	11	10	t	15	42	57	136	126	10	10	10	10	3	3	3	3	3	3	Climbing	Parking	Levitate	392	282	45	65	t	f	1	0	0	50	3	499
10.red	Qualification	10	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	11	0	t	15	22	37	136	11	5	0	0	10	2	2	3	3	3	3	Parking	Climbing	Levitate	257	152	40	65	t	f	0	2	0	5	1	299
11.blue	Qualification	11	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	3	0	f	15	6	21	50	64	0	0	0	0	0	0	0	0	0	0	Parking	None	None	119	114	0	5	f	f	0	1	0	30	0	170
11.red	Qualification	11	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	5	4	t	15	18	33	97	57	0	0	0	2	2	2	3	3	1	1	Climbing	Levitate	Parking	249	154	30	65	t	f	1	1	0	25	3	307
12.blue	Qualification	12	Red	Red	Blue	Blue	AutoRun	None	AutoRun	8	0	t	10	16	26	136	11	10	0	10	10	3	3	3	3	1	1	Climbing	Climbing	Climbing	282	157	35	90	f	t	0	1	0	30	1	338
12.red	Qualification	12	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	9	3	t	15	24	39	108	122	10	0	0	0	0	0	3	3	1	1	Climbing	Levitate	Climbing	350	240	20	90	t	t	1	1	0	25	4	414
13.blue	Qualification	13	Blue	Blue	Blue	Blue	AutoRun	None	AutoRun	10	0	t	10	20	30	136	104	10	6	0	0	0	0	3	3	3	3	Climbing	Levitate	Climbing	376	256	30	90	f	t	0	0	0	0	3	406
13.red	Qualification	13	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	13	10	0	0	10	2	2	3	3	3	3	Levitate	Parking	Parking	239	159	40	40	t	f	0	0	0	0	1	274
14.blue	Qualification	14	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	135	88	10	0	1	0	1	1	3	3	3	3	Parking	Levitate	Climbing	333	233	35	65	t	f	0	0	0	25	3	389
14.red	Qualification	14	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	30	10	0	0	10	2	2	2	0	1	1	None	Climbing	None	231	176	25	30	t	f	0	1	0	0	1	266
15.blue	Qualification	15	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	46	10	5	0	10	2	2	3	3	3	3	Climbing	Levitate	Parking	302	197	40	65	t	f	2	2	0	0	1	337
15.red	Qualification	15	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	11	8	t	15	38	53	136	89	10	10	0	10	2	2	3	3	3	3	Climbing	Levitate	Parking	350	245	40	65	t	f	0	0	0	60	3	463
16.blue	Qualification	16	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	117	10	10	0	10	3	2	3	3	3	3	Climbing	Levitate	Parking	383	273	45	65	t	f	0	0	0	0	3	418
16.red	Qualification	16	Blue	Blue	Red	Red	AutoRun	AutoRun	None	0	0	f	10	0	10	127	0	3	0	0	0	0	0	3	3	1	1	Levitate	None	Climbing	210	130	20	60	f	f	0	0	0	0	0	220
17.blue	Qualification	17	Blue	Blue	Red	Blue	AutoRun	AutoRun	None	0	1	f	10	2	12	54	71	0	0	0	10	2	2	3	3	1	0	Parking	Parking	Levitate	195	125	30	40	f	f	0	2	0	25	0	232
17.red	Qualification	17	Blue	Blue	Red	Red	AutoRun	None	AutoRun	10	0	t	10	20	30	136	50	0	3	0	0	0	0	0	0	2	2	None	None	None	199	189	10	0	f	f	0	1	0	50	2	279
18.blue	Qualification	18	Red	Red	Red	Blue	None	AutoRun	AutoRun	7	0	t	10	14	24	77	0	0	0	0	0	0	0	3	3	0	0	Levitate	Parking	Climbing	157	77	15	65	f	f	0	1	0	0	0	181
18.red	Qualification	18	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	9	8	t	15	34	49	113	136	10	10	0	0	0	0	3	3	3	3	Climbing	Levitate	Parking	364	269	30	65	t	f	0	0	0	25	3	438
19.blue	Qualification	19	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	8	1	t	15	18	33	136	50	10	0	0	10	2	2	3	3	2	1	Levitate	Climbing	Parking	296	196	35	65	t	f	1	1	0	5	3	334
19.red	Qualification	19	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	3	1	t	15	8	23	57	84	0	0	0	0	0	0	1	0	1	1	None	None	Parking	156	141	10	5	t	f	1	0	0	30	1	209
20.blue	Qualification	20	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	11	0	t	15	22	37	136	56	0	0	0	0	0	0	0	0	0	0	Parking	None	Climbing	227	192	0	35	t	f	0	0	0	25	1	289
20.red	Qualification	20	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	11	5	t	15	32	47	136	63	10	0	10	10	3	3	3	3	3	3	Parking	Climbing	Levitate	319	209	45	65	t	f	0	1	0	0	3	366
21.blue	Qualification	21	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	14	10	0	0	10	3	2	3	3	3	1	Parking	Climbing	Levitate	270	160	45	65	t	f	0	0	0	50	1	355
21.red	Qualification	21	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	0	0	f	15	0	15	123	111	8	10	10	10	3	3	3	3	3	3	Parking	Levitate	Climbing	362	252	45	65	f	f	0	2	0	0	2	377
22.blue	Qualification	22	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	0	0	f	15	0	15	127	0	0	0	0	0	0	0	3	3	1	0	Climbing	Climbing	Levitate	237	127	20	90	f	t	1	1	0	0	1	252
22.red	Qualification	22	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	90	115	0	10	4	0	1	1	3	3	3	3	Climbing	Climbing	Levitate	340	215	35	90	t	t	0	0	0	30	4	405
23.blue	Qualification	23	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	7	0	t	15	14	29	111	76	10	10	2	0	1	1	0	0	3	3	None	None	Climbing	257	207	20	30	t	f	0	1	0	30	3	316
23.red	Qualification	23	Blue	Blue	Red	Red	None	AutoRun	AutoRun	4	0	t	10	8	18	136	23	10	0	0	10	3	2	3	3	3	1	Parking	Levitate	Parking	254	169	45	40	f	f	1	1	0	25	0	297
24.blue	Qualification	24	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	8	1	t	15	18	33	136	119	10	10	10	10	3	3	3	3	3	3	Climbing	Levitate	Parking	385	275	45	65	t	f	3	0	0	25	3	443
24.red	Qualification	24	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	0	0	f	15	0	15	68	0	0	0	0	0	0	0	3	3	0	0	None	Parking	Levitate	118	68	15	35	f	f	0	1	0	15	0	148
25.blue	Qualification	25	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	11	0	t	15	22	37	136	1	10	0	4	0	1	1	3	3	1	1	Parking	Levitate	Parking	212	147	25	40	t	f	1	0	0	0	1	249
25.red	Qualification	25	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	6	0	t	15	12	27	136	88	0	1	0	0	3	0	3	3	2	2	Parking	Climbing	Levitate	330	225	40	65	t	f	0	0	0	5	3	362
26.blue	Qualification	26	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	10	5	t	15	30	45	113	103	0	0	0	0	0	0	3	3	0	0	Parking	Levitate	Climbing	296	216	15	65	t	f	0	0	0	15	3	356
26.red	Qualification	26	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	11	4	t	15	30	45	129	30	0	0	0	0	0	0	3	3	0	0	None	Levitate	Climbing	234	159	15	60	t	f	3	0	0	0	1	279
27.blue	Qualification	27	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	12	0	t	15	24	39	59	21	0	0	0	0	0	0	0	0	0	0	None	None	Parking	85	80	0	5	t	f	1	1	0	25	1	149
27.red	Qualification	27	Red	Red	Blue	Red	AutoRun	None	AutoRun	9	0	t	10	18	28	136	106	10	10	10	10	3	3	3	3	3	3	Climbing	Parking	Levitate	372	262	45	65	f	f	0	1	0	30	2	430
28.blue	Qualification	28	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	80	27	0	0	0	10	2	2	3	3	0	0	Levitate	None	Climbing	192	107	25	60	t	f	0	0	0	60	1	287
28.red	Qualification	28	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	9	10	t	15	38	53	136	108	10	4	0	10	2	2	3	3	3	3	Levitate	Climbing	Climbing	388	258	40	90	t	t	2	2	0	0	4	441
29.blue	Qualification	29	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	0	0	f	15	0	15	108	44	0	0	0	0	0	0	3	3	0	0	Levitate	Climbing	Climbing	257	152	15	90	f	t	0	1	0	35	1	307
29.red	Qualification	29	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	9	7	t	15	32	47	136	85	0	0	0	10	2	2	3	3	0	0	Climbing	Levitate	Climbing	336	221	25	90	t	t	2	1	0	25	4	408
30.blue	Qualification	30	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	9	4	t	15	26	41	136	22	10	0	0	10	2	2	3	3	2	1	Parking	None	Levitate	238	168	35	35	t	f	0	0	0	5	1	284
30.red	Qualification	30	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	88	10	4	10	10	3	3	3	3	3	3	Climbing	Levitate	Climbing	373	238	45	90	t	t	1	0	0	0	4	408
31.blue	Qualification	31	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	6	0	t	15	12	27	136	126	10	10	0	0	0	0	3	3	3	3	Levitate	Parking	Parking	352	282	30	40	t	f	0	0	0	45	3	424
31.red	Qualification	31	Blue	Blue	Blue	Red	AutoRun	AutoRun	None	0	0	f	10	0	10	18	0	0	0	0	0	0	0	2	0	0	0	None	None	Parking	33	18	10	5	f	f	4	1	0	0	0	43
32.blue	Qualification	32	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	30	133	0	10	10	0	2	1	3	3	3	2	Parking	Levitate	Parking	253	173	40	40	t	f	1	1	0	0	3	288
32.red	Qualification	32	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	69	0	0	0	0	0	0	0	0	0	0	0	None	Parking	Climbing	104	69	0	35	t	f	0	0	0	30	1	165
33.blue	Qualification	33	Blue	Blue	Red	Blue	None	AutoRun	AutoRun	8	0	t	10	16	26	136	59	10	10	0	0	0	0	3	3	3	3	None	Climbing	Levitate	305	215	30	60	f	f	1	1	0	35	2	366
33.red	Qualification	33	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	15	10	0	0	10	2	2	3	3	2	1	Climbing	Levitate	Climbing	286	161	35	90	t	t	2	1	0	30	2	351
34.blue	Qualification	34	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	11	1	t	15	24	39	136	69	0	0	0	0	0	0	3	3	0	0	Parking	Levitate	Climbing	285	205	15	65	t	f	0	1	0	0	1	324
34.red	Qualification	34	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	54	1	0	0	10	2	2	3	3	1	1	Climbing	Climbing	Levitate	311	191	30	90	t	t	0	0	0	25	4	371
35.blue	Qualification	35	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	9	5	t	15	28	43	136	97	0	0	0	0	0	0	3	3	0	0	None	Climbing	Levitate	308	233	15	60	t	f	2	1	0	130	3	481
35.red	Qualification	35	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	8	2	t	15	20	35	136	21	9	0	0	0	0	0	3	3	1	1	Parking	Levitate	Parking	226	166	20	40	t	f	1	5	0	35	1	296
36.blue	Qualification	36	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	7	0	t	15	14	29	136	28	0	0	10	10	3	3	3	3	0	0	Levitate	Parking	Parking	234	164	30	40	t	f	0	0	0	0	1	263
36.red	Qualification	36	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	11	2	t	15	26	41	136	83	0	0	0	0	0	0	1	0	0	0	None	None	Parking	229	219	5	5	t	f	0	0	0	0	3	270
37.blue	Qualification	37	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	9	5	t	15	28	43	136	136	10	10	0	10	3	2	3	3	3	3	Levitate	Climbing	Climbing	427	292	45	90	t	t	2	0	0	5	4	475
37.red	Qualification	37	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	7	0	t	15	14	29	136	0	2	0	10	0	3	1	3	3	1	1	Levitate	None	Parking	208	138	35	35	t	f	1	0	0	10	1	247
38.blue	Qualification	38	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	4	1	t	15	10	25	89	115	10	10	0	0	1	0	3	3	3	3	Climbing	Climbing	Levitate	349	224	35	90	t	t	2	1	0	0	4	374
38.red	Qualification	38	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	10	2	t	15	24	39	136	11	10	0	0	10	2	2	3	3	2	1	Levitate	Climbing	Parking	257	157	35	65	t	f	0	0	0	35	1	331
39.blue	Qualification	39	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	11	7	t	15	36	51	136	103	10	10	0	0	3	3	3	3	3	3	Climbing	Parking	Levitate	369	259	45	65	t	f	2	0	0	25	3	445
39.red	Qualification	39	Blue	Blue	Blue	Red	AutoRun	None	AutoRun	0	0	f	10	0	10	128	11	0	0	0	10	2	2	3	3	1	0	None	None	Levitate	199	139	30	30	f	f	0	1	0	10	0	219
40.blue	Qualification	40	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	62	11	0	0	10	10	3	3	3	3	3	3	Parking	Climbing	Levitate	183	73	45	65	t	f	1	1	0	35	1	253
40.red	Qualification	40	Blue	Blue	Red	Red	AutoRun	None	AutoRun	5	8	t	10	26	36	136	125	10	10	10	0	3	1	3	3	3	3	Parking	Levitate	Climbing	391	281	45	65	f	f	2	1	0	30	2	457
41.blue	Qualification	41	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	11	0	t	15	22	37	136	64	10	10	10	10	3	3	3	3	3	3	Climbing	Levitate	Climbing	355	220	45	90	t	t	0	1	0	60	4	452
41.red	Qualification	41	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	6	6	t	15	24	39	106	27	0	0	0	0	0	0	3	3	0	0	Parking	Climbing	Levitate	213	133	15	65	t	f	2	2	0	25	1	277
42.blue	Qualification	42	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	9	0	t	15	18	33	136	116	10	10	10	10	3	3	3	3	3	3	Climbing	Levitate	Climbing	407	272	45	90	t	t	0	2	0	0	4	440
42.red	Qualification	42	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	6	0	t	15	12	27	136	0	10	0	10	0	2	1	3	3	1	1	Parking	None	Levitate	211	146	30	35	t	f	0	0	0	50	1	288
43.blue	Qualification	43	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	75	116	0	0	10	0	2	1	3	3	3	1	Climbing	Levitate	None	291	191	40	60	t	f	0	1	0	0	3	322
43.red	Qualification	43	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	136	11	0	0	0	10	2	2	3	3	0	0	Levitate	Climbing	Parking	237	147	25	65	t	f	0	0	0	25	1	293
44.blue	Qualification	44	Red	Red	Blue	Blue	AutoRun	AutoRun	None	7	0	t	10	14	24	38	0	0	0	0	0	0	0	0	0	0	0	Climbing	Climbing	None	98	38	0	60	f	f	1	1	0	25	0	147
44.red	Qualification	44	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	11	7	t	15	36	51	136	136	10	10	10	10	3	3	3	3	3	3	Levitate	Climbing	Climbing	427	292	45	90	t	t	0	1	0	30	4	508
45.blue	Qualification	45	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	128	60	10	8	0	10	2	2	3	3	3	3	Levitate	Climbing	Climbing	336	206	40	90	t	t	0	1	0	30	4	397
45.red	Qualification	45	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	7	0	t	15	14	29	136	67	9	9	0	0	0	0	2	0	3	3	Parking	None	None	251	221	25	5	t	f	1	1	0	25	1	303
46.blue	Qualification	46	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	7	2	t	15	18	33	136	101	0	0	0	0	0	0	3	3	0	0	Climbing	Levitate	Parking	317	237	15	65	t	f	11	0	0	20	3	370
46.red	Qualification	46	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	11	0	t	15	22	37	111	12	0	0	0	0	0	0	3	3	0	0	Parking	Levitate	Climbing	203	123	15	65	t	f	4	0	0	55	1	295
47.blue	Qualification	47	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	10	5	t	15	30	45	132	46	8	0	0	10	2	2	3	3	2	1	Parking	Levitate	Parking	261	186	35	40	t	f	0	0	0	10	3	316
47.red	Qualification	47	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	63	81	0	0	10	10	3	3	3	3	0	0	Climbing	Parking	Levitate	239	144	30	65	t	f	2	0	0	0	1	274
48.blue	Qualification	48	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	10	8	t	15	36	51	134	92	0	0	0	0	0	0	3	3	0	0	Parking	Climbing	Levitate	306	226	15	65	t	f	1	0	0	5	3	362
48.red	Qualification	48	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	136	35	10	0	0	10	2	2	3	3	1	1	Climbing	None	Levitate	271	181	30	60	t	f	1	0	0	5	1	307
49.blue	Qualification	49	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	7	0	t	15	14	29	136	114	10	10	10	10	3	3	3	3	3	3	Levitate	Parking	Parking	355	270	45	40	t	f	0	2	0	0	3	384
49.red	Qualification	49	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	7	7	t	15	28	43	136	19	10	0	0	0	0	0	3	3	1	1	Climbing	Parking	Levitate	250	165	20	65	t	f	0	0	0	50	1	343
50.blue	Qualification	50	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	0	0	0	0	0	0	0	3	3	3	2	Climbing	Levitate	Parking	231	136	30	65	t	f	1	0	0	75	1	341
50.red	Qualification	50	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	113	10	10	10	10	3	3	0	0	3	3	Climbing	None	None	329	269	30	30	t	f	0	3	0	5	3	369
51.blue	Qualification	51	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	136	11	10	0	0	10	3	2	3	3	3	3	Levitate	Parking	Parking	242	157	45	40	t	f	5	3	0	0	1	273
51.red	Qualification	51	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	111	10	10	10	10	3	3	3	3	3	3	Climbing	Parking	Levitate	377	267	45	65	t	f	0	0	0	100	3	512
52.blue	Qualification	52	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	7	0	t	15	14	29	136	11	10	0	0	10	2	2	3	3	3	1	Parking	Parking	Levitate	237	157	40	40	t	f	4	1	0	20	1	286
52.red	Qualification	52	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	10	7	t	15	34	49	136	119	10	8	10	10	3	3	1	0	3	3	None	None	Climbing	338	273	35	30	t	f	4	0	0	45	3	432
53.blue	Qualification	53	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	7	0	t	15	14	29	129	11	10	0	0	10	2	2	3	3	2	1	Parking	Levitate	Climbing	250	150	35	65	t	f	0	0	0	0	1	279
53.red	Qualification	53	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	11	4	t	15	30	45	117	127	10	10	10	10	3	3	3	3	3	3	Parking	Levitate	Climbing	374	264	45	65	t	f	0	0	0	0	3	419
54.blue	Qualification	54	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	8	7	t	15	30	45	74	49	0	0	0	0	0	0	3	3	0	0	Climbing	Climbing	Levitate	228	123	15	90	t	t	1	0	0	5	2	278
54.red	Qualification	54	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	57	0	0	0	5	2	2	3	3	1	0	Parking	Levitate	Climbing	288	193	30	65	t	f	1	0	0	5	3	328
55.blue	Qualification	55	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	8	11	t	15	38	53	136	136	0	0	0	0	0	0	3	3	0	0	Levitate	Climbing	Parking	352	272	15	65	t	f	0	0	0	30	3	435
55.red	Qualification	55	Blue	Blue	Red	Red	None	AutoRun	AutoRun	10	0	t	10	20	30	136	0	0	0	0	0	0	0	0	0	0	0	Parking	None	None	141	136	0	5	f	f	1	1	0	0	0	171
56.blue	Qualification	56	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	4	0	t	15	8	23	136	70	0	8	0	0	1	0	3	3	3	2	None	Levitate	Climbing	309	214	35	60	t	f	0	1	0	5	3	337
56.red	Qualification	56	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	50	0	0	0	0	0	0	3	3	0	0	Levitate	Parking	Climbing	266	186	15	65	t	f	1	0	0	25	1	326
57.blue	Qualification	57	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	11	7	t	15	36	51	112	3	0	0	0	0	0	0	3	3	0	0	Parking	Parking	Levitate	170	115	15	40	t	f	0	0	0	0	1	221
57.red	Qualification	57	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	9	0	t	15	18	33	88	128	0	0	0	0	0	0	3	3	0	0	Climbing	Climbing	Levitate	321	216	15	90	t	t	0	0	0	0	4	354
58.blue	Qualification	58	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	0	0	f	15	0	15	56	11	0	0	10	10	3	3	3	3	0	0	Levitate	Climbing	Parking	162	67	30	65	f	f	1	0	0	50	0	227
58.red	Qualification	58	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	8	8	t	15	32	47	136	127	0	0	0	0	0	0	3	3	0	0	Climbing	Levitate	Climbing	368	263	15	90	t	t	0	2	0	5	4	420
59.blue	Qualification	59	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	0	1	f	15	2	17	84	14	10	0	0	10	2	2	3	3	3	3	Levitate	Parking	Parking	188	108	40	40	f	f	0	0	0	0	0	205
59.red	Qualification	59	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	10	1	t	15	22	37	132	106	0	0	0	0	0	0	3	3	0	0	None	Climbing	Levitate	313	238	15	60	t	f	0	0	0	0	3	350
60.blue	Qualification	60	Blue	Blue	Blue	Blue	AutoRun	AutoRun	None	11	5	t	10	32	42	136	45	10	10	0	10	3	2	3	3	3	3	Levitate	None	Parking	281	201	45	35	f	f	0	0	0	0	0	323
60.red	Qualification	60	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	9	0	t	15	18	33	114	53	10	10	0	10	2	2	3	3	3	3	Climbing	Climbing	Levitate	317	187	40	90	t	t	0	0	0	0	4	350
61.blue	Qualification	61	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	7	2	t	15	18	33	92	59	0	0	0	0	0	0	3	3	0	0	Levitate	None	Parking	201	151	15	35	t	f	1	0	0	0	1	234
61.red	Qualification	61	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	9	0	t	15	18	33	136	67	10	6	0	0	1	0	3	3	3	3	Levitate	Parking	Climbing	319	219	35	65	t	f	0	0	0	5	3	357
62.blue	Qualification	62	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	7	0	t	15	14	29	136	32	10	0	0	10	2	2	3	3	2	1	Parking	Levitate	Parking	253	178	35	40	t	f	1	0	0	0	1	282
62.red	Qualification	62	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	10	5	t	15	30	45	136	102	0	0	0	0	0	0	3	3	2	2	Climbing	Climbing	Levitate	353	238	25	90	t	t	0	0	0	5	4	403
63.blue	Qualification	63	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	122	128	10	10	0	0	0	0	3	3	3	3	Parking	Climbing	Levitate	365	270	30	65	t	f	0	0	0	0	3	396
63.red	Qualification	63	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	5	0	t	15	10	25	27	0	0	0	0	0	0	0	3	3	0	0	Levitate	Parking	Parking	82	27	15	40	t	f	0	0	0	0	1	107
64.blue	Qualification	64	Red	Red	Red	Blue	AutoRun	None	AutoRun	0	0	f	10	0	10	37	11	0	0	0	10	2	2	3	3	0	0	Climbing	Levitate	Parking	138	48	25	65	f	f	1	0	0	10	0	158
64.red	Qualification	64	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	6	5	t	15	22	37	136	117	10	10	8	8	3	3	3	3	3	3	Levitate	Parking	Climbing	383	273	45	65	t	f	2	0	0	5	3	425
65.blue	Qualification	65	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	10	5	t	15	30	45	130	88	0	0	0	0	0	0	3	3	0	0	Levitate	Parking	Parking	273	218	15	40	t	f	1	7	0	65	1	383
65.red	Qualification	65	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	8	0	f	15	16	31	101	21	4	0	0	10	2	2	3	3	1	1	Levitate	Parking	Parking	196	126	30	40	f	f	3	2	0	180	2	407
66.blue	Qualification	66	Blue	Blue	Blue	Blue	AutoRun	None	AutoRun	11	0	t	10	22	32	98	97	0	0	0	0	0	0	0	0	0	0	Climbing	None	Climbing	255	195	0	60	f	f	0	0	0	0	2	287
66.red	Qualification	66	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	16	10	0	10	10	3	3	3	3	3	3	Levitate	Parking	Parking	247	162	45	40	t	f	0	0	0	0	1	282
67.blue	Qualification	67	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	8	7	t	15	30	45	63	127	3	10	10	0	1	1	3	3	3	3	Climbing	Climbing	Climbing	328	203	35	90	t	t	0	1	0	25	4	398
67.red	Qualification	67	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	11	0	t	15	22	37	106	4	10	0	0	2	2	2	3	3	1	1	Levitate	None	Climbing	210	120	30	60	t	f	0	1	0	25	1	272
68.blue	Qualification	68	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	9	1	t	15	20	35	119	92	0	0	0	0	0	0	3	3	0	0	Climbing	Parking	Levitate	291	211	15	65	t	f	0	0	0	0	3	326
68.red	Qualification	68	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	5	1	t	15	12	27	98	29	0	0	0	0	0	0	1	0	0	0	Parking	None	Parking	142	127	5	10	t	f	0	0	0	0	1	169
69.blue	Qualification	69	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	9	0	t	15	18	33	97	3	0	0	0	2	2	2	3	3	0	0	Climbing	Levitate	Parking	190	100	25	65	t	f	0	0	0	5	1	228
69.red	Qualification	69	Blue	Blue	Blue	Red	None	AutoRun	AutoRun	10	3	t	10	26	36	136	124	10	10	0	10	2	2	3	3	3	3	Parking	Levitate	Parking	360	280	40	40	f	f	1	0	0	0	2	396
70.blue	Qualification	70	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	0	0	f	15	0	15	66	8	0	0	0	0	0	0	0	0	0	0	Parking	None	Parking	84	74	0	10	f	f	0	0	0	5	0	104
70.red	Qualification	70	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	11	2	t	15	26	41	136	100	0	0	0	0	0	0	3	3	0	0	Climbing	Parking	Levitate	316	236	15	65	t	f	1	0	0	0	3	357
71.blue	Qualification	71	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	10	9	t	15	38	53	125	126	10	10	0	10	2	2	3	3	3	3	Climbing	Climbing	Climbing	401	271	40	90	t	t	2	1	0	0	4	454
71.red	Qualification	71	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	11	0	t	15	22	37	42	11	0	0	10	10	3	3	3	3	1	0	Levitate	Climbing	Parking	153	53	35	65	t	f	0	0	0	35	1	225
72.blue	Qualification	72	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	136	11	10	0	0	10	2	2	3	3	2	1	Climbing	Parking	Levitate	257	157	35	65	t	f	2	3	0	5	1	293
72.red	Qualification	72	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	30	103	0	0	0	0	0	0	3	3	0	0	None	Climbing	Levitate	208	133	15	60	t	f	1	0	0	85	3	324
73.blue	Qualification	73	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	34	0	5	0	10	3	2	3	3	2	2	Parking	Climbing	Levitate	280	175	40	65	t	f	1	0	0	10	1	325
73.red	Qualification	73	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	10	5	t	15	30	45	136	74	10	7	0	10	2	2	3	3	3	3	Levitate	Climbing	None	327	227	40	60	t	f	2	0	0	5	3	377
74.blue	Qualification	74	Red	Red	Red	Blue	AutoRun	AutoRun	None	0	6	f	10	12	22	121	64	10	0	0	2	2	2	3	3	1	1	Levitate	Climbing	Climbing	315	195	30	90	f	t	0	0	0	75	3	412
74.red	Qualification	74	Red	Red	Red	Red	AutoRun	AutoRun	None	0	0	f	10	0	10	26	72	0	0	0	0	0	0	3	3	0	0	Parking	Levitate	Parking	153	98	15	40	f	f	5	2	0	0	0	163
75.blue	Qualification	75	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	136	10	10	0	0	9	2	2	3	3	1	1	Levitate	Climbing	Climbing	276	156	30	90	t	t	0	2	0	40	2	347
75.red	Qualification	75	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	10	8	t	15	36	51	97	120	6	10	0	0	1	0	3	3	3	3	Parking	Levitate	Climbing	333	233	35	65	t	f	8	0	0	50	3	434
76.blue	Qualification	76	Blue	Blue	Red	Blue	None	AutoRun	AutoRun	9	7	t	10	32	42	136	58	10	9	10	10	3	3	3	3	3	3	Parking	Parking	Levitate	298	213	45	40	f	f	1	0	0	0	2	340
76.red	Qualification	76	Blue	Blue	Red	Red	None	AutoRun	AutoRun	5	0	t	10	10	20	136	43	0	0	0	0	0	0	3	3	0	0	Levitate	None	None	224	179	15	30	f	f	0	0	0	5	0	249
77.blue	Qualification	77	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	8	2	t	15	20	35	136	112	10	10	0	10	2	2	3	3	3	3	Climbing	Levitate	Parking	373	268	40	65	t	f	1	0	0	5	3	413
77.red	Qualification	77	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	116	21	0	0	10	10	3	3	3	3	3	0	None	Climbing	Levitate	242	137	45	60	t	f	1	0	0	5	1	278
78.blue	Qualification	78	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	0	0	f	15	0	15	35	0	0	0	10	0	1	1	2	0	0	0	Parking	None	Parking	60	35	15	10	f	f	3	2	0	0	0	75
78.red	Qualification	78	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	136	102	10	7	0	10	2	2	3	3	3	3	Levitate	Parking	Parking	335	255	40	40	t	f	0	0	0	65	3	431
79.blue	Qualification	79	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	54	11	0	0	0	7	2	2	3	3	0	0	Levitate	Climbing	Parking	155	65	25	65	t	f	0	2	0	30	1	220
79.red	Qualification	79	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	10	10	t	15	40	55	136	121	10	10	0	10	2	2	3	3	3	3	Climbing	Climbing	Levitate	407	277	40	90	t	t	1	1	0	50	4	512
80.blue	Qualification	80	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	9	0	t	15	18	33	61	80	0	9	10	0	1	1	3	3	2	2	None	Climbing	Levitate	240	150	30	60	t	f	0	0	0	30	1	303
80.red	Qualification	80	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	8	2	t	15	20	35	136	50	0	0	0	0	0	0	3	3	1	0	Parking	Levitate	Climbing	271	186	20	65	t	f	1	1	0	0	3	306
81.blue	Qualification	81	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	30	10	0	0	10	2	2	3	3	3	3	Climbing	None	Levitate	276	176	40	60	t	f	1	0	0	0	1	311
81.red	Qualification	81	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	132	87	10	10	0	0	1	1	3	3	3	3	Climbing	None	Levitate	334	239	35	60	t	f	0	0	0	5	3	374
82.blue	Qualification	82	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	10	4	t	15	28	43	136	93	10	10	10	10	3	3	3	3	3	3	Levitate	Parking	Climbing	359	249	45	65	t	f	3	0	0	25	3	427
82.red	Qualification	82	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	11	0	t	15	22	37	63	21	0	0	0	0	0	0	3	3	0	0	Climbing	Parking	Levitate	164	84	15	65	t	f	0	1	0	15	1	216
83.blue	Qualification	83	Red	Red	Red	Blue	AutoRun	AutoRun	None	4	9	t	10	26	36	136	44	10	0	0	10	2	2	3	3	2	1	Climbing	Climbing	Levitate	315	190	35	90	f	t	1	0	0	80	3	431
83.red	Qualification	83	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	88	0	0	0	0	0	0	0	0	1	0	Parking	None	Parking	239	224	5	10	t	f	1	3	0	5	1	279
84.blue	Qualification	84	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	7	1	t	15	16	31	104	107	10	10	0	10	2	2	3	3	3	3	Levitate	Climbing	Parking	336	231	40	65	t	f	0	2	0	5	3	372
84.red	Qualification	84	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	11	0	t	15	22	37	136	12	0	0	0	0	1	0	3	3	2	2	Levitate	None	Climbing	238	148	30	60	t	f	1	0	0	50	1	325
85.blue	Qualification	85	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	7	5	t	15	24	39	136	127	0	10	0	0	0	0	3	3	2	2	Levitate	Climbing	Parking	363	273	25	65	t	f	1	0	0	25	3	427
85.red	Qualification	85	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	7	0	t	15	14	29	61	11	0	0	10	10	3	3	3	3	1	0	Parking	Climbing	Levitate	172	72	35	65	t	f	0	1	0	5	1	206
86.blue	Qualification	86	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	9	0	t	15	18	33	136	79	0	0	0	0	1	0	3	3	1	0	Climbing	Climbing	Levitate	330	215	25	90	t	t	1	2	0	0	4	363
86.red	Qualification	86	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	11	6	t	15	34	49	84	43	0	0	0	10	2	2	3	3	3	3	Parking	Parking	Levitate	207	127	40	40	t	f	0	0	0	55	1	311
87.blue	Qualification	87	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	5	5	t	15	20	35	136	136	8	0	0	0	0	0	3	3	2	1	Climbing	None	Levitate	365	280	25	60	t	f	1	1	0	5	3	404
87.red	Qualification	87	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	9	0	t	15	18	33	104	0	0	0	0	0	0	0	3	3	0	0	Parking	Climbing	Levitate	184	104	15	65	t	f	1	0	0	30	1	247
88.blue	Qualification	88	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	10	6	t	15	32	47	128	95	10	10	0	0	3	0	3	3	3	3	Climbing	Parking	Levitate	353	243	45	65	t	f	1	0	0	10	3	410
88.red	Qualification	88	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	27	10	0	0	10	2	2	3	3	1	1	Levitate	Climbing	Parking	268	173	30	65	t	f	2	0	0	5	1	308
89.blue	Qualification	89	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	0	7	f	15	14	29	55	33	0	0	0	0	0	0	2	0	0	0	Parking	Climbing	None	133	88	10	35	f	f	2	0	0	0	0	162
89.red	Qualification	89	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	11	0	t	15	22	37	136	102	10	10	0	0	1	0	3	3	3	3	None	Levitate	Parking	328	258	35	35	t	f	0	0	0	10	3	375
90.blue	Qualification	90	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	41	11	0	0	10	10	3	3	3	3	3	3	Parking	Climbing	Levitate	162	52	45	65	t	f	1	1	0	0	1	193
90.red	Qualification	90	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	0	8	f	15	16	31	131	127	10	10	0	0	2	0	3	3	3	3	Climbing	Parking	Levitate	383	278	40	65	f	f	0	0	0	30	2	444
91.blue	Qualification	91	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	10	7	t	15	34	49	136	36	0	0	0	0	0	0	3	3	0	0	Levitate	Climbing	None	247	172	15	60	t	f	1	0	0	35	3	331
91.red	Qualification	91	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	0	0	f	15	0	15	124	69	10	1	0	0	0	0	3	3	3	3	Levitate	None	Climbing	294	204	30	60	f	f	7	0	0	5	0	314
92.blue	Qualification	92	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	7	0	t	15	14	29	136	0	10	0	0	0	0	0	3	3	1	1	Parking	Climbing	Levitate	231	146	20	65	t	f	0	0	0	5	1	265
92.red	Qualification	92	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	8	4	t	15	24	39	136	136	10	10	0	0	0	0	3	3	3	3	Levitate	Parking	Climbing	387	292	30	65	t	f	1	0	0	0	3	426
93.blue	Qualification	93	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	11	9	t	15	40	55	136	100	10	10	0	0	0	0	3	3	3	3	Climbing	Parking	Levitate	351	256	30	65	t	f	0	1	0	5	3	411
93.red	Qualification	93	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	6	0	t	15	12	27	136	34	0	0	0	0	0	0	3	3	0	0	Levitate	Climbing	Climbing	275	170	15	90	t	t	1	0	0	25	2	327
94.blue	Qualification	94	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	8	1	t	15	18	33	136	11	0	0	0	10	2	2	3	3	0	0	Levitate	None	Climbing	232	147	25	60	t	f	1	0	0	0	1	265
94.red	Qualification	94	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	126	111	4	10	0	0	1	0	3	3	3	3	Climbing	Climbing	Levitate	376	251	35	90	t	t	0	0	0	5	4	416
95.blue	Qualification	95	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	5	0	t	15	10	25	103	106	0	10	3	0	1	1	3	3	3	3	None	Levitate	Climbing	314	219	35	60	t	f	0	1	0	10	3	349
95.red	Qualification	95	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	8	6	t	15	28	43	136	24	0	0	10	10	3	3	3	3	0	0	Levitate	Climbing	Climbing	280	160	30	90	t	t	2	0	0	25	2	348
96.blue	Qualification	96	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	8	5	t	15	26	41	135	127	10	0	0	0	0	0	3	3	1	1	Climbing	Climbing	Levitate	382	272	20	90	t	t	0	0	0	30	4	453
96.red	Qualification	96	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	9	0	t	15	18	33	135	11	3	0	0	10	2	2	3	3	3	3	Levitate	Climbing	Climbing	279	149	40	90	t	t	1	1	0	0	2	311
97.blue	Qualification	97	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	11	0	t	15	22	37	136	11	10	0	10	10	3	3	3	3	2	1	Parking	Levitate	Parking	237	157	40	40	t	f	2	0	0	25	1	299
97.red	Qualification	97	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	9	0	t	15	18	33	136	119	0	0	0	0	0	0	3	3	0	0	Climbing	Levitate	Parking	335	255	15	65	t	f	5	0	0	10	3	378
98.blue	Qualification	98	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	104	10	0	0	0	0	0	3	3	2	1	Climbing	Climbing	Levitate	365	250	25	90	t	t	0	0	0	35	4	435
98.red	Qualification	98	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	7	3	t	15	20	35	136	9	10	0	10	0	2	1	3	3	2	1	Climbing	Climbing	Climbing	280	155	35	90	t	t	2	1	0	0	2	315
99.blue	Qualification	99	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	11	5	t	15	32	47	136	122	10	10	10	10	3	3	3	3	3	3	Climbing	Levitate	Parking	388	278	45	65	t	f	0	0	0	50	3	485
99.red	Qualification	99	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	95	11	7	0	10	10	3	3	3	3	2	1	Climbing	Parking	Levitate	218	113	40	65	t	f	0	2	0	0	1	253
100.blue	Qualification	100	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	126	41	0	0	0	10	2	2	3	3	0	0	Climbing	Climbing	Levitate	282	167	25	90	t	t	0	0	0	10	2	327
100.red	Qualification	100	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	11	8	t	15	38	53	136	74	0	10	1	0	1	1	3	3	2	2	Levitate	None	Climbing	310	220	30	60	t	f	2	0	0	0	3	363
101.blue	Qualification	101	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	10	7	t	15	34	49	136	127	10	10	10	0	1	1	3	3	3	3	Climbing	Climbing	Levitate	408	283	35	90	t	t	7	0	0	0	4	457
101.red	Qualification	101	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	7	0	t	15	14	29	65	11	0	0	0	10	2	2	3	3	1	1	Parking	Parking	Levitate	146	76	30	40	t	f	0	0	0	35	1	210
102.blue	Qualification	102	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	7	0	t	15	14	29	136	29	0	0	0	10	2	2	3	3	0	0	Parking	Climbing	Levitate	255	165	25	65	t	f	2	0	0	0	1	284
102.red	Qualification	102	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	136	76	10	0	0	2	2	2	3	3	3	3	Climbing	Levitate	Parking	327	222	40	65	t	f	0	0	0	10	3	368
103.blue	Qualification	103	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	9	0	t	15	18	33	136	10	0	0	0	9	2	2	3	3	0	0	Climbing	Parking	Levitate	236	146	25	65	t	f	0	0	0	5	1	274
103.red	Qualification	103	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	103	10	0	0	0	1	0	3	3	2	1	Levitate	None	Climbing	339	249	30	60	t	f	1	0	0	0	3	374
104.blue	Qualification	104	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	111	68	0	0	0	10	2	2	2	0	0	0	None	None	None	199	179	20	0	t	f	1	2	0	135	1	365
104.red	Qualification	104	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	0	10	f	15	20	35	115	67	10	0	0	10	3	2	3	3	3	1	None	Levitate	Climbing	297	192	45	60	f	f	2	5	0	55	2	387
105.blue	Qualification	105	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	11	7	t	15	36	51	91	92	0	10	8	0	1	1	3	3	3	3	None	Parking	Levitate	263	193	35	35	t	f	0	0	0	10	3	324
105.red	Qualification	105	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	9	0	t	15	18	33	136	37	0	0	0	10	2	2	3	3	3	0	Levitate	Parking	Climbing	278	173	40	65	t	f	2	0	0	0	1	311
106.blue	Qualification	106	Red	Red	Red	Blue	AutoRun	AutoRun	None	4	0	t	10	8	18	135	11	10	0	0	10	3	2	3	3	3	3	Climbing	Levitate	Parking	266	156	45	65	f	f	0	1	0	35	0	319
106.red	Qualification	106	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	136	114	10	10	0	0	1	0	3	3	3	3	Levitate	Parking	None	340	270	35	35	t	f	2	1	0	25	3	396
107.blue	Qualification	107	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	10	8	t	15	36	51	88	127	0	0	10	0	1	1	3	3	0	0	Levitate	Climbing	Parking	300	215	20	65	t	f	1	0	0	5	3	356
107.red	Qualification	107	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	6	0	t	15	12	27	136	11	0	0	10	10	3	3	0	0	0	0	Parking	None	Parking	172	147	15	10	t	f	1	0	0	5	1	204
108.blue	Qualification	108	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	10	1	t	15	22	37	135	125	10	10	0	0	3	0	3	3	3	3	Parking	Parking	Levitate	365	280	45	40	t	f	0	0	0	25	3	427
108.red	Qualification	108	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	11	0	t	15	22	37	136	11	10	0	0	10	2	2	3	3	3	3	None	Climbing	Levitate	257	157	40	60	t	f	0	1	0	0	1	294
109.blue	Qualification	109	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	8	6	t	15	28	43	136	12	10	0	0	10	2	2	3	3	3	1	Climbing	Levitate	Parking	263	158	40	65	t	f	1	1	0	0	1	306
109.red	Qualification	109	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	7	0	t	15	14	29	136	112	10	10	10	10	3	3	3	3	3	3	Climbing	Levitate	Climbing	403	268	45	90	t	t	0	0	0	30	4	462
110.blue	Qualification	110	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	8	5	t	15	26	41	136	91	8	0	0	0	0	0	3	3	1	1	Climbing	Climbing	Levitate	345	235	20	90	t	t	4	1	0	5	4	391
110.red	Qualification	110	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	115	25	10	0	0	10	2	2	3	3	1	1	Levitate	Climbing	Climbing	270	150	30	90	t	t	1	0	0	45	2	350
111.blue	Qualification	111	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	100	0	0	0	10	0	1	1	3	3	0	0	Levitate	Parking	Climbing	185	100	20	65	t	f	0	0	0	0	1	220
111.red	Qualification	111	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	8	8	t	15	32	47	136	130	10	10	10	0	1	1	3	3	3	3	Parking	Parking	Levitate	361	286	35	40	t	f	0	0	0	0	3	408
112.blue	Qualification	112	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	43	10	0	0	10	2	2	3	3	2	1	Levitate	Parking	Parking	264	189	35	40	t	f	1	0	0	50	3	349
112.red	Qualification	112	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	11	1	t	15	24	39	136	76	6	0	0	0	0	0	0	0	1	1	None	None	None	223	218	5	0	t	f	0	2	0	5	1	267
113.blue	Qualification	113	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	65	10	10	10	10	3	3	3	3	3	3	Levitate	Climbing	Climbing	356	221	45	90	t	t	4	0	0	0	4	391
113.red	Qualification	113	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	0	5	f	15	10	25	88	42	0	0	0	0	0	0	2	0	0	0	None	Parking	None	145	130	10	5	f	f	0	0	0	20	0	190
114.blue	Qualification	114	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	135	1	7	0	0	0	0	0	3	3	1	1	Climbing	None	Levitate	223	143	20	60	t	f	1	1	0	10	1	268
114.red	Qualification	114	Red	Red	Red	Red	AutoRun	AutoRun	AutoRun	6	0	t	15	12	27	117	116	0	0	0	0	0	0	3	3	1	0	Climbing	Levitate	Parking	318	233	20	65	t	f	2	0	0	30	3	375
115.blue	Qualification	115	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	9	10	t	15	38	53	128	127	9	10	0	7	2	2	3	3	3	3	Parking	Levitate	Parking	354	274	40	40	t	f	0	0	0	5	3	412
115.red	Qualification	115	Blue	Blue	Red	Red	None	AutoRun	AutoRun	0	0	f	10	0	10	109	11	10	0	0	10	2	2	3	3	2	1	Climbing	Levitate	Parking	230	130	35	65	f	f	1	0	0	0	0	240
116.blue	Qualification	116	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	10	9	t	15	38	53	136	136	0	10	0	0	0	0	3	3	2	2	Parking	Levitate	Climbing	372	282	25	65	t	f	1	0	0	0	3	425
116.red	Qualification	116	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	136	0	10	0	0	0	1	0	3	3	1	1	Parking	Climbing	Levitate	236	146	25	65	t	f	0	0	0	5	1	272
117.blue	Qualification	117	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	136	14	10	0	10	10	3	3	3	3	3	1	Climbing	None	Levitate	265	160	45	60	t	f	0	1	0	30	1	326
117.red	Qualification	117	Red	Red	Blue	Red	None	AutoRun	AutoRun	0	0	f	10	0	10	100	100	10	10	10	10	3	3	3	3	3	3	Parking	Parking	Levitate	305	220	45	40	f	f	1	1	0	25	2	340
118.blue	Qualification	118	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	11	0	t	15	22	37	73	35	0	0	0	0	0	0	0	0	0	0	None	None	None	108	108	0	0	t	f	1	0	0	0	1	145
118.red	Qualification	118	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	7	6	t	15	26	41	135	90	0	0	0	0	0	0	2	0	0	0	Climbing	Parking	None	270	225	10	35	t	f	0	0	0	5	3	316
119.blue	Qualification	119	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	9	0	t	15	18	33	136	33	10	0	0	10	3	2	3	3	3	1	Levitate	Parking	Climbing	289	179	45	65	t	f	1	1	0	10	1	332
119.red	Qualification	119	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	5	0	t	15	10	25	136	83	10	4	0	0	0	0	3	3	3	3	Levitate	Parking	Parking	303	233	30	40	t	f	2	0	0	30	3	358
120.blue	Qualification	120	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	10	8	t	15	36	51	54	134	0	0	4	0	1	1	3	3	0	0	None	Climbing	Levitate	268	188	20	60	t	f	0	1	0	0	3	319
120.red	Qualification	120	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	136	0	0	0	0	0	0	0	3	3	0	0	Parking	Parking	Levitate	191	136	15	40	t	f	0	0	0	25	1	251
121.blue	Qualification	121	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	10	10	t	15	40	55	136	127	10	10	0	0	1	0	3	3	3	3	Parking	Levitate	None	353	283	35	35	t	f	0	0	0	5	3	413
121.red	Qualification	121	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	11	0	t	15	22	37	136	11	0	0	0	10	2	2	3	3	0	0	Climbing	Levitate	Parking	237	147	25	65	t	f	1	0	0	0	1	274
122.blue	Qualification	122	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	11	5	t	15	32	47	135	127	10	10	0	4	2	2	3	3	3	3	Climbing	Levitate	Climbing	412	282	40	90	t	t	0	0	0	30	4	489
122.red	Qualification	122	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	134	11	10	0	0	10	2	2	3	3	1	1	Levitate	Parking	Parking	225	155	30	40	t	f	1	1	0	0	1	260
123.blue	Qualification	123	Blue	Blue	Blue	Blue	AutoRun	AutoRun	AutoRun	9	6	t	15	30	45	136	8	0	0	0	0	0	0	3	3	0	0	Levitate	Climbing	Parking	224	144	15	65	t	f	1	1	0	0	1	269
123.red	Qualification	123	Blue	Blue	Blue	Red	AutoRun	AutoRun	AutoRun	8	0	t	15	16	31	135	122	10	10	0	10	3	2	3	3	3	3	Climbing	Levitate	Climbing	412	277	45	90	t	t	0	0	0	30	4	473
124.blue	Qualification	124	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	0	0	f	15	0	15	0	0	0	0	0	0	0	0	1	0	0	0	Climbing	None	Parking	40	0	5	35	f	f	0	1	0	50	0	105
124.red	Qualification	124	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	10	6	t	15	32	47	136	134	10	10	10	0	1	1	3	3	3	3	Levitate	Climbing	Climbing	415	290	35	90	t	t	5	1	0	25	4	487
125.blue	Qualification	125	Red	Red	Red	Blue	AutoRun	AutoRun	AutoRun	9	10	t	15	38	53	114	136	0	10	0	10	2	2	3	3	3	3	Climbing	Parking	Levitate	365	260	40	65	t	f	2	0	0	5	3	423
125.red	Qualification	125	Red	Red	Red	Red	AutoRun	None	AutoRun	4	0	t	10	8	18	21	0	0	0	0	0	0	0	3	3	0	0	Climbing	Levitate	Climbing	126	21	15	90	f	t	1	0	0	10	1	154
126.blue	Qualification	126	Blue	Blue	Red	Blue	AutoRun	AutoRun	AutoRun	0	3	f	15	6	21	86	135	7	10	0	0	0	0	2	0	3	3	Climbing	None	Parking	298	238	25	35	f	f	0	0	0	25	2	344
126.red	Qualification	126	Blue	Blue	Red	Red	AutoRun	AutoRun	AutoRun	7	0	t	15	14	29	132	0	10	0	0	0	1	1	3	3	1	1	Climbing	Climbing	Levitate	257	142	25	90	t	t	0	1	0	0	2	286
127.blue	Qualification	127	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	9	0	t	15	18	33	131	48	0	0	0	0	0	0	3	3	0	0	Parking	Levitate	None	229	179	15	35	t	f	0	0	0	10	1	272
127.red	Qualification	127	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	11	6	t	15	34	49	124	80	1	10	10	0	1	1	3	3	3	3	Climbing	Parking	Levitate	315	215	35	65	t	f	2	0	0	0	3	364
128.blue	Qualification	128	Red	Red	Blue	Blue	AutoRun	AutoRun	AutoRun	10	0	t	15	20	35	112	118	10	10	0	0	0	0	3	3	3	3	Parking	Levitate	Climbing	345	250	30	65	t	f	0	0	0	25	3	405
128.red	Qualification	128	Red	Red	Blue	Red	AutoRun	AutoRun	AutoRun	7	0	t	15	14	29	136	11	10	0	10	10	3	3	3	3	3	3	Levitate	Climbing	Parking	267	157	45	65	t	f	0	1	0	0	1	296
\.


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: irs1318
--

COPY public.teams ("row.names", team, "nameFull", "nameShort", "schoolName", city, "stateProv", country, website, "rookieYear", "robotName", "districtCode", "homeCMP", "teamCountTotal", "teamCountPage", "pageCurrent", "pageTotal") FROM stdin;
1	360	The Boeing Company/Friends of Bellarmine Robotics/Islam Family Foundation/Tacoma Steel Supply/Google/Washington FIRST Robotics/Kel-Tech Plastics/The Rudolph Family/SPEEA Local 2001/The Ross Family/The Murphy Family/Clover Park Technical College/Boeing Employee Credit Union/Rotary of Clover Park/Bamford Foundation/Multicare/State Farm Insurance/Bertolino's Coffee Bar/AREVA Federal Services LLC&Bellarmine Preparatory School	The Revolution	Bellarmine Preparatory School	Tacoma	Washington	USA	http://www.frc360.com	2000	RM 19 (Rainmaker 19)	PNW	CMPTX	64	64	1	1
2	488	Microsoft/The Boeing Company/Rainier Valley Rotary Club/OSPI/SPEEA& xbot robotics&Franklin High School	Team XBot	Franklin High School & xbot robotics	Seattle	Washington	USA	http://www.teamxbot.org	2000	X17	PNW	CMPTX	64	64	1	1
3	492	Washington Office of Superintendent of Public Instruction/Perpetual Technologies/The Boeing Company/Microsoft/Google/Honeywell/LM Beck Properties/BuildSea Construction/Alaska Airlines/Bellevue Schools Foundation/F5/Families and Friends of TRC&International School	Titan Robotics Club	International School	Bellevue	Washington	USA	http://www.titanrobotics.com/	2001	Kareem Abdul JabBot	PNW	CMPTX	64	64	1	1
4	847	Autodesk/HP /IBEW Local 280/Oregon Department of Education/First Tech Credit Union/Maxfield Family/Philomath Lions Club/Paul and Stefanie Dickey/Corvallis Clinic/International Association of Machinists and Aerospace Workers Local 63&Philomath High School	PHRED	Philomath High School	Philomath	Oregon	USA	http://www.team847.com	2002	 	PNW	CMPTX	64	64	1	1
5	948	The Boeing Company/Microsoft/Wicresoft/Bellevue Schools Foundation & Newport Senior High School	NRG (Newport Robotics Group)	Newport Senior High School	Bellevue	Washington	USA	http://www.nrg948.com	2002	Claptrap	PNW	CMPTX	64	64	1	1
6	957	Viper Northwest/Autodesk/Oregon Department of Education/HP Inc./IBEW Local 280/ECD/National Frozen Foods/Rotary Club of Albany/First Tech Federal Credit Union/SnoTemp/No Dinx/Altrusa International of Albany/Farmland Tractor Supply/Concept Systems/OFD Foods/AVUM/Tripwire/Albany AAUW/NORVAC Electronic Parts/Southpaw's Perfect Pizza/Central Electric Training Facility/Albany Public Schools Foundation&West Albany High School&South Albany High School&Oregon Connections Academy	SWARM	Oregon Connections Academy & South Albany High School & West Albany High School	Albany	Oregon	USA	http://www.team957.com	2002	Otis	PNW	CMPTX	64	64	1	1
7	997	H P inc/Tripwire/Oregon Department of Education/First Tech Federal Credit Union/Corvallis High School/Best in The West Events/SolidWorks/STH Machining/Royal T Manufacturing/Knight Design/Pastini's Pastaria/AutoZone/Cycle Oregon&Corvallis High School	Spartan Robotics	Corvallis High School	Corvallis	Oregon	USA	http://www.chsrobotics.org	2002	Calypso	PNW	CMPTX	64	64	1	1
8	1318	The Boeing Company/State of Washington OSPI/Triumph Aerospace/Issaquah Schools Foundation&Issaquah High School	Issaquah Robotics Society	Issaquah High School	Issaquah	Washington	USA	http://www.team1318.org	2004	Cube - bert	PNW	CMPTX	64	64	1	1
9	1359	Linn Benton Community College/Oregon Dept of Eduacation/Matthews International Inc./Rotary Club of Greater Albany/Rotary Club of Albany/Concept Systems, Inc./IBEW Local 280/Lebanon High School/HyTek Plastics/Daimler - Education in Motion & Venture Crew 308	Scalawags	Venture Crew 308	Lebanon	Oregon	USA	www.scalawags.org	2004	Rancid Squid	PNW	CMPTX	64	64	1	1
10	1425	Xerox/Lam Research/City Of Wilsonville/Maxim Integrated Products/3D Systems/Mentor Graphics/Rockwell Collins/TE Connectivity/A-dec/Shields Manufacturing/Oregon Technology/Apex Plastics & Wilsonville High School	Error Code Xero	Wilsonville High School	Wilsonville	Oregon	USA	http://www.wilsonvillerobotics.com	2004	Phoenix	PNW	CMPTX	64	64	1	1
11	1510	Intel/Microsoft Azure/Oregon Dept of Education (ODE)/FEI/Tektronix/Tripwire/Portland Community College/Autodesk/RoboteX/DWFritz/iQ Credit Union/Hawk Ridge Systems/BPS Robotics&Westview High School	Wildcats	Westview High School	Beaverton	Oregon	USA	www.bpsrobotics.org/1510	2005	\N	PNW	CMPTX	64	64	1	1
12	1540	Autodesk/NASA/FLIR/FIRST Tech Credit Union/Bonneville Power&Catlin Gabel School	Flaming Chickens	Catlin Gabel School	Portland	Oregon	USA	http://www.team1540.org/	2005	Pandora	PNW	CMPTX	64	64	1	1
13	1595	Pearson Packaging Systems/American Alloy/FirstWashington/Google/Haskins Steel/F5 Networks/Dove Printing/Avista/Alaska Airlines/Boeing/Applied industrial Technologies&St George's School	The Dragons	St George's School	Spokane	Washington	USA	http://www.1595dragons.org/	2005	Crossfire	PNW	CMPTX	64	64	1	1
14	1778	The Boeing Company/OSPI/Philips Healthcare Corporation/Steel-Fab/Alderwood Rotary/CompTia/F5/Foundation for Edmonds School District/Lynnwood Kids Dentist/Sundance Energy/Pemco/Andeavor&Mountlake Terrace High School	Chill Out	Mountlake Terrace High School	Mountlake Terrace	Washington	USA	http://www.first1778.org/	2006	Chilled Butter	PNW	CMPTX	64	64	1	1
15	1983	The Boeing Company/Lockheed Martin/OmanTek/OMAX&4-H&Aviation High School	Skunk Works Robotics	Aviation High School & 4-H	Seattle	Washington	USA	http://skunkworks1983.com/	2007	Breakout	PNW	CMPTX	64	64	1	1
16	2046	The Boeing Company/Washington State OSPI/Flow International Corporation/Pinnacle Medical Wellness/Alaska Airlines&Tahoma Senior High School	Bear Metal	Tahoma Senior High School	Maple Valley	Washington	USA	http://tahomarobotics.org/	2007	Ursa Origin	PNW	CMPTX	64	64	1	1
17	2147	Elcon Construction/Bill Meyer/Wagstaff/F5/Greater Spokane Incorporated/Boeing/Mackay Manufacturing&West Valley High School	CHUCK	West Valley High School	Spokane	Washington	USA	chuck2147.com	2007	\N	PNW	CMPTX	64	64	1	1
18	2374	Mentor Graphics/Boeing & Jesuit High School	Crusader Bots	Jesuit High School	Portland	Oregon	USA	http://www.team2374.com	2008	Centaur of Gravitar	PNW	CMPTX	64	64	1	1
19	2471	US Digital/Analog Devices/Protech Composites/The Boeing Company/Fisher Investments/WA OSPI/Hewlett Packard/U-Haul/Camas Washougal Rotary/Thomas & Betts, ABB Group/Wafertech/Georga Pacific/Lange Family/iPly Designs/SPEEA, Boeing Employee Union/Fire Fighters L1159/Barsotti Family/Interstate Batteries/Industrial Machine Services/Wen Family&Camas High School&Hockinson High School&Washougal High School	Team Mean Machine	Camas High School & Washougal High School & Hockinson High School	Camas	Washington	USA	http://www.team2471.org/	2008	Atlas	PNW	CMPTX	64	64	1	1
20	2521	Oregon Department of Education/Autodesk/Boeing/Mid Valley Metals/EWEB/Lane County/MulitCraft Plastics/South Eugene High School/Mozilla Foundation/Harmonic Labs/K Ridley Technology/Concentric Sky/Skyward/Palo Alto Software&South Eugene High School	SERT	South Eugene High School	Eugene	Oregon	USA	http://www.sert2521.org	2008	Poe	PNW	CMPTX	64	64	1	1
21	2522	Microsoft/OSPI/Google/The Boeing Company/SPEEA/Exotic Tool Welding Inc./Mobile Tool Management/Qualitel&Lynnwood High School	Royal Robotics	Lynnwood High School	Lynnwood	Washington	USA	http://www.royalrobotics.org	2008	Princess Peach	PNW	CMPTX	64	64	1	1
22	2557	Boeing/OSPI/Tacoma School District/F5 Networks, Inc/Amazon/Zumar Industries Incorporated/Blue Origin/Hewitt Cabinets & Interiors/Intellectual Ventures/Elements of Education Partners/Marco Heidner foundation/FIRST Washington/Multicare/Microsoft/Aluminumand Bronze Fabricators/Pierce Aluminum Company/Northwest Pipe and Steel/Lakewood Rotary Club & Science and Math Institute & Industrial Design Engineering and Art High School & Tacoma School of the Arts	SOTAbots 	Industrial Design Engineering and Art High School & Science and Math Institute & Tacoma School of the Arts	Tacoma	Washington	USA	http://www.sotabots.com	2008	Mothman	PNW	CMPTX	64	64	1	1
23	2605	OSPI/Boeing/Bellingham Public Schools Foundation/Phillips 66/The Little Family/BP/Sehome High School PTSA/Freeland Associates/Hiltner Combustion Systems/Bellingham Marine/SPIE/Pizza Time/Dawson Construction/Seakamp Engineering/WECU/Wilson Engineering&Sehome High School&Bellingham High School	Seamonsters	Bellingham High School & Sehome High School	Bellingham	Washington	USA	www.seamonsters2605.org	2008	\N	PNW	CMPTX	64	64	1	1
24	2635	LAM Research/Intel/Boeing/Mentor Graphics/DWFritz/WA FIRST Robotics/Really Big Video&Lakeridge High School&Lake Oswego Senior High School	Lake Monsters	Lakeridge High School & Lake Oswego Senior High School	Lake Oswego	Oregon	USA	www.frc2635.org	2008	\N	PNW	CMPTX	64	64	1	1
25	2733	Daimler/TE Connectivity/FLIR/First Tech Credit Union/Mentor Graphics/Tektronix/DW Fritz Automation/SolidWorks/Digital Ocean/Hankins Hardware/CHS PTA&Cleveland High School&Family/Community	Pigmice	Family/Community & Cleveland High School	Portland	Oregon	USA	www.pigmice.com	2009	Otis	PNW	CMPTX	64	64	1	1
26	2811	The Boeing Company/Protech/Washington State OSPI/Vancouver Public Schools/Hewlett Packard Company/ConMet/Vancouver Bolt/Thomas and bets&Skyview High School	StormBots	Skyview High School	Vancouver	Washington	USA	http://www.stormbots.com	2009	Zeus	PNW	CMPTX	64	64	1	1
27	2906	Bethel Public Schools CTE&Spanaway Lake High School	Sentinel Prime Robotics	Spanaway Lake High School	Spanaway	Washington	USA	\N	2009	Sentinel Prime Robotics	PNW	CMPTX	64	64	1	1
28	2910	The Boeing Company/Microsoft/Electroimpact/OSPI/Everett Sound Machine Works/Washington FIRST Robotics/Brian Gattman & Dave Mumaw/SolidWorks/Dwayne Lanes/F5 Networks/Tacoma Screw/Air Gas/Crane Aerospace&Henry M. Jackson High School	Jack in the Bot	Henry M. Jackson High School	Mill Creek	Washington	USA	http://frcteam2910.org	2009	Kayla	PNW	CMPTX	64	64	1	1
29	2928	Digital Product Studio/GM Nameplate/OSPI/The Boeing Company/Ballard High School PTSA/Symantec/Directions on Microsoft/Leidos/SPEEA/Hydrospheric Solutions/Vaupell Inc./Online Metals/Ballard Industrial/Limback Lumber&Ballard High School	Viking Robotics	Ballard High School	Seattle	Washington	USA	http:/team2928.org	2009	Odin	PNW	CMPTX	64	64	1	1
30	2930	Microsoft Philanthropies/OSPI/The Boeing Company/Leidos/FIRST Washington/Snohomish Education Foundation & Snohomish High School & Glacier Peak High School	Sonic Squirrels	Snohomish High School & Glacier Peak High School	Snohomish	Washington	USA	www.sonicsquirrels.com	2009	Risu Squee	PNW	CMPTX	64	64	1	1
31	2944	OSPI/Spokane Public Schools/Infinite Events/LC Boosters/Novation/Charles Hartman Engineering/Team 2944 Parents&Lewis & Clark High School	Titanium Tigers	Lewis & Clark High School	Spokane	Washington	USA	\N	2009	Petey the Piranha	PNW	CMPTX	64	64	1	1
32	2976	The Boeing Company/Issaquah Schools Foundation & Skyline High School	Spartabots	Skyline High School	Sammamish	Washington	USA	http://spartabots.org	2009	TBD	PNW	CMPTX	64	64	1	1
33	2990	The Boeing Company/Freres Lumber/Zephyr Engineering/SCTC/Parr Lumber/Oregon Department of Education&Hotwire Robotics	Hotwire	Hotwire Robotics	Turner	Oregon	USA	http://hotwirerobotics.com	2009	\N	PNW	CMPTX	64	64	1	1
34	3024	Oregon Department of Education/Boeing Corp/Autodesk/Evogeneao/Project A/Modern Fan Co./Professional Engineers of Oregon/TC Chevy/Lithia Motors/Darex LLC/ESPI Metals/True South Solar/Society of Professional Engineers, Southern Oregon Chapter/Oregon Community Foundation/IBM Corp/RISK, Inc/Hosking Aviation/Stefanelli Distributing Company/Christina and Randall Murata/Barbara Rosen/Chris Gorog/Paul Mace/Jeff Nielsen/Jim Moen&Ashland High School	My Favorite Team	Ashland High School	Ashland	Oregon	USA	team3024.com	2009	Bastion	PNW	CMPTX	64	64	1	1
35	3218	The Boeing Company/OSPI Office of Superintendent of Public Instuction/Monsanto/Complete Access&Bonney Lake high school	Panther Robotics	Bonney Lake high school	Bonney Lake	Washington	USA	https://www.youtube.com/channel/UCv4791VCZYu2OfRrcrtAAvg	2010	HighTower	PNW	CMPTX	64	64	1	1
36	3223	BAE Systems/Google/Raytheon/Microsoft/Central Kitsap School District/OSPI/McLaughlin Research Corporation/Department of Defense/Naval Undersea Warfare Center (NUWC) Keyport WA&Central Kitsap High School&Olympic High School&Klahowya Secondary	Robotics Of Central Kitsap	Central Kitsap High School & Olympic High School & Klahowya Secondary	Silverdale	Washington	USA	\N	2010	\N	PNW	CMPTX	64	64	1	1
37	3238	Anacortes Rotary Club/Anacortes School District/Kiwanis Club of Anacortes (Noon)/MLS BioConsultants LLC/Soroptimist International of Anacortes/T. Bailey, Inc./Tesoro Anacortes Refinery/Washington State Office of Superintendent of Public Instruction/The Boeing Company/Jet City Equipment of Oak Harbor WA/Bob's Chowder Bar & BBQ Salmon/Curt Oppel, John L. Scott Real Estate/Lifting Sea, LLC & Anacortes High School	Cyborg Ferrets	Anacortes High School	Anacortes	Washington	USA	http://team3238.com	2010	FRED	PNW	CMPTX	64	64	1	1
38	3663	The Boeing Company/Team Nelson Earthwork and Utilities/The Mindy Group, LLC/Electro Impact/Inside & Out Renovation, Inc./Philips/SPEEA/Precision Image&Cedar Park Christian Schools	CPR - Cedar Park Robotics	Cedar Park Christian Schools	Bothell	Washington	USA	http://www.cprobotics.org	2011	CPR	PNW	CMPTX	64	64	1	1
39	3674	Boeing/US Digital/HP/OSPI / CAM Academy/Olin Homes/Superior Home Inspection /Gazelles International Coaches/Epp Well Solutions & Cam Jr Sr High School & Family/Community	CloverBots	Family/Community & Cam Jr Sr High School	Battle Ground	Washington	USA	https://www.facebook.com/CloverBots/	2011	Cubert 8-bot	PNW	CMPTX	64	64	1	1
40	3711	Nelson Brothers Engineering/Little Mountain Hardware/Terry Schmid Gravel/JoeScan/OSPI/The Boeing Company/Google/Microsoft/Tum A Lum Lumber/ICE/Show and Go Studes/Ed Poe Agency&Trout Lake School	Iron Mustang	Trout Lake School	Trout Lake	Washington	USA	\N	2011	Clamps	PNW	CMPTX	64	64	1	1
41	3826	Sequim School District/OSPI/Boeing/Sodexo&Sequim Senior High	Sequim Robotics Federation "SRF" 	Sequim Senior High	Sequim	Washington	USA	http://sequimroboticsfederation.weebly.com/	2011	The Bruce	PNW	CMPTX	64	64	1	1
42	4061	Schweitzer Engineering Laboratories/Inland Power and Light/PENSAR/Digilent&4-H	SciBorgs	4-H	Pullman	Washington	USA	http://sciborgs4061.com/	2012	Cube Jackman	PNW	CMPTX	64	64	1	1
43	4125	Umatilla School District/21st Century Community Learning Center/State of Oregon/Umatilla Lion's Club/Chuckwagon Cafe/Cascade Natural Gas/Carlson's Umatilla Drug/Umatilla Police Department/Umatilla Fire Department/Autodesk&Umatilla High School	Confidential	Umatilla High School	Umatilla	Oregon	USA	www.umatillarobotics.org	2012	Code Name: Flip	PNW	CMPTX	64	64	1	1
44	4131	The Boeing Company/Issaquah Schools Foundation & Liberty Sr High School	Iron Patriots	Liberty Sr High School	Renton	Washington	USA	frc4131.org	2012	Alphonse	PNW	CMPTX	64	64	1	1
45	4450	The Community Foundation of South Puget Sound/Washington State Office of Superintendent of Public Education/Olympia School District/Advance Equipment Company/Boeing/Diamond Technology Innovations/H2OJet, Inc./Obee Credit Union/FastSigns, Inc./Christopher Cook/Google/Capital Industrial, Inc/Kiwanis International/Amazon/SPEEA/Capital Medical Center/SCJ alliance/Olympia School District Education Foundation/Solidworks/Microsoft&Capital High School&Avanti High School&Olympia High School	Olympia Robotics Federation	Capital High School & Avanti High School & Olympia High School	Olympia	Washington	USA	orf4450.org	2013	Odyssey	PNW	CMPTX	64	64	1	1
46	4469	Alaska /Boeing /Federal Way Public Schools /F5 Networks /Google /TJ Raider Parent Movement /OSPI /Pacific Office Automation &Thomas Jefferson High School	R.A.I.D. (Raider Artificial Intelligence DIvision)	Thomas Jefferson High School	Federal Way	Washington	USA	https://raidrobotics.org	2013	\N	PNW	CMPTX	64	64	1	1
47	4488	Intel Corp / Lam Research / Hillsboro School District / Boeing Corporation / Synopsys Inc / Hillsboro Optimists /Valley Machine/Washington County Sheriffs/Toll Family/Kennedy Family&Glencoe High School	Shockwave	Glencoe High School	Hillsboro	Oregon	USA	http://glencoerobotics.com/	2013	Tempest	PNW	CMPTX	64	64	1	1
48	4512	Boeing/OSPI/Everett School District/Bruin Community Parents/University Mechanical Contractors, Inc./Crane Aerospace & Electronics/SPEEA/Barclay Dean&Cascade High School	BEAR bots	Cascade High School	Everett	Washington	USA	http://www.everett.k12.wa.us/cascade/roboticsclub/Home	2013	Dug	PNW	CMPTX	64	64	1	1
49	4513	Washington State OSPI/Medical Lake High School Boosters/FIRST Washington/Bixby Machine Tool Supply/Medical Lake Dollars for Scholars/Medical Lake School District/Google/DODEA/Pizza Factory/Boeing/SEL&Medical Lake High School	Circuit Breakers	Medical Lake High School	Medical Lake	Washington	USA	http://mlhs.mlsd.org/apps/pages/index.jsp?uREC_ID=649602&type=d&pREC_ID=1106935	2013	CB^3  (CB cubed)	PNW	CMPTX	64	64	1	1
50	4662	Boeing / Autodesk / Oregon Department of Education / Washington FIRST Robotics & Scappoose High School	Byte Sized Robotics	Scappoose High School	Scappoose	Oregon	USA	https://sites.google.com/site/shsrobotics4662 	2013	\N	PNW	CMPTX	64	64	1	1
51	4911	Microsoft/Electroimpact/Boeing/Ward Phillips/SuperGraphics/GM Nameplate/Society of Women Engineers/Lodestar Marketing Group/Romac Industries/Alaska Airlines/Intellectual Ventures/Reign Sportsmanagers.com/F5 Networks & King's Schools	CyberKnights	King's Schools	Seattle	Washington	USA	http://cyberknights4911.com/	2014	\N	PNW	CMPTX	64	64	1	1
52	4915	Boeing/Bainbridge Schools Foundation/Office of Superintendent of Public Instruction/Xerox/Microsoft/Google/Bainbridge Island School District&Bainbridge High School	Spartronics	Bainbridge High School	Bainbridge Island	Washington	USA	http://spartronics4915.com/	2014	THEMIS	PNW	CMPTX	64	64	1	1
53	4980	Bezos Family Foundation/Colmac Industries/Boise Cascade/Roger Wagner - Hyperduino/Hewes Craft/Hachisoft Corporation/Colville Auto Repair/Avista/Columbia Cedar/John Ochs & Steve Cox Foundation/Bev & Laramie Edwards/Jerry & Nancy Stafford/Moss Trucking - Engraving/Joel Greene - Campbell Scientific &Kettle Falls High School	Canine Crusaders	Kettle Falls High School	Kettle Falls	Washington	USA	www.4980robotics.com	2014	Scrat	PNW	CMPTX	64	64	1	1
54	5450	Daimler/Boeing/Lower Columbia Engineering/Cascades/Madden Industrial Craftsmen/Christenson Electric/Dyno Nobel/Pellham Cutting/Oregon Aero/Dahlgren's/Solagen/KOHI&St Helens High School	St. Helens Robotics and Engineering Club (SHREC)	St Helens High School	Saint Helens	Oregon	USA	\N	2015	\N	PNW	CMPTX	64	64	1	1
55	5468	AutoDesk/Emediacy/CBT Nuggets/Streamline Solar/Slayden Construction/Outback Manufacturing/Brooks Resources/Van Valkenburg Design/BLJ Attorneys at Law/Hendrix, Brinich & Bertalan LLP/Bend Research/Sunwest Builders/AUVSI/Miller Lumber/Duane Stevens/Bend Plating/Dave Robinson Architects/Precision Hanywork/Susan Metzdorf/Skyline Dental&Summit High School	Chaos Theory	Summit High School	Bend	Oregon	USA	summitrobotics.com	2015	\N	PNW	CMPTX	64	64	1	1
56	5803	AeroTEC, Inc/The Boeing Company/Oak Harbor Freight Lines/Microsoft/Clear Choice Lending/The Hoag Family/McKay Wealth Management/Advanced Endotronics/Washington FIRST Robotics/WestCoast Products LLC/C4 Labs/Prism Graphics/Van Houten Photography/Google/Intellectual Ventures/The Stebbins Family/The Kleeberger Family/Gail Griebel/Friends and Family of Apex Robotics&Seattle Christian Schools	Apex Robotics	Seattle Christian Schools	Seattle	Washington	USA	www.apexfrc.com	2016	Level Red	PNW	CMPTX	64	64	1	1
57	5920	FFA/Washington FIRST Robotics/Hagan Foundation/Office Superintendent of Public Instruction/Schweitzer Engineering Labratories&Palouse High School&Garfield at Palouse High School	VIKotics	Garfield at Palouse High School & Palouse High School	Palouse	Washington	USA	www.garpal.net	2016	Jormungander	PNW	CMPTX	64	64	1	1
58	6076	Northport High School	Mustangs	Northport High School	Northport	Washington	USA	www.northportschools.org	2016	\N	PNW	CMPTX	64	64	1	1
59	6443	Hillsboro School District/Hillsboro Optimist Club/Howard S Wright/Granite River Labs/Autodesk/Tektronix/Teco Technology&Liberty High School	AEMBOT	Liberty High School	Hillsboro	Oregon	USA	\N	2017	\N	PNW	CMPTX	64	64	1	1
60	6445	NASA & Career and Technical Education Center (CTEC)	CTEC Robotics	Career and Technical Education Center (CTEC)	Salem	Oregon	USA	\N	2017	\N	PNW	CMPTX	64	64	1	1
61	6465	Autodesk/Mentor Graphics/The Wonderful Company&Cascades Academy of Central Oregon	Mystic Biscuit	Cascades Academy of Central Oregon	Bend	Oregon	USA	https://www.instagram.com/real_mystic_biscuit/?hl=en	2017	\N	PNW	CMPTX	64	64	1	1
62	6831	Google&Hood River Valley High School&Hood River Valley High School	 A-05 Annex	Hood River Valley High School & Hood River Valley High School	Hood River	Oregon	USA	a05annex.org	2018	\N	PNW	CMPTX	64	64	1	1
63	6845	Hampton Lumber/Fastenal/NASA/Oregon Dept of Education&Astoria Senior High School	River Bots	Astoria Senior High School	Astoria	Oregon	USA	http://riverbots.com	2018	Matthew	PNW	CMPTX	64	64	1	1
64	7034	West Linn High School	2B Determined	West Linn High School	West Linn	Oregon	USA	\N	2018	\N	PNW	CMPTX	64	64	1	1
\.


--
-- PostgreSQL database dump complete
--
