BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Formação" (
	"curso"	TEXT,
	"identificador formação"	INTEGER NOT NULL,
	"identificador dados pessoais"	INTEGER,
	FOREIGN KEY("identificador dados pessoais") REFERENCES "Dados Pessoais"("identificador dados pessoais"),
	PRIMARY KEY("identificador formação")
);
CREATE TABLE IF NOT EXISTS "Experiência" (
	"nome da empresa"	TEXT,
	"identificador experiência"	INTEGER NOT NULL,
	"identificador dados pessoais"	INTEGER,
	FOREIGN KEY("identificador dados pessoais") REFERENCES "Dados Pessoais"("identificador dados pessoais"),
	PRIMARY KEY("identificador experiência")
);
CREATE TABLE IF NOT EXISTS "Dados Pessoais" (
	"endereço"	TEXT,
	"telefone"	TEXT,
	"email"	TEXT,
	"cargo"	TEXT,
	"identificador dados pessoais"	INTEGER NOT NULL,
	PRIMARY KEY("identificador dados pessoais")
);
CREATE TABLE IF NOT EXISTS "Habilidades" (
	"Illustrator"	TEXT,
	"Photoshop"	TEXT,
	"Corel Draw"	TEXT,
	"Dreamwaver"	TEXT,
	"HTML/CSS3"	TEXT,
	"Identificador Habilidades"	INTEGER NOT NULL,
	"identificador dados pessoais"	INTEGER,
	FOREIGN KEY("identificador dados pessoais") REFERENCES "Dados Pessoais"("identificador dados pessoais"),
	PRIMARY KEY("Identificador Habilidades")
);
CREATE TABLE IF NOT EXISTS "Personalidade" (
	"Lorem Ipsum"	TEXT,
	"Identificador Personalidade"	INTEGER NOT NULL,
	"identificador dados pessoais"	INTEGER,
	FOREIGN KEY("identificador dados pessoais") REFERENCES "Dados Pessoais"("identificador dados pessoais"),
	PRIMARY KEY("Identificador Personalidade")
);
CREATE TABLE IF NOT EXISTS "Realizações" (
	"Lorem Ipsum"	TEXT,
	"Identificador realizações"	INTEGER NOT NULL,
	"identificador dados pessoais"	INTEGER,
	FOREIGN KEY("identificador dados pessoais") REFERENCES "Dados Pessoais"("identificador dados pessoais"),
	PRIMARY KEY("Identificador realizações")
);
CREATE UNIQUE INDEX IF NOT EXISTS "pk_Formação" ON "Formação" (
	"identificador formação"
);
COMMIT;
