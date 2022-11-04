DROP TABLE IF EXISTS public.mock_subscriber;
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

INSERT INTO public.mock_subscriber 
(msisdn,activation_date,balance,bill_amount,bill_cycle,card_type,data_quota,days_until_data_expired,days_until_expired,has_package_data,status) 
VALUES
 ('081112222','2017-03-17',1000.00,0.00,'20','Prepaid',30000.00,15,4,'Y','Active'),
 ('081112223','2014-05-07',100000.00,0.00,'20','Prepaid',100000.00,15,4,'Y','Active'),
 ('081122224','2020-01-27',0.00,250000.00,'20','Postpaid',30000.00,15,4,'Y','Active'),
 ('081122225','2020-11-23',0.00,250000.00,'20','Postpaid',30000.00,15,4,'Y','Active'),
 ('081112226','2021-12-15',0.00,250000.00,'20','Postpaid',25000.00,15,4,'Y','Active'),
 ('081112227','2022-03-10',20000.00,0.00,'20','Prepaid',30000.00,15,4,'Y','Active'),
 ('081112228','2022-04-07',150000.00,0.00,'20','Prepaid',30000.00,15,4,'Y','NotActive'),
 ('081112229','2019-05-05',0.00,0.00,'20','Prepaid',30000.00,15,4,'Y','Suspended');

DROP TABLE IF EXISTS public.mock_partner;

CREATE TABLE public.mock_partner (
	partner_id varchar(255) NOT NULL,
	access_token varchar(255) NULL,
	expire_at timestamp NULL,
	partner_name varchar(255) NULL,
	CONSTRAINT mock_partner_pkey PRIMARY KEY (partner_id)
);
INSERT INTO public.mock_partner
(partner_id, access_token, expire_at, partner_name)
VALUES('CDD', 'l3rkjtlwerjlk', '2022-12-05', 'Customer Due Dilligence');
