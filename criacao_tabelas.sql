-- Banco de dados: Projeto Resíduos - Condomínio Residencial Glagau

DROP TABLE IF EXISTS registro_descarte;
DROP TABLE IF EXISTS material;
DROP TABLE IF EXISTS categoria;
DROP TABLE IF EXISTS morador;

CREATE TABLE morador (
    id_morador SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    casa VARCHAR(20) NOT NULL,
    email VARCHAR(100)
);

CREATE TABLE categoria (
    id_categoria SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(200)
);

CREATE TABLE material (
    id_material SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(200),
    id_categoria INTEGER NOT NULL,
    CONSTRAINT fk_material_categoria
        FOREIGN KEY (id_categoria)
        REFERENCES categoria(id_categoria)
);

CREATE TABLE registro_descarte (
    id_registro SERIAL PRIMARY KEY,
    id_morador INTEGER NOT NULL,
    id_material INTEGER NOT NULL,
    quantidade DECIMAL(10,2) NOT NULL CHECK (quantidade > 0),
    data_descarte DATE NOT NULL,
    CONSTRAINT fk_registro_morador
        FOREIGN KEY (id_morador)
        REFERENCES morador(id_morador),
    CONSTRAINT fk_registro_material
        FOREIGN KEY (id_material)
        REFERENCES material(id_material)
);
