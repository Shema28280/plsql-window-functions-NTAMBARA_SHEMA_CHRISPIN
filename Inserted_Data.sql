--
-- PostgreSQL database dump
--

\restrict XqYAbDCTL48QooBBre6hYKQm117URhnzgmAYatEAMT3h3E18fAL4ok4hFqM7aWF

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-09-26 23:15:54

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
-- TOC entry 4818 (class 1262 OID 16387)
-- Name: broiler; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE broiler WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Rwanda.1252';


ALTER DATABASE broiler OWNER TO postgres;

\unrestrict XqYAbDCTL48QooBBre6hYKQm117URhnzgmAYatEAMT3h3E18fAL4ok4hFqM7aWF
\connect broiler
\restrict XqYAbDCTL48QooBBre6hYKQm117URhnzgmAYatEAMT3h3E18fAL4ok4hFqM7aWF

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 16389)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    full_name character varying(100),
    region character varying(50),
    email character varying(100)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16388)
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_customer_id_seq OWNER TO postgres;

--
-- TOC entry 4819 (class 0 OID 0)
-- Dependencies: 217
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- TOC entry 220 (class 1259 OID 16396)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    product_id integer NOT NULL,
    product_name character varying(100),
    category character varying(50)
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16395)
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_product_id_seq OWNER TO postgres;

--
-- TOC entry 4820 (class 0 OID 0)
-- Dependencies: 219
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;


--
-- TOC entry 222 (class 1259 OID 16403)
-- Name: transactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transactions (
    transaction_id integer NOT NULL,
    customer_id integer,
    product_id integer,
    sale_date date,
    quantity integer,
    unit_price numeric(12,2),
    amount numeric(12,2)
);


ALTER TABLE public.transactions OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16402)
-- Name: transactions_transaction_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transactions_transaction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transactions_transaction_id_seq OWNER TO postgres;

--
-- TOC entry 4821 (class 0 OID 0)
-- Dependencies: 221
-- Name: transactions_transaction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transactions_transaction_id_seq OWNED BY public.transactions.transaction_id;


--
-- TOC entry 4651 (class 2604 OID 16392)
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- TOC entry 4652 (class 2604 OID 16399)
-- Name: products product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- TOC entry 4653 (class 2604 OID 16406)
-- Name: transactions transaction_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions ALTER COLUMN transaction_id SET DEFAULT nextval('public.transactions_transaction_id_seq'::regclass);


--
-- TOC entry 4808 (class 0 OID 16389)
-- Dependencies: 218
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (customer_id, full_name, region, email) FROM stdin;
101	NTAMBARA Shema	Kigali	johndoe@gmail.com
102	NYANDWI Jean	Butare	janeuwimana@gmail.com
103	Eric Ndayisenga	Musanze	ericndayisenga@gmail.com
104	Alice Mukamana	Huye	alicemukamana@gmail.com
105	David Habimana	Rubavu	davidhabimana@gmail.com
106	Grace Umutoni	Nyamata	graceumutoni@gmail.com
107	Samuel Mugabo	Gisenyi	samuelmugabo@gmail.com
108	Claudine Ishimwe	Muhanga	claudineishimwe@gmail.com
109	Peter Byiringiro	Rwamagana	peterbyiringiro@gmail.com
110	Esther Akimana	Rusizi	estherakimana@gmail.com
\.


--
-- TOC entry 4810 (class 0 OID 16396)
-- Dependencies: 220
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (product_id, product_name, category) FROM stdin;
201	Fresh Whole Chicken 1kg	Broiler
202	Chicken Wings 500g	Broiler
203	Chicken Drumsticks 1kg	Broiler
204	Chicken Breast Fillet 500g	Broiler
205	Frozen Chicken Thighs 1kg	Broiler
206	Chicken Gizzards 500g	Broiler
\.


--
-- TOC entry 4812 (class 0 OID 16403)
-- Dependencies: 222
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transactions (transaction_id, customer_id, product_id, sale_date, quantity, unit_price, amount) FROM stdin;
301	101	201	2024-01-05	2	4500.00	9000.00
302	102	203	2024-01-12	1	5500.00	5500.00
303	103	202	2024-01-18	3	3000.00	9000.00
304	104	206	2024-01-28	2	3500.00	7000.00
305	105	205	2024-02-03	2	5000.00	10000.00
306	106	204	2024-02-10	1	6000.00	6000.00
307	107	201	2024-02-15	3	4500.00	13500.00
308	108	202	2024-02-21	2	3000.00	6000.00
309	109	203	2024-03-05	2	5500.00	11000.00
310	110	206	2024-03-09	1	3500.00	3500.00
311	101	201	2024-03-15	1	4500.00	4500.00
312	102	204	2024-03-25	2	6000.00	12000.00
313	103	205	2024-04-02	1	5000.00	5000.00
314	104	202	2024-04-07	3	3000.00	9000.00
315	105	206	2024-04-18	2	3500.00	7000.00
316	106	203	2024-04-28	1	5500.00	5500.00
317	107	201	2024-05-05	2	4500.00	9000.00
318	108	204	2024-05-12	1	6000.00	6000.00
319	109	202	2024-05-18	2	3000.00	6000.00
320	110	205	2024-05-29	3	5000.00	15000.00
321	101	206	2024-06-04	1	3500.00	3500.00
322	102	203	2024-06-10	2	5500.00	11000.00
323	103	201	2024-06-15	2	4500.00	9000.00
324	104	204	2024-06-25	1	6000.00	6000.00
\.


--
-- TOC entry 4822 (class 0 OID 0)
-- Dependencies: 217
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 1, false);


--
-- TOC entry 4823 (class 0 OID 0)
-- Dependencies: 219
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_product_id_seq', 1, false);


--
-- TOC entry 4824 (class 0 OID 0)
-- Dependencies: 221
-- Name: transactions_transaction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transactions_transaction_id_seq', 1, false);


--
-- TOC entry 4655 (class 2606 OID 16394)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 4657 (class 2606 OID 16401)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- TOC entry 4659 (class 2606 OID 16408)
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (transaction_id);


--
-- TOC entry 4660 (class 2606 OID 16409)
-- Name: transactions transactions_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- TOC entry 4661 (class 2606 OID 16414)
-- Name: transactions transactions_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);


-- Completed on 2025-09-26 23:15:54

--
-- PostgreSQL database dump complete
--

\unrestrict XqYAbDCTL48QooBBre6hYKQm117URhnzgmAYatEAMT3h3E18fAL4ok4hFqM7aWF

