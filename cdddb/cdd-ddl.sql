-- public.apicall_log definition

-- Drop table

-- DROP TABLE public.apicall_log;

CREATE TABLE public.apicall_log (
	id int8 NOT NULL,
	api_name varchar(100) NOT NULL,
	call_id varchar(255) NULL,
	call_time timestamp NULL,
	client_id varchar(100) NOT NULL,
	custom_key varchar(255) NULL,
	endpoint varchar(255) NULL,
	ext_ref_id varchar(50) NULL,
	journal_status varchar(50) NULL,
	CONSTRAINT apicall_log_pkey PRIMARY KEY (id)
);


-- public.app_user definition

-- Drop table

-- DROP TABLE public.app_user;

CREATE TABLE public.app_user (
	id int8 NOT NULL,
	customer_id int8 NULL,
	"password" varchar(255) NULL,
	user_name varchar(255) NULL,
	user_type varchar(255) NULL,
	CONSTRAINT app_user_pkey PRIMARY KEY (id)
);


-- public.customer definition

-- Drop table

-- DROP TABLE public.customer;

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


-- public.customer_balance definition

-- Drop table

-- DROP TABLE public.customer_balance;

CREATE TABLE public.customer_balance (
	id int8 NOT NULL,
	customer_id int8 NULL,
	journal_id int8 NULL,
	last_balance numeric(19, 2) NULL,
	last_update timestamp NULL,
	CONSTRAINT customer_balance_pkey PRIMARY KEY (id)
);


-- public.journal_balance definition

-- Drop table

-- DROP TABLE public.journal_balance;

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


-- public.master_desa definition

-- Drop table

-- DROP TABLE public.master_desa;

CREATE TABLE public.master_desa (
	provinsi varchar(100) NOT NULL,
	kabupaten varchar(100) NOT NULL,
	kecamatan varchar(100) NOT NULL,
	desa varchar(100) NOT NULL,
	id_desa varchar(20) NOT NULL,
	id_kecamatan varchar(20) NULL,
	CONSTRAINT master_desa_pk PRIMARY KEY (id_desa)
);


-- public.master_kabupaten definition

-- Drop table

-- DROP TABLE public.master_kabupaten;

CREATE TABLE public.master_kabupaten (
	provinsi varchar(100) NULL,
	kabupaten varchar(100) NULL,
	id varchar(20) NOT NULL,
	CONSTRAINT master_kabupaten_pk PRIMARY KEY (id)
);


-- public.master_kecamatan definition

-- Drop table

-- DROP TABLE public.master_kecamatan;

CREATE TABLE public.master_kecamatan (
	id varchar(20) NOT NULL,
	provinsi varchar(100) NULL,
	kabupaten varchar(100) NULL,
	kecamatan varchar(100) NULL,
	id_kabupaten varchar(20) NULL,
	CONSTRAINT kecamatan_pk PRIMARY KEY (id)
);


-- public.mock_partner definition

-- Drop table

-- DROP TABLE public.mock_partner;

CREATE TABLE public.mock_partner (
	partner_id varchar(255) NOT NULL,
	access_token varchar(255) NULL,
	expire_at timestamp NULL,
	partner_name varchar(255) NULL,
	CONSTRAINT mock_partner_pkey PRIMARY KEY (partner_id)
);


-- public.mock_subscriber definition

-- Drop table

-- DROP TABLE public.mock_subscriber;

CREATE TABLE public.mock_subscriber (
	msisdn varchar(255) NOT NULL,
	activation_date date NULL,
	balance numeric(19, 2) NULL,
	bill_amount numeric(19, 2) NULL,
	bill_cycle varchar(255) NULL,
	card_type varchar(255) NULL,
	data_quota numeric(19, 2) NULL,
	days_until_data_expired int4 NULL,
	days_until_expired int4 NULL,
	has_package_data varchar(255) NULL,
	status varchar(255) NULL,
	CONSTRAINT mock_subscriber_pkey PRIMARY KEY (msisdn)
);


-- public.modul_price definition

-- Drop table

-- DROP TABLE public.modul_price;

CREATE TABLE public.modul_price (
	module_name varchar(100) NOT NULL,
	endpoint varchar(255) NULL,
	price int8 NULL,
	CONSTRAINT modul_price_pkey PRIMARY KEY (module_name)
);


-- public.modul_set definition

-- Drop table

-- DROP TABLE public.modul_set;

CREATE TABLE public.modul_set (
	modulset_code varchar(255) NOT NULL,
	client_id varchar(255) NULL,
	customer_id int8 NULL,
	modul_set_endpoint varchar(255) NULL,
	price numeric(19, 2) NULL,
	CONSTRAINT modul_set_pkey PRIMARY KEY (modulset_code)
);


-- public.registration definition

-- Drop table

-- DROP TABLE public.registration;

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


-- public.topup_log definition

-- Drop table

-- DROP TABLE public.topup_log;

CREATE TABLE public.topup_log (
	id int8 NOT NULL,
	amount numeric(19, 2) NULL,
	client_id varchar(255) NULL,
	journal_ref int8 NULL,
	journal_status varchar(255) NULL,
	trns_time timestamp NULL,
	CONSTRAINT topup_log_pkey PRIMARY KEY (id)
);


-- public.transaction_record definition

-- Drop table

-- DROP TABLE public.transaction_record;

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


-- public.modul_set_item definition

-- Drop table

-- DROP TABLE public.modul_set_item;

CREATE TABLE public.modul_set_item (
	id int8 NOT NULL,
	category varchar(255) NULL,
	module_name varchar(100) NULL,
	price numeric(19, 2) NULL,
	modulset_code varchar(255) NOT NULL,
	CONSTRAINT modul_set_item_pkey PRIMARY KEY (id),
	CONSTRAINT fk2aj8u8wo2njvibmnewo0s3dx2 FOREIGN KEY (modulset_code) REFERENCES public.modul_set(modulset_code)
);