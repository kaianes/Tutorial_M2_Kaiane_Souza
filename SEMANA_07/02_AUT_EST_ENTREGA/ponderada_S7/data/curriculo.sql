BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Dados_Pessoais" (
	"aniversario"	INTEGER NOT NULL,
	"nacionalidade"	TEXT NOT NULL,
	"cor_favorita"	TEXT NOT NULL,
	"id_dados_pessoais"	INTEGER NOT NULL,
	"id_pessoa"	INTEGER,
	PRIMARY KEY("id_dados_pessoais"),
	FOREIGN KEY("id_pessoa") REFERENCES "Pessoa"("id_pessoa"),
	CONSTRAINT "unq_Dados_Pessoais_aniversario" UNIQUE("aniversario"),
	CONSTRAINT "unq_Dados_Pessoais_nacionalidade" UNIQUE("nacionalidade"),
	CONSTRAINT "unq_Dados_Pessoais_id" UNIQUE("id_dados_pessoais"),
	CONSTRAINT "unq_Dados_Pessoais_cor_favorita" UNIQUE("cor_favorita")
);
CREATE TABLE IF NOT EXISTS "Personalidade" (
	"gostos"	TEXT NOT NULL,
	"desgostos"	TEXT NOT NULL,
	"id_personalidade"	INTEGER NOT NULL,
	"id_pessoa"	INTEGER,
	PRIMARY KEY("id_personalidade"),
	FOREIGN KEY("id_pessoa") REFERENCES "Pessoa"("id_pessoa"),
	CONSTRAINT "unq_Personalidade_gostos" UNIQUE("gostos"),
	CONSTRAINT "unq_Personalidade_desgostos" UNIQUE("desgostos"),
	CONSTRAINT "unq_Personalidade_id" UNIQUE("id_personalidade")
);
CREATE TABLE IF NOT EXISTS "Realizacoes" (
	"ensino_medio"	TEXT NOT NULL,
	"modulo1"	TEXT NOT NULL,
	"modulo2"	TEXT NOT NULL,
	"id_realizacoes"	INTEGER NOT NULL,
	"id_pessoa"	INTEGER,
	PRIMARY KEY("id_realizacoes"),
	FOREIGN KEY("id_pessoa") REFERENCES "Pessoa"("id_pessoa"),
	CONSTRAINT "unq_Realizacoes_modulo1" UNIQUE("modulo1"),
	CONSTRAINT "unq_Realizacoes_modulo2" UNIQUE("modulo2"),
	CONSTRAINT "unq_Realizacoes_id" UNIQUE("id_realizacoes"),
	CONSTRAINT "unq_Realizacoes_ensino_medio" UNIQUE("ensino_medio")
);
CREATE TABLE IF NOT EXISTS "Formacao" (
	"curso"	TEXT NOT NULL,
	"periodo"	TEXT NOT NULL,
	"alma_mater"	TEXT NOT NULL,
	"id_formacao"	INTEGER NOT NULL,
	"id_pessoa"	INTEGER,""
	PRIMARY KEY("id_formacao"),
	FOREIGN KEY("id_pessoa") REFERENCES "Pessoa"("id_pessoa"),
	CONSTRAINT "unq_Formacao_curso" UNIQUE("curso"),
	CONSTRAINT "unq_Formacao_periodo" UNIQUE("periodo"),
	CONSTRAINT "unq_Formacao_alma_mater" UNIQUE("alma_mater"),
	CONSTRAINT "unq_Formacao_id" UNIQUE("id_formacao")
);
CREATE TABLE IF NOT EXISTS "Habilidades" (
	"esporte"	TEXT NOT NULL,
	"culinaria"	TEXT NOT NULL,
	"artes"	TEXT NOT NULL,
	"id_habilidades"	INTEGER NOT NULL,
	"id_pessoa"	INTEGER,
	PRIMARY KEY("id_habilidades"),
	FOREIGN KEY("id_pessoa") REFERENCES "Pessoa"("id_pessoa"),
	CONSTRAINT "unq_Habilidades_id" UNIQUE("id_habilidades"),
	CONSTRAINT "unq_Habilidades_culinaria" UNIQUE("culinaria"),
	CONSTRAINT "unq_Habilidades_artes" UNIQUE("artes"),
	CONSTRAINT "unq_Habilidades_esporte" UNIQUE("esporte")
);
CREATE TABLE IF NOT EXISTS "Contato" (
	"instagram"	TEXT NOT NULL,
	"linkedin"	TEXT NOT NULL,
	"email"	TEXT NOT NULL,
	"id_contato"	INTEGER NOT NULL,
	"id_pessoa"	INTEGER,
	PRIMARY KEY("id_contato"),
	FOREIGN KEY("id_pessoa") REFERENCES "Pessoa"("id_pessoa"),
	CONSTRAINT "unq_Contato_id" UNIQUE("id_contato"),
	CONSTRAINT "unq_Contato_instagram" UNIQUE("instagram"),
	CONSTRAINT "unq_Contato_email" UNIQUE("email"),
	CONSTRAINT "unq_Contato_linkedin" UNIQUE("linkedin")
);
CREATE TABLE IF NOT EXISTS "Pessoa" (
	"nome"	TEXT NOT NULL,
	"idade"	INTEGER NOT NULL,
	"id_pessoa"	INTEGER NOT NULL,
	PRIMARY KEY("id_pessoa")
);
COMMIT;
