CREATE TABLE IF NOT EXISTS dim_atividade (
	atividade_id BIGINT GENERATED ALWAYS AS IDENTITY,
	atividade_nome TEXT,
	atividade_descricao TEXT,
	atividade_jira_id VARCHAR(255),
	ativo BOOLEAN DEFAULT TRUE,
	PRIMARY KEY(atividade_id)
);

CREATE TABLE IF NOT EXISTS dim_dev (
	dev_id BIGINT GENERATED ALWAYS AS IDENTITY,
	dev_nome VARCHAR(255),
	dev_custo_hora NUMERIC(10,2),
	PRIMARY KEY (dev_id)
);

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
	projeto_nome VARCHAR(255),
	projeto_key VARCHAR(255),
	projeto_jira_id VARCHAR (255),
	PRIMARY KEY (projeto_id),
	UNIQUE (projeto_key)
);

CREATE TABLE IF NOT EXISTS dim_status (
	status_id BIGINT GENERATED ALWAYS AS IDENTITY,
	status_nome VARCHAR(255),
	status_jira_id VARCHAR(255),
	PRIMARY KEY (status_id)
);

CREATE TABLE IF NOT EXISTS dim_tipo (
	tipo_id BIGINT GENERATED ALWAYS AS IDENTITY,
	tipo_nome VARCHAR(255),
	tipo_descricao VARCHAR(255),
	tipo_jira_id VARCHAR(255),
	PRIMARY KEY (tipo_id)
);

CREATE TABLE IF NOT EXISTS fato_atividade (
	fato_atividade_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	projeto_id BIGINT NOT NULL,
	periodo_id BIGINT NOT NULL,
	status_id BIGINT NOT NULL,
	tipo_id BIGINT NOT NULL,
	atividade_quantidade NUMERIC(10,2) NOT NULL,
	
	CONSTRAINT uq_atividade_gran UNIQUE (projeto_id, periodo_id, status_id, tipo_id),
	CONSTRAINT fk_fato_atividade_dim_projeto FOREIGN KEY (projeto_id) REFERENCES dim_projeto (projeto_id) ON DELETE RESTRICT,
	CONSTRAINT fk_fato_atividade_dim_periodo FOREIGN KEY (periodo_id) REFERENCES dim_periodo (periodo_id) ON DELETE RESTRICT,
	CONSTRAINT fk_fato_atividade_dim_status FOREIGN KEY (status_id) REFERENCES dim_status (status_id) ON DELETE RESTRICT,
	CONSTRAINT fk_fato_atividade_dim_tipo FOREIGN KEY (tipo_id) REFERENCES dim_tipo (tipo_id) ON DELETE RESTRICT
);

CREATE INDEX idx_fato_atividade_proj_periodo ON fato_atividade (projeto_id, periodo_id);

CREATE TABLE IF NOT EXISTS fato_custo_hora (
	custo_hora_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	projeto_id BIGINT NOT NULL,
	periodo_id BIGINT NOT NULL,
	dev_id BIGINT NOT NULL,
	custo NUMERIC(10,2) NOT NULL,
	horas_quantidade NUMERIC(10,2) NOT NULL,

	CONSTRAINT uq_custo_hora_gran UNIQUE (projeto_id, periodo_id, dev_id),
	CONSTRAINT fk_fato_custo_hora_dim_projeto FOREIGN KEY (projeto_id) REFERENCES dim_projeto (projeto_id) ON DELETE RESTRICT,
	CONSTRAINT fk_fato_custo_hora_dim_periodo FOREIGN KEY (periodo_id) REFERENCES dim_periodo (periodo_id) ON DELETE RESTRICT,
	CONSTRAINT fk_fato_custo_hora_dim_dev FOREIGN KEY (dev_id) REFERENCES dim_dev (dev_id) ON DELETE RESTRICT
);

CREATE INDEX idx_fato_custo_hora_dev_periodo ON fato_custo_hora (dev_id, periodo_id);


CREATE TABLE fato_apontamento_horas (
    apontamento_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    periodo_id BIGINT NOT NULL,
    data_atualizacao TIMESTAMP(6) WITHOUT TIME ZONE,
    data_criacao TIMESTAMP WITHOUT TIME ZONE,
    descricao_trabalho TEXT,
    horas_trabalhadas DOUBLE PRECISION,
    atividade_id BIGINT NOT NULL,
    dev_id BIGINT NOT NULL,
    projeto_id BIGINT NOT NULL,
    tipo_id BIGINT NOT NULL,
    CONSTRAINT fk_fato_apontamento_horas_periodo FOREIGN KEY (periodo_id) REFERENCES dim_periodo (periodo_id) ON DELETE RESTRICT,
    CONSTRAINT fk_fato_apontamento_horas_atividade FOREIGN KEY (atividade_id) REFERENCES dim_atividade (atividade_id) ON DELETE RESTRICT,
    CONSTRAINT fk_fato_apontamento_horas_dev FOREIGN KEY (dev_id) REFERENCES dim_dev (dev_id) ON DELETE RESTRICT,
    CONSTRAINT fk_fato_apontamento_horas_projeto FOREIGN KEY (projeto_id) REFERENCES dim_projeto (projeto_id) ON DELETE RESTRICT,
    CONSTRAINT fk_fato_apontamento_horas_tipo FOREIGN KEY (tipo_id) REFERENCES dim_tipo (tipo_id) ON DELETE RESTRICT
);

CREATE INDEX idx_apontamento_dev_periodo ON fato_apontamento_horas (dev_id, periodo_id);
CREATE INDEX idx_apontamento_projeto_periodo ON fato_apontamento_horas (projeto_id, periodo_id);
CREATE INDEX idx_apontamento_tipo_periodo ON fato_apontamento_horas (tipo_id, periodo_id);