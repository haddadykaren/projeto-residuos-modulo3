-- Dados de teste

INSERT INTO morador (nome, casa, email) VALUES
('Ana Silva', 'Casa 1', 'ana@email.com'),
('Bruno Santos', 'Casa 2', 'bruno@email.com'),
('Carla Oliveira', 'Casa 3', 'carla@email.com'),
('Daniel Souza', 'Casa 4', 'daniel@email.com');

INSERT INTO categoria (nome, descricao) VALUES
('Reciclável', 'Materiais que podem ser encaminhados para reciclagem'),
('Não reciclável', 'Materiais que não devem ser encaminhados para reciclagem comum');

INSERT INTO material (nome, descricao, id_categoria) VALUES
('Papelão', 'Caixas e embalagens de papelão', 1),
('Garrafa PET', 'Garrafas de plástico PET', 1),
('Vidro', 'Garrafas e recipientes de vidro', 1),
('Papel higiênico', 'Material que não deve ser reciclado', 2);

INSERT INTO registro_descarte
(id_morador, id_material, quantidade, data_descarte) VALUES
(1, 1, 5.00, '2026-09-01'),
(2, 2, 10.00, '2026-09-02'),
(3, 3, 4.00, '2026-09-03'),
(4, 1, 3.00, '2026-09-04');
