-- Database: neo_horizon_test
--Version 1.0

--DROP DATABASE IF EXISTS neo_horizon_test;
/*
CREATE DATABASE neo_horizon_test
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'pt-BR'
    LC_CTYPE = 'pt-BR'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = FALSE;
*/

CREATE TABLE IF NOT EXISTS dim_periodo (
    periodo_id BIGINT GENERATED ALWAYS AS IDENTITY,
    periodo_dia INTEGER,
    periodo_semana INTEGER,
    periodo_mes INTEGER,
    periodo_ano INTEGER,
    PRIMARY KEY (periodo_id)
);

CREATE TABLE IF NOT EXISTS dim_projeto (
    projeto_id BIGINT GENERATED ALWAYS AS IDENTITY,
    projeto_nome VARCHAR(60) NOT NULL,
    projeto_key VARCHAR(60) NOT NULL,
    projeto_jira_id VARCHAR (60),
    PRIMARY KEY (projeto_id),
    UNIQUE (projeto_key)
);

CREATE TABLE IF NOT EXISTS dim_dev (
    dev_id BIGINT GENERATED ALWAYS AS IDENTITY,
    dev_nome VARCHAR(60) NOT NULL,
    dev_email VARCHAR(60),
    dev_senha VARCHAR (60),
    dev_role VARCHAR (60),
    dev_custo_hora INTEGER,
    PRIMARY KEY (dev_id)
);

CREATE TABLE IF NOT EXISTS dim_status (
    status_id BIGINT GENERATED ALWAYS AS IDENTITY,
    status_nome VARCHAR(60) NOT NULL,
    status_descricao VARCHAR(60),
    PRIMARY KEY (status_id)
);

CREATE TABLE IF NOT EXISTS dim_tipo (
    tipo_id BIGINT GENERATED ALWAYS AS IDENTITY,
    tipo_nome VARCHAR(60) NOT NULL,
    tipo_descricao VARCHAR(60),
    PRIMARY KEY (tipo_id)
);

CREATE TABLE IF NOT EXISTS fato_issue (
    issue_id BIGINT GENERATED ALWAYS AS IDENTITY,
    projeto_id BIGINT NOT NULL,
    periodo_id BIGINT NOT NULL,
    status_id BIGINT NOT NULL,
    tipo_id BIGINT NOT NULL,
    issue_quantidade BIGINT NOT NULL,
    PRIMARY KEY (issue_id, projeto_id, periodo_id, status_id, tipo_id),
    FOREIGN KEY (projeto_id) REFERENCES dim_projeto (projeto_id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (periodo_id) REFERENCES dim_periodo (periodo_id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (status_id) REFERENCES dim_status (status_id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (tipo_id) REFERENCES dim_tipo (tipo_id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS fato_custo_hora (
    custo_hora_id BIGINT GENERATED ALWAYS AS IDENTITY,
    projeto_id BIGINT NOT NULL,
    periodo_id BIGINT NOT NULL,
    dev_id BIGINT NOT NULL,
    custo INTEGER,
    horas_quantidade INTEGER,
    PRIMARY KEY (custo_hora_id, projeto_id, periodo_id, dev_id),
    FOREIGN KEY (projeto_id) REFERENCES dim_projeto (projeto_id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (periodo_id) REFERENCES dim_periodo (periodo_id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (dev_id) REFERENCES dim_dev (dev_id) ON DELETE RESTRICT ON UPDATE CASCADE
);