-- Consultas e manipulação de dados

-- 1. Listar moradores
SELECT * FROM morador;

-- 2. Listar categorias
SELECT * FROM categoria;

-- 3. Listar materiais
SELECT * FROM material;

-- 4. Listar registros de descarte
SELECT * FROM registro_descarte;

-- 5. Consulta relacionando as tabelas
SELECT
    m.nome AS morador,
    m.casa,
    ma.nome AS material,
    c.nome AS categoria,
    r.quantidade,
    r.data_descarte
FROM registro_descarte r
INNER JOIN morador m ON r.id_morador = m.id_morador
INNER JOIN material ma ON r.id_material = ma.id_material
INNER JOIN categoria c ON ma.id_categoria = c.id_categoria
ORDER BY r.data_descarte;

-- 6. Atualização de dado
UPDATE morador
SET email = 'ana.novo@email.com'
WHERE id_morador = 1;

-- 7. Consulta após atualização
SELECT * FROM morador WHERE id_morador = 1;

-- 8. Exclusão de um registro de teste
-- Execute somente se quiser testar o DELETE.
-- DELETE FROM registro_descarte WHERE id_registro = 4;
