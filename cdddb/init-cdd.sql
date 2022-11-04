
DROP TABLE IF EXISTS public.apicall_log;
CREATE TABLE public.apicall_log (
	id int8 NOT NULL,
	api_name varchar(255) NULL,
	call_id varchar(255) NULL,
	call_time timestamp NULL,
	client_id varchar(255) NULL,
	custom_key varchar(255) NULL,
	endpoint varchar(255) NULL,
	ext_ref_id varchar(255) NULL,
	journal_status varchar(255) NULL,
	CONSTRAINT apicall_log_pkey PRIMARY KEY (id)
);

DROP TABLE IF EXISTS public.modul_price;
CREATE TABLE public.modul_price (
	module_name varchar(255) NOT NULL,
	endpoint varchar(255) NULL,
	price int8 NULL,
	CONSTRAINT modul_price_pkey PRIMARY KEY (module_name)
);

DROP TABLE IF EXISTS public.modul_set;
CREATE TABLE public.modul_set (
	modulset_code varchar(255) NOT NULL,
	client_id varchar(255) NULL,
	customer_id int8 NULL,
	modul_set_endpoint varchar(255) NULL,
	price numeric(19, 2) NULL,
	CONSTRAINT modul_set_pkey PRIMARY KEY (modulset_code)
);

DROP TABLE IF EXISTS public.modul_set_item;
CREATE TABLE public.modul_set_item (
	id int8 NOT NULL,
	category varchar(255) NULL,
	module_name varchar(255) NULL,
	modulset_code varchar(255) NULL,
	price int8 NULL,
	CONSTRAINT modul_set_item_pkey PRIMARY KEY (id)
);


DROP TABLE IF EXISTS public.customer;
CREATE TABLE public.customer (
	customer_id int8 NOT NULL,
	activation_date date NULL,
	client_id varchar(255) NULL,
	customer_status varchar(255) NULL,
	email_address varchar(255) NULL,
	instansi varchar(255) NULL,
	last_update date NULL,
	person_name varchar(255) NULL,
	person_phone varchar(255) NULL,
	registration_id int8 NULL,
	CONSTRAINT customer_pkey PRIMARY KEY (customer_id)
);

DROP TABLE IF EXISTS public.customer_balance;
CREATE TABLE public.customer_balance (
	id int8 NOT NULL,
	customer_id int8 NULL,
	journal_id int8 NULL,
	last_balance numeric(19, 2) NULL,
	last_update timestamp NULL,
	CONSTRAINT customer_balance_pkey PRIMARY KEY (id)
);

DROP TABLE IF EXISTS public.journal_balance;
CREATE TABLE public.journal_balance (
	journal_id int8 NOT NULL,
	amount numeric(19, 2) NULL,
	client_id varchar(255) NULL,
	keterangan varchar(255) NULL,
	last_balance numeric(19, 2) NULL,
	ref_code varchar(255) NULL,
	transaction_date int4 NULL,
	transaction_time timestamp NULL,
	transanction_type varchar(255) NULL,
	CONSTRAINT journal_balance_pkey PRIMARY KEY (journal_id)
);

DROP TABLE IF EXISTS public.registration;
CREATE TABLE public.registration (
	registration_id int8 NOT NULL,
	business_number varchar(255) NULL,
	confirmation_code varchar(255) NULL,
	instansi varchar(255) NULL,
	person_email varchar(255) NULL,
	person_name varchar(255) NULL,
	person_phone varchar(255) NULL,
	registration_date date NULL,
	registration_status varchar(255) NULL,
	tax_id varchar(255) NULL,
	CONSTRAINT registration_pkey PRIMARY KEY (registration_id)
);
DELETE FROM public.registration;
INSERT INTO public.registration (registration_id,business_number,confirmation_code,instansi,person_email,person_name,person_phone,registration_date,registration_status,tax_id) VALUES
	 (1,'21040503','24daljkr42j','PT SURYA ABADI','fransmzh13@gmail.com','JOKO SUSANTO','081114455','2022-11-02','Emailed','4400-502003');

DROP TABLE IF EXISTS public.topup_log;
CREATE TABLE public.topup_log (
	id int8 NOT NULL,
	amount numeric(19, 2) NULL,
	client_id varchar(255) NULL,
	journal_ref int8 NULL,
	journal_status varchar(255) NULL,
	trns_time timestamp NULL,
	CONSTRAINT topup_log_pkey PRIMARY KEY (id)
);

DROP TABLE IF EXISTS public.transaction_record;
CREATE TABLE public.transaction_record (
	trns_id varchar(255) NOT NULL,
	client_id varchar(255) NULL,
	endpoint varchar(255) NULL,
	paket varchar(255) NULL,
	"period" varchar(255) NULL,
	refid varchar(255) NULL,
	response_time int8 NULL,
	trns_time timestamp NULL,
	CONSTRAINT transaction_record_pkey PRIMARY KEY (trns_id)
);

DELETE FROM public.modul_price;
INSERT INTO public.modul_price (module_name,endpoint,price) VALUES
	 ('telco:valid','http://latitude:9021/subscribers/valid',4000),
	 ('telco:active','http://latitude:9021/subscribers/active',4000),
	 ('telco:jeniskartu','http://latitude:9021/subscribers/prepaid',4000),
	 ('telco:billing','http://latitude:9021/subscribers/billing',4000),
	 ('telco:paketdata','http://latitude:9021/subscribers/data',4000),
	 ('telco:saldo','http://latitude:9021/subscribers/balance',4000),
	 ('telco:quotadata','http://latitude:9021/subscribers/quota',4000),
	 ('telco:tenure','http://latitude:9021/subscribers/tenure',4000),
	 ('telco:expire','http://latitude:9021/subscribers/expiration',4000),
	 ('telco:dataexpire','http://latitude:9021/subscribers/data/expiration',4000);
INSERT INTO public.modul_price (module_name,endpoint,price) VALUES
	 ('telco:aktivasi','http://latitude:9021/subscribers/activation',4000),
	 ('identity:matchface','http://latitude:9022/identify/matchface',10000);


CREATE SEQUENCE public.hibernate_sequence
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;