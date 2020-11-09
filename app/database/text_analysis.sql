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
-- Data for Name: text_analysis; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (4, 6, 'Sem Assunto - Estou procurando bermuda masculina Com bolsos laterais 100 por cento poliéster.', 0, 0, 0, 0, 0, 0, 'NEUTRAL', '2020-11-09 18:16:48', '2020-11-09 18:16:48');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (5, 8, 'RE: Sem Assunto - Obrigado. GOsto de bermuda com bolsos laterais . Quem fabricou este modelo?', 0, 0.39375, 0, 0, 0, 0.39375, 'POSITIVE', '2020-11-09 18:16:48', '2020-11-09 18:16:48');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (6, 9, 'Reclamação - Boa noite! Comprei na loja um tênis para minha filha, porém está manchando a meia, vejam as fotos; O que fazer para não estragar todas as meias???', 0.48, 0.42, 0, 0.24, 0.24, -0.06, 'MIXED', '2020-11-09 18:16:48', '2020-11-09 18:16:48');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (7, 11, 'Tamanho diferente - Boa tarde ! Comprei um tênis tamanho 38 na loja. Entretanto, o pé direito está maior do que o pé esquerdo e só notei ao usá-lo. Essa diferença está notável externamente. Aguardo uma solução', 0, 0.4375, 0, 0, 0, 0.4375, 'POSITIVE', '2020-11-09 18:16:48', '2020-11-09 18:16:48');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (8, 13, 'Sem assunto - Boa tarde ,efetuei uma compra e digitei o meu email errado e nao consigo acompanhar a entrega e a compra o que faço', 0.3875, 0.145, 0, 0.51666666666667, 0.25833333333333, -0.40416666666667, 'MIXED', '2020-11-09 18:16:48', '2020-11-09 18:16:48');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (9, 15, 'RE: Dúvidas - Boa tarde segue o numero do pedido 12345', 0, 0, 0, 0, 0, 0, 'NEUTRAL', '2020-11-09 18:16:49', '2020-11-09 18:16:49');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (10, 16, 'Reclamação - efetuei a compra de um produto e até agora nao foi entregue a mercadoria, no site de vcs nao consta o pedido como pendente, já veio debitada a compra na fatura do meu cartão, ja tentei de várias formas e não consigo soluçao, gostaria de resolver da melhor maneira possivel direto com a loja antes de tomar as providências cabíveis', 0.225, 0.453125, 0, 0, 0, 0.078125, 'MIXED', '2020-11-09 18:16:49', '2020-11-09 18:16:49');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (11, 18, 'Entrega - Bom dia, O prazo de entrega do produto foi ontem e até o momento não recebemos o pedido, confirmado o pagamento. Por gentileza, verificar o ocorrido uma vez que já trocamos o produto', 0.39375, 0.1425, 0, 0, 0.2625, -0.13125, 'NEGATIVE', '2020-11-09 18:16:49', '2020-11-09 18:16:49');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (12, 20, 'Elogios - Muito obrigado pela gentileza e atenção.Vocês sao simpaticos, gentis e agradaveis de se lidar e de respeito ao consumidor.Não tenho mais palavras para agradecer tamanha gentileza e simpatia.Fiquei muito satisfeito.Recomendarei a todos.', 0, 0.6203125, 0, 0, 0, 0.6203125, 'POSITIVE', '2020-11-09 18:16:49', '2020-11-09 18:16:49');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (13, 22, 'Elogios e Sugestões - Ficou otimo. Sensacional, gostei.Mais uma vez, elogios para vocês. Obrigado pela atenção, boas vendas.', 0, 0.71875, 0, 0, 0, 0.71875, 'POSITIVE', '2020-11-09 18:16:49', '2020-11-09 18:16:49');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (14, 24, 'Elogios - Parabens pelo produto de voces, pelo bom atendimento e rapidez na entrega. Voces sao otimos.', 0, 0.91875, 0, 0, 0, 0.91875, 'POSITIVE', '2020-11-09 18:16:49', '2020-11-09 18:16:49');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (15, 26, 'Dúvida - Olá eu queria saber se tem data pra ter ou se já está disponivel o produto ABC em alguma loja física', 0, 0.30625, 0, 0, 0, 0.30625, 'POSITIVE', '2020-11-09 18:16:49', '2020-11-09 18:16:49');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (16, 28, 'Planos e Formas de Pagamento - A 1º parcela de 72,00 refere-se a 3 meses de plano, mas o que significa que a assinatura será renovada automaticamente com o valor de 29,00 ? Este procedimento é depois dos 3 meses, ou terei que pagar', 0.21, 0.21, 0, 0, 0, 0, 'MIXED', '2020-11-09 18:16:49', '2020-11-09 18:16:49');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (17, 30, 'COnfirmação de data de entrega - Gostaria da confirmaço da data para entrega. Tres dias contando a partir de quando? Do dia 19? Preciso destas informaçÃµes também para o preenchimento da minha pesquisa de satisfaço no e-bit. Obrigada', 0.175, 0.36166666666667, 0.175, 0, 0.175, 0.18666666666667, 'MIXED', '2020-11-09 18:16:50', '2020-11-09 18:16:50');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (18, 32, 'RE: COnfirmação de data de entrega - Mas já faz mais de 3 dias q o pagto já foi confirmado', 0, 0.2625, 0, 0, 0, 0.2625, 'POSITIVE', '2020-11-09 18:16:50', '2020-11-09 18:16:50');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (19, 33, 'Dúvidas sobre o programa - fiz assinatura ontem , até agora não consigo acessar o programa , esta é a terceira tentativa de contato , alguém pode resolver meu caso ?', 0.5, 0.15, 0, 0, 0, -0.25, 'MIXED', '2020-11-09 18:16:50', '2020-11-09 18:16:50');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (20, 35, 'RE: Dúvidas sobre o programa - Mas já recebi a confirmacao de pagamento por email', 0, 1, 0, 0, 0, 1, 'POSITIVE', '2020-11-09 18:16:50', '2020-11-09 18:16:50');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (21, 36, 'Como troco um produto? - Comprei no dia 15/6/17 (pedido 4800) um celular. Ontem chegou em minha casa um tablet. A NF está em nome de outra pessoa, com outro número de pedido (4878). Quero saber oq faço', 0, 0.525, 0, 0, 0, 0.525, 'POSITIVE', '2020-11-09 18:16:50', '2020-11-09 18:16:50');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (22, 38, 'RE: Como troco um produto? - Mas o que devo fazer com o outro produto que recbi errado?', 0, 0, 0, 0, 0, 0, 'NEUTRAL', '2020-11-09 18:16:50', '2020-11-09 18:16:50');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (23, 39, 'Dúvidas sobre cancelamento do programa - A opção de cancelamento da continuidade da assinatura não esta funcionando. Ja tentei varias vezes e em dias diferentes e nunca da certo. Não quero continuar com a assinatura.', 0, 0.7875, 0, 0, 0, 0.7875, 'POSITIVE', '2020-11-09 18:16:50', '2020-11-09 18:16:50');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (24, 41, 'RE: Dúvidas sobre cancelamento do programa - Não. Por favor, quero cancelar. Como posso fazer?', 0, 0, 0, 0, 0, 0, 'NEUTRAL', '2020-11-09 18:16:50', '2020-11-09 18:16:50');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (25, 42, 'Informação - meu pedido ainda nao chegou, quero saber o que aconteceu e o que devo fazer?', 0, 0, 0, 0, 0, 0, 'NEUTRAL', '2020-11-09 18:16:51', '2020-11-09 18:16:51');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (26, 44, 'RE: Informação - O número do pedido é 829034', 0, 0.7875, 0, 0, 0, 0.7875, 'POSITIVE', '2020-11-09 18:16:51', '2020-11-09 18:16:51');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (27, 45, 'Cadastro - cadastrei meu email errado gostaria de corrigir , peço se possivel corrigir meu email e mandar uma nova senha', 0.24166666666667, 0.27125, 0, 0.48333333333333, 0.24166666666667, -0.03125, 'MIXED', '2020-11-09 18:16:51', '2020-11-09 18:16:51');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (28, 47, 'RE: Cadastro - o sistema não tá deixando eu mudar a senha. Aparece ''senha incorreta''', 0.525, 0, 0, 0, 0.525, -0.525, 'NEGATIVE', '2020-11-09 18:16:51', '2020-11-09 18:16:51');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (29, 48, 'Data de Entrega - como posso rastrear meu pedido simultaneamente, qual a data que ele devera chegar. Por que ele ainda não foi enviado.', 0.2625, 0, 0, 0, 0, -0.2625, 'NEGATIVE', '2020-11-09 18:16:51', '2020-11-09 18:16:51');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (30, 50, 'Coleta de Pedido - Bom dia, mudei meu endereço de entrega do pedido, e ainda assim o entregador esta aindo no endereço antigo, segue o novo endereço como ja esta no cadastro de vcs.', 0, 0.525, 0, 0.1425, 0, 0.2625, 'POSITIVE', '2020-11-09 18:16:51', '2020-11-09 18:16:51');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (31, 52, 'RE: Coleta de Pedido - Já confirmei o endereço duas vezes e continua dando problema..', 0.65625, 0, 0.39375, 0.525, 0.525, -0.65625, 'NEGATIVE', '2020-11-09 18:16:51', '2020-11-09 18:16:51');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (32, 53, 'troca de produto - comprei um produto, so que a fonte de alimentaçao não fuciona', 0, 0.525, 0, 0, 0, 0.525, 'POSITIVE', '2020-11-09 18:16:51', '2020-11-09 18:16:51');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (33, 55, 'Entrega  - quero sabero o nº de rastreio do produto, caso já tenha sido despachado.', 0, 0.7875, 0, 0, 0, 0.7875, 'POSITIVE', '2020-11-09 18:16:52', '2020-11-09 18:16:52');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (34, 57, 'Formas de Pagamento - Gostaria de saber se o notebook A ainda está disponível em estoque e se o preço permanece o mesmo. Também preciso saber qual forma de pagamento.', 0, 0.328125, 0, 0, 0, 0.328125, 'POSITIVE', '2020-11-09 18:16:52', '2020-11-09 18:16:52');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (35, 59, 'Esclarecer uma dúvida - Voces pode manda um cupom de descontos para mim para eu fazer uma nova compra?', 0.1425, 0.39375, 0.1425, 0.1425, 0, 0.13125, 'NEUTRAL', '2020-11-09 18:16:52', '2020-11-09 18:16:52');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (36, 61, 'Como está meu pedido? - Bom Dia Efetuei uma compra , o prazo de entrega foram de 8 dias uteis , gostaria de saber se pode ocorrer da entrega ser efetuada antes e como esta o andamento da entrega do mesmo', 0, 0.39375, 0, 0, 0, 0.39375, 'POSITIVE', '2020-11-09 18:16:52', '2020-11-09 18:16:52');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (37, 63, 'Acompanhamento - Gostaria de saber como esta o andamento do pedido, pois este foi reenviado conforme Email que recebi de vocês. Obrigado.', 0, 0.6125, 0, 0, 0, 0.6125, 'POSITIVE', '2020-11-09 18:16:52', '2020-11-09 18:16:52');
INSERT INTO public.text_analysis (id, ticket_interaction_id, text, sadness, joy, fear, disgust, anger, feelings_score, feelings_label, created_at, updated_at) VALUES (38, 65, 'RE: Acompanhamento - OK. Mas quanto tempo vai demorar?', 0.63, 0.21, 0, 0.21, 0.21, -0.42, 'MIXED', '2020-11-09 18:16:52', '2020-11-09 18:16:52');


--
-- Name: text_analysis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.text_analysis_id_seq', 38, true);


--
-- PostgreSQL database dump complete
--