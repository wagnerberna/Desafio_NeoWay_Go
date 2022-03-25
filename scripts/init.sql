CREATE DATABASE neoway;
CREATE TABLE public.customer (
    customer_id serial NOT NULL,
    cpf varchar NOT NULL,
    private bool NULL,
    incomplete bool NULL,
    date_last_purchase varchar NULL,
    ticket_average varchar NULL,
    ticket_last_purchase varchar NULL,
    cnpj_store_most_frequent varchar NULL,
    cnpj_store_last_purchase varchar NULL,
    PRIMARY KEY (customer_id)
);