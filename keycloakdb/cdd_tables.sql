-- public.apicall_log definition

-- Drop table

-- DROP TABLE public.apicall_log;

CREATE TABLE public.apicall_log (

);


-- public.bundle_module definition

-- Drop table

-- DROP TABLE public.bundle_module;

CREATE TABLE public.bundle_module (

);


-- public.bundling definition

-- Drop table

-- DROP TABLE public.bundling;

CREATE TABLE public.bundling (

);


-- public.customer definition

-- Drop table

-- DROP TABLE public.customer;

CREATE TABLE public.customer (

);


-- public.customer_balance definition

-- Drop table

-- DROP TABLE public.customer_balance;

CREATE TABLE public.customer_balance (

);


-- public.journal_balance definition

-- Drop table

-- DROP TABLE public.journal_balance;

CREATE TABLE public.journal_balance (

);


-- public.mock_partner definition

-- Drop table

-- DROP TABLE public.mock_partner;

CREATE TABLE public.mock_partner (

);


-- public.mock_subscriber definition

-- Drop table

-- DROP TABLE public.mock_subscriber;

CREATE TABLE public.mock_subscriber (

);


-- public.modul_price definition

-- Drop table

-- DROP TABLE public.modul_price;

CREATE TABLE public.modul_price (

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
	CONSTRAINT modul_set_pkey null
);


-- public.modul_set_item definition

-- Drop table

-- DROP TABLE public.modul_set_item;

CREATE TABLE public.modul_set_item (

);


-- public.registration definition

-- Drop table

-- DROP TABLE public.registration;

CREATE TABLE public.registration (

);


-- public.topup_log definition

-- Drop table

-- DROP TABLE public.topup_log;

CREATE TABLE public.topup_log (

);


-- public.transaction_record definition

-- Drop table

-- DROP TABLE public.transaction_record;

CREATE TABLE public.transaction_record (

);
