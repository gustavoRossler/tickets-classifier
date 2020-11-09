--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0 (Debian 13.0-1.pgdg100+1)
-- Dumped by pg_dump version 13.0 (Debian 13.0-1.pgdg100+1)

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

--
-- Data for Name: tickets; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (3, 57526, 97979, 'Cox Workman', 'cox.workman@neoassist.com', '2020-11-09 18:16:48', '2020-11-09 18:16:48', 28890, '2017-12-13 03:08:42', '2018-01-04 09:18:25', 2);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (4, 46403, 97974, 'Vilma Mcmahon', 'vilma.mcmahon@neoassist.com', '2020-11-09 18:16:48', '2020-11-09 18:16:48', 28891, '2017-12-25 03:12:39', '2018-02-12 05:14:11', 1);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (5, 28514, 97960, 'Cristina Pitts', 'cristina.pitts@neoassist.com', '2020-11-09 18:16:48', '2020-11-09 18:16:48', 28892, '2017-12-21 03:51:39', '2018-01-01 06:21:59', 2);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (6, 59260, 97958, 'Tina Melton', 'tina.melton@neoassist.com', '2020-11-09 18:16:48', '2020-11-09 18:16:48', 28893, '2017-12-09 01:34:49', '2018-01-19 01:19:08', 1);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (7, 36319, 97999, 'Darcy Erickson', 'darcy.erickson@neoassist.com', '2020-11-09 18:16:49', '2020-11-09 18:16:49', 28894, '2017-12-22 01:05:19', '2018-02-04 10:03:08', 2);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (8, 11769, 97997, 'Chase Love', 'chase.love@neoassist.com', '2020-11-09 18:16:49', '2020-11-09 18:16:49', 28895, '2017-12-16 11:41:52', '2018-01-05 11:27:25', 1);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (9, 45738, 97928, 'Irma House', 'irma.house@neoassist.com', '2020-11-09 18:16:49', '2020-11-09 18:16:49', 28896, '2017-12-07 02:40:42', '2018-01-06 10:21:10', 2);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (10, 31514, 97990, 'Byrd Mcfadden', 'byrd.mcfadden@neoassist.com', '2020-11-09 18:16:49', '2020-11-09 18:16:49', 28897, '2017-12-12 01:24:14', '2018-01-09 04:34:40', 2);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (11, 66134, 97943, 'Lynnette Taylor', 'lynnette.taylor@neoassist.com', '2020-11-09 18:16:49', '2020-11-09 18:16:49', 28898, '2017-12-03 12:44:34', '2018-02-11 04:22:01', 2);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (12, 28000, 97959, 'Dejesus Steele', 'dejesus.steele@neoassist.com', '2020-11-09 18:16:49', '2020-11-09 18:16:49', 28899, '2017-12-18 06:24:45', '2018-01-09 07:13:04', 2);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (13, 14241, 97907, 'Dee Sampson', 'dee.sampson@neoassist.com', '2020-11-09 18:16:49', '2020-11-09 18:16:49', 288910, '2017-12-03 04:57:38', '2018-02-12 12:34:43', 2);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (14, 12426, 97932, 'Nannie Duffy', 'nannie.duffy@neoassist.com', '2020-11-09 18:16:49', '2020-11-09 18:16:49', 288911, '2017-12-13 06:55:35', '2018-02-10 10:10:55', 2);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (15, 19961, 97988, 'Bright Obrien', 'bright.obrien@neoassist.com', '2020-11-09 18:16:50', '2020-11-09 18:16:50', 288912, '2017-12-12 01:25:30', '2018-02-10 09:11:50', 1);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (16, 55814, 97975, 'Dionne Smith', 'dionne.smith@neoassist.com', '2020-11-09 18:16:50', '2020-11-09 18:16:50', 288913, '2017-12-25 09:03:15', '2018-02-09 20:13:52', 2);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (17, 55834, 97963, 'Mcdaniel Kinney', 'mcdaniel.kinney@neoassist.com', '2020-11-09 18:16:50', '2020-11-09 18:16:50', 288914, '2017-12-19 10:23:28', '2018-01-29 13:45:22', 2);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (18, 45306, 97988, 'Hull Santiago', 'hull.santiago@neoassist.com', '2020-11-09 18:16:50', '2020-11-09 18:16:50', 288915, '2017-12-27 05:19:59', '2018-01-28 09:16:29', 2);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (19, 63805, 97969, 'Esperanza Henry', 'esperanza.henry@neoassist.com', '2020-11-09 18:16:51', '2020-11-09 18:16:51', 288916, '2017-12-24 06:29:33', '2018-02-01 08:00:00', 1);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (20, 49681, 97938, 'Abigail Wilcox', 'abigail.wilcox@neoassist.com', '2020-11-09 18:16:51', '2020-11-09 18:16:51', 288917, '2017-12-15 03:30:32', '2018-01-10 05:37:56', 1);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (21, 68176, 97969, 'Rachael Dyer', 'rachael.dyer@neoassist.com', '2020-11-09 18:16:51', '2020-11-09 18:16:51', 288918, '2017-12-17 09:35:01', '2018-01-19 22:20:19', 1);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (22, 57782, 97958, 'Felicia Cotton', 'felicia.cotton@neoassist.com', '2020-11-09 18:16:51', '2020-11-09 18:16:51', 288919, '2017-12-07 12:59:33', '2018-01-06 02:55:47', 2);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (23, 25378, 97922, 'Paulette Bernard', 'paulette.bernard@neoassist.com', '2020-11-09 18:16:51', '2020-11-09 18:16:51', 288920, '2017-12-26 10:04:31', '2018-01-06 03:43:55', 2);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (24, 62228, 97936, 'Beulah Moss', 'beulah.moss@neoassist.com', '2020-11-09 18:16:52', '2020-11-09 18:16:52', 288921, '2017-12-12 12:53:57', '2018-01-11 09:30:38', 2);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (25, 43280, 97907, 'Bass Lowe', 'bass.lowe@neoassist.com', '2020-11-09 18:16:52', '2020-11-09 18:16:52', 288922, '2017-12-30 06:07:54', '2018-01-23 04:28:16', 2);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (26, 64773, 97930, 'Vicki Gill', 'vicki.gill@neoassist.com', '2020-11-09 18:16:52', '2020-11-09 18:16:52', 288923, '2017-12-16 09:14:17', '2018-01-25 01:26:16', 2);
INSERT INTO public.tickets (id, category_id, customer_id, customer_name, customer_email, created_at, updated_at, ticket_id, date_create, date_update, priority) VALUES (27, 45228, 97897, 'Rosario Mercer', 'rosario.mercer@neoassist.com', '2020-11-09 18:16:52', '2020-11-09 18:16:52', 288924, '2017-12-20 11:24:29', '2018-02-08 09:55:52', 1);


--
-- Name: tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.tickets_id_seq', 27, true);


--
-- PostgreSQL database dump complete
--