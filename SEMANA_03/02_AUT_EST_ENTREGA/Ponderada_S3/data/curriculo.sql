BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Formacao" (
	"curso"	TEXT,
	"identificador_formacao"	INTEGER NOT NULL,
	"identificador_dados_pessoais"	INTEGER,
	PRIMARY KEY("identificador_formacao"),
	FOREIGN KEY("identificador_dados_pessoais") REFERENCES "Dados_Pessoais"("identificador_dados_pessoais")
);
CREATE TABLE IF NOT EXISTS "Experiencia" (
	"nome_da_empresa"	TEXT,
	"identificador_experiencia"	INTEGER NOT NULL,
	"identificador_dados_pessoais"	INTEGER,
	PRIMARY KEY("identificador_experiencia"),
	FOREIGN KEY("identificador_dados_pessoais") REFERENCES "Dados_Pessoais"("identificador_dados_pessoais")
);
CREATE TABLE IF NOT EXISTS "Dados_Pessoais" (
	"endereco"	TEXT,
	"telefone"	TEXT,
	"email"	TEXT,
	"Lorem_Ipsum"	TEXT,
	"identificador_dados_pessoais"	INTEGER NOT NULL,
	PRIMARY KEY("identificador_dados_pessoais")
);
CREATE TABLE IF NOT EXISTS "Habilidades" (
	"tipo_de_habilidade"	TEXT,
	"ferramenta_da_habilidade"	TEXT,
	"Identificador Habilidades"	INTEGER NOT NULL,
	"identificador_dados_pessoais"	INTEGER,
	PRIMARY KEY("Identificador Habilidades"),
	FOREIGN KEY("identificador_dados_pessoais") REFERENCES "Dados_Pessoais"("identificador_dados_pessoais")
);
CREATE TABLE IF NOT EXISTS "Personalidade" (
	"Lorem_Ipsum"	TEXT,
	"Identificador_Personalidade"	INTEGER NOT NULL,
	"identificador_dados_pessoais"	INTEGER,
	PRIMARY KEY("Identificador_Personalidade"),
	FOREIGN KEY("identificador_dados_pessoais") REFERENCES "Dados_Pessoais"("identificador_dados_pessoais")
);
CREATE TABLE IF NOT EXISTS "Realizacoes" (
	"Lorem_Ipsum"	TEXT,
	"Identificado_realizações"	INTEGER NOT NULL,
	"identificador_dados_pessoais"	INTEGER,
	PRIMARY KEY("Identificado_realizações"),
	FOREIGN KEY("identificador_dados_pessoais") REFERENCES "Dados_Pessoais"("identificador_dados_pessoais")
);
CREATE UNIQUE INDEX IF NOT EXISTS "pk_Formação" ON "Formacao" (
	"identificador_formação"
);
COMMIT;
