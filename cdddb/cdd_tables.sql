
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