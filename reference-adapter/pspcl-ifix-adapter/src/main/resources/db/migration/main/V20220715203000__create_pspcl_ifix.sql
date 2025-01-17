DROP TABLE IF EXISTS pspcl_bill_detail;
DROP TABLE IF EXISTS pspcl_payment_detail;
DROP TABLE IF EXISTS pspcl_event_posting_detail;

CREATE TABLE pspcl_bill_detail
(
    id                           bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    account_no                   character varying(255),
    bill_issue_date              timestamp,
    bill_no                      character varying(255),
    date_reading_curr            timestamp,
    date_reading_prev            timestamp,
    due_date_cash_online         character varying(255),
    due_date_cheque_dd           character varying(255),
    orderbycolumn                character varying(255),
    payable_amount_by_due_date   character varying(255),
    payable_amount_upto_15_days  character varying(255),
    tariff_type                  character varying(255),
    json_data                    jsonb,
    createdby                    character varying(256)  NOT NULL,
    createdtime                  bigint                  NOT NULL,
    lastmodifiedby               character varying(256),
    lastmodifiedtime             bigint,
    CONSTRAINT pspcl_bill_detail_pkey PRIMARY KEY (id)
);


CREATE TABLE pspcl_payment_detail
(
    id              bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    acno            character varying(255),
    amt             character varying(255),
    bilcyc          character varying(255),
    bilgrp          character varying(255),
    bilissdt        timestamp,
    bilno           character varying(255),
    duedtcash       timestamp,
    duedtchq        timestamp,
    status_p        character varying(255),
    txndate         timestamp,
    txnid           character varying(255),
    json_data       jsonb,
    createdby       character varying(256)  NOT NULL,
    createdtime     bigint                  NOT NULL,
    lastmodifiedby  character varying(256),
    lastmodifiedtime bigint,
    CONSTRAINT pspcl_payment_detail_pkey PRIMARY KEY (id)
);



CREATE TABLE pspcl_event_posting_detail
(
    id                  bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    created_date        timestamp without time zone,
    error               character varying(255),
    event_type          character varying(255),
    ifix_event_id       character varying(255),
    last_modified_date  timestamp without time zone,
    record              jsonb,
    reference_id        character varying(255),
    status              character varying(255),
    tenant_id           character varying(255),
    CONSTRAINT pspcl_event_posting_detail_pkey PRIMARY KEY (id)
);
