-- Populate Clientes table

CREATE TABLE clientes (
    id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL,
    ativo bool NOT NULL,
    input_date timestamp(6) NULL,
    update_date timestamp(6) NULL,
    email varchar(255) NOT NULL,
    bairro varchar(255) NOT NULL,
    cep varchar(10) NOT NULL,
    cidade varchar(255) NOT NULL,
    complemento varchar(255) NULL,
    latitude varchar(255) NOT NULL,
    logradouro varchar(255) NOT NULL,
    longitude varchar(255) NOT NULL,
    numero varchar(255) NULL,
    uf varchar(2) NOT NULL,
    nome varchar(30) NOT NULL,
    senha varchar(255) NOT NULL,
    telefone varchar(255) NOT NULL,
    CONSTRAINT clientes_pkey PRIMARY KEY (id),
    CONSTRAINT clientes_uf_check CHECK (((uf)::text = ANY ((ARRAY['AM'::character varying, 'AC'::character varying, 'AP'::character varying, 'PA'::character varying, 'RO'::character varying, 'RR'::character varying, 'TO'::character varying, 'BA'::character varying, 'CE'::character varying, 'MA'::character varying, 'PB'::character varying, 'PE'::character varying, 'PI'::character varying, 'RN'::character varying, 'SE'::character varying, 'AL'::character varying, 'DF'::character varying, 'GO'::character varying, 'MS'::character varying, 'MT'::character varying, 'SP'::character varying, 'RJ'::character varying, 'MG'::character varying, 'ES'::character varying, 'PR'::character varying, 'SC'::character varying, 'RS'::character varying])::text[]))),
	CONSTRAINT uk1c96wv36rk2hwui7qhjks3mvg UNIQUE (email)
);

INSERT INTO clientes (id, ativo, input_date, update_date, email, bairro, cep, cidade, complemento, latitude, logradouro, longitude, numero, uf, nome, senha, telefone)
VALUES
    (1, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'joao.silva@email.com', 'Centro', '01001-000', 'São Paulo', 'Apto 101', '-23.550520', 'Av. Paulista', '-46.633308', '123', 'SP', 'João Silva', 'senha123', '(11) 91234-5678'),
    (2, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'maria.santos@email.com', 'Jardim Paulista', '01450-000', 'São Paulo', 'Apto 202', '-23.559524', 'Rua Augusta', '-46.662669', '456', 'SP', 'Maria Santos', 'senha123', '(11) 92345-6789'),
    (3, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'pedro.lima@email.com', 'Vila Mariana', '04118-000', 'São Paulo', 'Casa 3', '-23.595118', 'Rua dos Três Irmãos', '-46.641746', '789', 'SP', 'Pedro Lima', 'senha123', '(11) 93456-7890'),
    (4, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'lucas.martins@email.com', 'Morumbi', '05660-000', 'São Paulo', 'Apto 405', '-23.608726', 'Av. Morumbi', '-46.723858', '101', 'SP', 'Lucas Martins', 'senha123', '(11) 94567-8901'),
    (5, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'ana.pereira@email.com', 'Itaim Bibi', '04535-000', 'São Paulo', 'Sala 102', '-23.580703', 'Rua Pedroso Alvarenga', '-46.682035', '102', 'SP', 'Ana Pereira', 'senha123', '(11) 95678-9012'),
    (6, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'gabriel.rodrigues@email.com', 'Pinheiros', '05422-000', 'São Paulo', 'Apto 305', '-23.555205', 'Rua dos Três Irmãos', '-46.688191', '203', 'SP', 'Gabriel Rodrigues', 'senha123', '(11) 96789-0123'),
    (7, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'felipe.costa@email.com', 'Bela Vista', '01310-000', 'São Paulo', 'Apto 107', '-23.557153', 'Av. 9 de Julho', '-46.638745', '304', 'SP', 'Felipe Costa', 'senha123', '(11) 97890-1234'),
    (8, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'luciana.rocha@email.com', 'Alto da Lapa', '05099-000', 'São Paulo', 'Casa 202', '-23.552607', 'Rua dos Três Irmãos', '-46.710928', '405', 'SP', 'Luciana Rocha', 'senha123', '(11) 98901-2345'),
    (9, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'felipe.souza@email.com', 'Barra Funda', '01152-000', 'São Paulo', 'Apto 110', '-23.527871', 'Rua Cardoso Pimentel', '-46.661823', '506', 'SP', 'Felipe Souza', 'senha123', '(11) 91012-3456'),
    (10, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'beatriz.almeida@email.com', 'Bairro da Lapa', '05064-000', 'São Paulo', 'Apto 220', '-23.552138', 'Rua Alagoas', '-46.669563', '607', 'SP', 'Beatriz Almeida', 'senha123', '(11) 92123-4567'),
    (11, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'bruna.gomes@email.com', 'Vila Progredior', '03187-000', 'São Paulo', 'Casa 303', '-23.542538', 'Rua dos Trilhos', '-46.601877', '708', 'SP', 'Bruna Gomes', 'senha123', '(11) 93234-5678'),
    (12, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'anderson.souza@email.com', 'Vila Madalena', '05458-000', 'São Paulo', 'Apto 401', '-23.550591', 'Rua dos Três Irmãos', '-46.698129', '809', 'SP', 'Anderson Souza', 'senha123', '(11) 94345-6789'),
    (13, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'claudia.silva@email.com', 'Vila Clementino', '04137-000', 'São Paulo', 'Apto 502', '-23.596349', 'Rua dos Três Irmãos', '-46.663889', '910', 'SP', 'Cláudia Silva', 'senha123', '(11) 95456-7890'),
    (14, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'gustavo.rodrigues@email.com', 'Vila Progredior', '03390-000', 'São Paulo', 'Casa 604', '-23.527378', 'Rua do Riacho', '-46.578460', '102', 'SP', 'Gustavo Rodrigues', 'senha123', '(11) 96567-8901'),
    (15, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'carla.oliveira@email.com', 'Morumbi', '05660-000', 'São Paulo', 'Apto 302', '-23.600321', 'Rua Roque Petroni Júnior', '-46.714461', '203', 'SP', 'Carla Oliveira', 'senha123', '(11) 97678-9012'),
    (16, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'joana.pinto@email.com', 'Itaim Bibi', '04534-000', 'São Paulo', 'Casa 806', '-23.573219', 'Rua Pedroso Alvarenga', '-46.676121', '304', 'SP', 'Joana Pinto', 'senha123', '(11) 98789-0123'),
    (17, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'renato.cavalcanti@email.com', 'Vila Andrade', '05724-000', 'São Paulo', 'Apto 907', '-23.634253', 'Rua Antônio de Barros', '-46.701492', '405', 'SP', 'Renato Cavalcanti', 'senha123', '(11) 99890-1234'),
    (18, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'sara.goncalves@email.com', 'Butantã', '05510-000', 'São Paulo', 'Casa 203', '-23.587671', 'Rua dos Três Irmãos', '-46.741764', '506', 'SP', 'Sara Gonçalves', 'senha123', '(11) 99901-2345'),
    (19, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'renata.oliveira@email.com', 'Vila Progredior', '03193-000', 'São Paulo', 'Apto 208', '-23.522357', 'Rua dos Trabalhadores', '-46.560523', '607', 'SP', 'Renata Oliveira', 'senha123', '(11) 91112-3456'),
    (20, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'mario.rocha@email.com', 'Lapa', '05021-000', 'São Paulo', 'Apto 109', '-23.538645', 'Rua dos Três Irmãos', '-46.710368', '708', 'SP', 'Mário Rocha', 'senha123', '(11) 92223-4567'),
    (21, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'carla.souza@email.com', 'Vila Mariana', '04110-000', 'São Paulo', 'Casa 304', '-23.585378', 'Rua dos Três Irmãos', '-46.622481', '809', 'SP', 'Carla Souza', 'senha123', '(11) 93334-5678'),
    (22, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'andre.ferrari@email.com', 'Consolação', '01311-000', 'São Paulo', 'Apto 601', '-23.561970', 'Rua da Consolação', '-46.650914', '910', 'SP', 'André Ferrari', 'senha123', '(11) 94445-6789'),
    (23, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'carlos.morais@email.com', 'Vila Progredior', '03192-000', 'São Paulo', 'Casa 101', '-23.532528', 'Rua São João', '-46.679553', '102', 'SP', 'Carlos Morais', 'senha123', '(11) 95556-7890'),
    (24, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'patricia.martins@email.com', 'Vila São José', '03392-000', 'São Paulo', 'Apto 204', '-23.556327', 'Rua Benedito Macedo', '-46.712467', '203', 'SP', 'Patrícia Martins', 'senha123', '(11) 96667-8901'),
    (25, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'beatriz.goncalves@email.com', 'Barra Funda', '01151-000', 'São Paulo', 'Apto 302', '-23.518630', 'Rua dos Três Irmãos', '-46.682019', '304', 'SP', 'Beatriz Gonçalves', 'senha123', '(11) 97778-9012'),
    (26, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'gabriela.moraes@email.com', 'Vila São Jorge', '03185-000', 'São Paulo', 'Apto 405', '-23.540417', 'Rua da Penha', '-46.635017', '405', 'SP', 'Gabriela Moraes', 'senha123', '(11) 98889-0123'),
    (27, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'marcio.rodrigues@email.com', 'Vila Madalena', '05458-000', 'São Paulo', 'Casa 507', '-23.563231', 'Rua dos Três Irmãos', '-46.681655', '506', 'SP', 'Márcio Rodrigues', 'senha123', '(11) 99990-1234'),
    (28, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'roberta.silva@email.com', 'Vila Progredior', '03187-000', 'São Paulo', 'Apto 605', '-23.541721', 'Rua São Paulo', '-46.601389', '607', 'SP', 'Roberta Silva', 'senha123', '(11) 91234-5678'),
    (29, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'rafael.mendes@email.com', 'Vila Andrade', '05724-000', 'São Paulo', 'Casa 902', '-23.531128', 'Rua Antônio Barros', '-46.688377', '101', 'SP', 'Rafael Mendes', 'senha123', '(11) 92345-6789'),
    (30, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'mariana.souza@email.com', 'Consolação', '01311-000', 'São Paulo', 'Apto 408', '-23.563010', 'Rua da Consolação', '-46.652019', '203', 'SP', 'Mariana Souza', 'senha123', '(11) 93456-7890'),
    (31, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'vinicius.lima@email.com', 'Vila Progredior', '03183-000', 'São Paulo', 'Apto 703', '-23.543581', 'Rua da Independência', '-46.688354', '304', 'SP', 'Vinícius Lima', 'senha123', '(11) 94567-8901'),
    (32, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'paula.santos@email.com', 'Vila Lapa', '05024-000', 'São Paulo', 'Casa 104', '-23.548980', 'Rua do Matadouro', '-46.711245', '405', 'SP', 'Paula Santos', 'senha123', '(11) 95678-9012'),
    (33, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'amanda.oliveira@email.com', 'Pinheiros', '05418-000', 'São Paulo', 'Apto 301', '-23.556429', 'Rua dos Três Irmãos', '-46.685361', '506', 'SP', 'Amanda Oliveira', 'senha123', '(11) 96789-0123'),
    (34, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'felipe.rodrigues@email.com', 'Vila Progredior', '03195-000', 'São Paulo', 'Casa 601', '-23.540760', 'Rua Pereira Barreto', '-46.626820', '607', 'SP', 'Felipe Rodrigues', 'senha123', '(11) 97890-1234'),
    (35, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'luana.martins@email.com', 'Vila Augusta', '03192-000', 'São Paulo', 'Apto 804', '-23.536318', 'Rua Consolação', '-46.712529', '708', 'SP', 'Luana Martins', 'senha123', '(11) 98901-2345'),
    (36, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'gabriela.rodrigues@email.com', 'Vila Clementino', '04137-000', 'São Paulo', 'Apto 103', '-23.583612', 'Rua dos Três Irmãos', '-46.636080', '809', 'SP', 'Gabriela Rodrigues', 'senha123', '(11) 91012-3456'),
    (37, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'bruna.martins@email.com', 'Lapa', '05021-000', 'São Paulo', 'Casa 205', '-23.538655', 'Rua dos Trilhos', '-46.704987', '910', 'SP', 'Bruna Martins', 'senha123', '(11) 92123-4567'),
    (38, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'tiago.silva@email.com', 'Vila São José', '03194-000', 'São Paulo', 'Apto 306', '-23.532924', 'Rua Rafael Soares', '-46.636987', '101', 'SP', 'Tiago Silva', 'senha123', '(11) 93234-5678'),
    (39, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'diana.rodrigues@email.com', 'Bela Vista', '01310-000', 'São Paulo', 'Casa 407', '-23.554323', 'Rua das Palmeiras', '-46.648265', '202', 'SP', 'Diana Rodrigues', 'senha123', '(11) 94345-6789'),
    (40, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'carolina.costa@email.com', 'Centro', '01010-000', 'São Paulo', 'Apto 501', '-23.547202', 'Rua do Riacho', '-46.630372', '303', 'SP', 'Carolina Costa', 'senha123', '(11) 95456-7890'),
    (41, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'pedro.oliveira@email.com', 'Vila Clementino', '04138-000', 'São Paulo', 'Casa 602', '-23.578103', 'Rua do Lavradio', '-46.601927', '404', 'SP', 'Pedro Oliveira', 'senha123', '(11) 96567-8901'),
    (42, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'viviane.santos@email.com', 'Vila Progredior', '03186-000', 'São Paulo', 'Apto 805', '-23.561520', 'Rua dos Três Irmãos', '-46.621795', '505', 'SP', 'Viviane Santos', 'senha123', '(11) 97678-9012'),
    (43, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'luciana.moraes@email.com', 'Vila Paulista', '03199-000', 'São Paulo', 'Casa 506', '-23.532439', 'Rua Camilo Della Vechia', '-46.707563', '606', 'SP', 'Luciana Moraes', 'senha123', '(11) 98789-0123'),
    (44, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'mateus.lima@email.com', 'Vila Progredior', '03188-000', 'São Paulo', 'Apto 608', '-23.529460', 'Rua São Paulo', '-46.606794', '707', 'SP', 'Mateus Lima', 'senha123', '(11) 99890-1234'),
    (45, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'camila.cavalcanti@email.com', 'Vila Andrade', '05724-000', 'São Paulo', 'Casa 709', '-23.547858', 'Rua Antônia de Barros', '-46.681364', '808', 'SP', 'Camila Cavalcanti', 'senha123', '(11) 99901-2345'),
    (46, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'victor.souza@email.com', 'Vila Matilde', '03408-000', 'São Paulo', 'Apto 907', '-23.557198', 'Rua do Vento', '-46.735465', '909', 'SP', 'Victor Souza', 'senha123', '(11) 91112-3456'),
    (47, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'marcos.rodrigues@email.com', 'Vila São João', '03253-000', 'São Paulo', 'Casa 708', '-23.558102', 'Rua João Evangelista', '-46.688142', '100', 'SP', 'Marcos Rodrigues', 'senha123', '(11) 92223-4567'),
    (48, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'larissa.mendes@email.com', 'Vila São Bento', '04130-000', 'São Paulo', 'Apto 810', '-23.547391', 'Rua da Esperança', '-46.643578', '101', 'SP', 'Larissa Mendes', 'senha123', '(11) 93334-5678'),
    (49, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'bruna.almeida@email.com', 'Vila Progredior', '03197-000', 'São Paulo', 'Apto 502', '-23.562387', 'Rua Pedro de Toledo', '-46.636472', '202', 'SP', 'Bruna Almeida', 'senha123', '(11) 94445-6789'),
    (50, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'jose.lima@email.com', 'Vila Brasileira', '03309-000', 'São Paulo', 'Casa 303', '-23.574316', 'Rua Xavantes', '-46.722404', '303', 'SP', 'José Lima', 'senha123', '(11) 95556-7890'),
    (51, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'maria.souza@email.com', 'Vila São José', '03196-000', 'São Paulo', 'Apto 304', '-23.547897', 'Rua das Américas', '-46.620123', '404', 'SP', 'Maria Souza', 'senha123', '(11) 96667-8901'),
    (52, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'daniela.costa@email.com', 'Jardim Paulista', '04039-000', 'São Paulo', 'Casa 405', '-23.590827', 'Avenida Paulista', '-46.649922', '505', 'SP', 'Daniela Costa', 'senha123', '(11) 97778-9012'),
    (53, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'lucas.martins@email.com', 'Vila Americana', '03445-000', 'São Paulo', 'Apto 506', '-23.553137', 'Rua das Pitanga', '-46.692738', '606', 'SP', 'Lucas Martins', 'senha123', '(11) 98889-0123'),
    (54, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'fernanda.oliveira@email.com', 'Jardim Santo Amaro', '04723-000', 'São Paulo', 'Casa 707', '-23.559838', 'Rua da Independência', '-46.708114', '707', 'SP', 'Fernanda Oliveira', 'senha123', '(11) 99990-1234'),
    (55, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'fabio.rodrigues@email.com', 'Bela Vista', '01307-000', 'São Paulo', 'Apto 808', '-23.543901', 'Rua da Paz', '-46.614021', '808', 'SP', 'Fábio Rodrigues', 'senha123', '(11) 91001-2345'),
    (56, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'julia.santos@email.com', 'Vila Líder', '03553-000', 'São Paulo', 'Casa 909', '-23.572610', 'Rua Jalisco', '-46.742156', '909', 'SP', 'Júlia Santos', 'senha123', '(11) 92112-3456'),
    (57, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'paulo.souza@email.com', 'Vila Progredior', '03189-000', 'São Paulo', 'Apto 101', '-23.555488', 'Rua São Caetano', '-46.632434', '101', 'SP', 'Paulo Souza', 'senha123', '(11) 93223-4567'),
    (58, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'laura.costa@email.com', 'Vila Alzira', '05530-000', 'São Paulo', 'Casa 202', '-23.580293', 'Rua Prof. Souza Lima', '-46.653174', '202', 'SP', 'Laura Costa', 'senha123', '(11) 94334-5678'),
    (59, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'renato.santos@email.com', 'Vila Progredior', '03193-000', 'São Paulo', 'Casa 303', '-23.533883', 'Rua São João', '-46.664574', '303', 'SP', 'Renato Santos', 'senha123', '(11) 95445-6789'),
    (60, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'carlos.oliveira@email.com', 'Vila São José', '03191-000', 'São Paulo', 'Apto 404', '-23.540267', 'Rua São Carlos', '-46.679983', '404', 'SP', 'Carlos Oliveira', 'senha123', '(11) 96556-7890'),
    (61, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'adriana.moraes@email.com', 'Vila João XXIII', '04046-000', 'São Paulo', 'Casa 505', '-23.537159', 'Rua Laura', '-46.720457', '505', 'SP', 'Adriana Moraes', 'senha123', '(11) 97667-8901'),
    (62, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'gustavo.silva@email.com', 'Vila Progredior', '03190-000', 'São Paulo', 'Apto 606', '-23.541719', 'Rua Ceará', '-46.674205', '606', 'SP', 'Gustavo Silva', 'senha123', '(11) 98778-9012'),
    (63, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'michele.mendes@email.com', 'Vila Popular', '03310-000', 'São Paulo', 'Casa 707', '-23.556448', 'Rua da Lapa', '-46.655689', '707', 'SP', 'Michele Mendes', 'senha123', '(11) 99889-0123'),
    (64, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'mario.santos@email.com', 'Vila Cruzeiro', '03319-000', 'São Paulo', 'Apto 808', '-23.559835', 'Rua do Espirito Santo', '-46.721986', '808', 'SP', 'Mário Santos', 'senha123', '(11) 99990-1234'),
    (65, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'carol.rodrigues@email.com', 'Vila Aliança', '03256-000', 'São Paulo', 'Casa 909', '-23.571002', 'Rua Álvaro Ramos', '-46.655137', '909', 'SP', 'Carol Rodrigues', 'senha123', '(11) 91001-2345'),
    (66, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'andre.souza@email.com', 'Vila São Bento', '03193-000', 'São Paulo', 'Apto 101', '-23.535730', 'Rua Santa Bárbara', '-46.634678', '101', 'SP', 'André Souza', 'senha123', '(11) 92112-3456'),
    (67, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'eliane.cavalcanti@email.com', 'Jardim Gilda', '03196-000', 'São Paulo', 'Casa 202', '-23.546737', 'Rua Floresta', '-46.667289', '202', 'SP', 'Eliane Cavalcanti', 'senha123', '(11) 93223-4567'),
    (68, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'felipe.martins@email.com', 'Vila Santos', '04019-000', 'São Paulo', 'Apto 303', '-23.530121', 'Rua Tiradentes', '-46.644030', '303', 'SP', 'Felipe Martins', 'senha123', '(11) 94334-5678'),
    (69, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'patricia.souza@email.com', 'Vila Esmeralda', '03320-000', 'São Paulo', 'Casa 404', '-23.559823', 'Rua do Império', '-46.693216', '404', 'SP', 'Patrícia Souza', 'senha123', '(11) 95445-6789'),
    (70, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'luan.rodrigues@email.com', 'Vila Maria', '04239-000', 'São Paulo', 'Apto 505', '-23.547982', 'Rua da República', '-46.655679', '505', 'SP', 'Luan Rodrigues', 'senha123', '(11) 96556-7890'),
    (71, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'amanda.lima@email.com', 'Vila São Paulo', '03144-000', 'São Paulo', 'Casa 606', '-23.543004', 'Rua dos Pescadores', '-46.678901', '606', 'SP', 'Amanda Lima', 'senha123', '(11) 97667-8901'),
    (72, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'lucas.martins@email.com', 'Vila do Bosque', '04111-000', 'São Paulo', 'Apto 707', '-23.535444', 'Rua das Flores', '-46.699432', '707', 'SP', 'Lucas Martins', 'senha123', '(11) 98778-9012'),
    (73, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'tatiane.costa@email.com', 'Vila São José', '03345-000', 'São Paulo', 'Casa 808', '-23.556877', 'Rua João XXIII', '-46.711098', '808', 'SP', 'Tatiane Costa', 'senha123', '(11) 99889-0123'),
    (74, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'bruna.oliveira@email.com', 'Vila Esperança', '03275-000', 'São Paulo', 'Apto 909', '-23.543556', 'Rua Paulista', '-46.734671', '909', 'SP', 'Bruna Oliveira', 'senha123', '(11) 99990-1234'),
    (75, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'renan.martins@email.com', 'Vila Nova', '04047-000', 'São Paulo', 'Casa 1010', '-23.562108', 'Rua do Sol', '-46.717392', '1010', 'SP', 'Renan Martins', 'senha123', '(11) 91001-2345'),
    (76, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'marcos.silva@email.com', 'Vila Bandeirantes', '03221-000', 'São Paulo', 'Apto 1111', '-23.540930', 'Rua Dom Pedro II', '-46.722555', '1111', 'SP', 'Marcos Silva', 'senha123', '(11) 92112-3456'),
    (77, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'elaine.rodrigues@email.com', 'Vila Caxias', '03312-000', 'São Paulo', 'Casa 1212', '-23.555664', 'Rua Tietê', '-46.631899', '1212', 'SP', 'Elaine Rodrigues', 'senha123', '(11) 93223-4567'),
    (78, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'fernando.souza@email.com', 'Vila São Sebastião', '03184-000', 'São Paulo', 'Apto 1313', '-23.573265', 'Rua São Jorge', '-46.643002', '1313', 'SP', 'Fernando Souza', 'senha123', '(11) 94334-5678'),
    (79, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'carla.silva@email.com', 'Vila Brasil', '04120-000', 'São Paulo', 'Casa 1414', '-23.545938', 'Rua dos Bandeirantes', '-46.713946', '1414', 'SP', 'Carla Silva', 'senha123', '(11) 95445-6789'),
    (80, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'david.rodrigues@email.com', 'Vila Nova Aliança', '03260-000', 'São Paulo', 'Apto 1515', '-23.557344', 'Rua Rio Branco', '-46.729450', '1515', 'SP', 'David Rodrigues', 'senha123', '(11) 96556-7890'),
    (81, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'carolina.martins@email.com', 'Vila Santo Amaro', '03356-000', 'São Paulo', 'Casa 1616', '-23.574657', 'Rua São Vicente', '-46.658022', '1616', 'SP', 'Carolina Martins', 'senha123', '(11) 97667-8901'),
    (82, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'andrea.souza@email.com', 'Vila Boa Vista', '04044-000', 'São Paulo', 'Apto 1717', '-23.541230', 'Rua da Paz', '-46.681925', '1717', 'SP', 'Andrea Souza', 'senha123', '(11) 98778-9012'),
    (83, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'josefa.rodrigues@email.com', 'Vila João Gonçalves', '03324-000', 'São Paulo', 'Casa 1818', '-23.555209', 'Rua da Liberdade', '-46.699153', '1818', 'SP', 'Joséfa Rodrigues', 'senha123', '(11) 99889-0123'),
    (84, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'raquel.silva@email.com', 'Vila Progresso', '03177-000', 'São Paulo', 'Apto 1919', '-23.538053', 'Rua Maranhão', '-46.680766', '1919', 'SP', 'Raquel Silva', 'senha123', '(11) 99990-1234'),
    (85, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'vitoria.martins@email.com', 'Vila Esperança', '03172-000', 'São Paulo', 'Casa 2020', '-23.573022', 'Rua dos Trabalhadores', '-46.658908', '2020', 'SP', 'Vitória Martins', 'senha123', '(11) 91001-2345'),
    (86, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'mariana.rodrigues@email.com', 'Vila São José', '04023-000', 'São Paulo', 'Apto 2121', '-23.556451', 'Rua Miguel Lemos', '-46.710384', '2121', 'SP', 'Mariana Rodrigues', 'senha123', '(11) 92112-3456'),
    (87, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'luana.souza@email.com', 'Vila Santa Cruz', '03185-000', 'São Paulo', 'Casa 2222', '-23.569106', 'Rua Pinheiros', '-46.643895', '2222', 'SP', 'Luana Souza', 'senha123', '(11) 93223-4567'),
    (88, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'karen.martins@email.com', 'Vila Paulista', '03192-000', 'São Paulo', 'Apto 2323', '-23.554786', 'Rua Barão de Limeira', '-46.645016', '2323', 'SP', 'Karen Martins', 'senha123', '(11) 94334-5678'),
    (89, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'alexandre.rodrigues@email.com', 'Vila Carolina', '03256-000', 'São Paulo', 'Casa 2424', '-23.540254', 'Rua dos Andrades', '-46.629547', '2424', 'SP', 'Alexandre Rodrigues', 'senha123', '(11) 95445-6789'),
    (90, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'roberto.souza@email.com', 'Vila Santa Catarina', '04028-000', 'São Paulo', 'Apto 2525', '-23.533635', 'Rua Nossa Senhora Aparecida', '-46.681973', '2525', 'SP', 'Roberto Souza', 'senha123', '(11) 96556-7890'),
    (91, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'ricardo.martins@email.com', 'Vila das Graças', '03150-000', 'São Paulo', 'Casa 2626', '-23.544563', 'Rua dos Oliveiras', '-46.683042', '2626', 'SP', 'Ricardo Martins', 'senha123', '(11) 97667-8901'),
    (92, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'sandra.souza@email.com', 'Vila Campinas', '03272-000', 'São Paulo', 'Apto 2727', '-23.531232', 'Rua do Choro', '-46.694124', '2727', 'SP', 'Sandra Souza', 'senha123', '(11) 98778-9012'),
    (93, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'tiago.rodrigues@email.com', 'Vila Real', '03160-000', 'São Paulo', 'Casa 2828', '-23.532001', 'Rua São João', '-46.682023', '2828', 'SP', 'Tiago Rodrigues', 'senha123', '(11) 99889-0123'),
    (94, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'fabiana.martins@email.com', 'Vila São Francisco', '04020-000', 'São Paulo', 'Apto 2929', '-23.531963', 'Rua Galvão Bueno', '-46.675398', '2929', 'SP', 'Fabiana Martins', 'senha123', '(11) 99990-1234'),
    (95, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'gabriela.souza@email.com', 'Vila Esperança', '03189-000', 'São Paulo', 'Casa 3030', '-23.542754', 'Rua dos Três Irmãos', '-46.664231', '3030', 'SP', 'Gabriela Souza', 'senha123', '(11) 91001-2345'),
    (96, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'andreia.rodrigues@email.com', 'Vila Paulistana', '03334-000', 'São Paulo', 'Apto 3131', '-23.523890', 'Rua do Comércio', '-46.645609', '3131', 'SP', 'Andreia Rodrigues', 'senha123', '(11) 92112-3456'),
    (97, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'vinicius.martins@email.com', 'Vila Verde', '04034-000', 'São Paulo', 'Casa 3232', '-23.544333', 'Rua Cardoso Pimentel', '-46.639033', '3232', 'SP', 'Vinicius Martins', 'senha123', '(11) 93223-4567'),
    (98, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'marta.souza@email.com', 'Vila Nossa Senhora', '03171-000', 'São Paulo', 'Apto 3333', '-23.525758', 'Rua Rio Grande', '-46.665098', '3333', 'SP', 'Marta Souza', 'senha123', '(11) 94334-5678'),
    (99, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'jose.rodrigues@email.com', 'Vila Santa Tereza', '03195-000', 'São Paulo', 'Casa 3434', '-23.553509', 'Rua Almirante Barroso', '-46.678777', '3434', 'SP', 'José Rodrigues', 'senha123', '(11) 95445-6789'),
    (100, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'larissa.martins@email.com', 'Vila Independência', '03346-000', 'São Paulo', 'Apto 3535', '-23.537017', 'Rua Amazonas', '-46.675899', '3535', 'SP', 'Larissa Martins', 'senha123', '(11) 96556-7890'),
    (101, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'mariana.souza@email.com', 'Vila União', '04031-000', 'São Paulo', 'Casa 3636', '-23.552100', 'Rua Pirituba', '-46.644689', '3636', 'SP', 'Mariana Souza', 'senha123', '(11) 97667-8901'),
    (102, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'luiz.rodrigues@email.com', 'Vila Jardim', '03367-000', 'São Paulo', 'Apto 3737', '-23.537657', 'Rua da Alegria', '-46.670564', '3737', 'SP', 'Luiz Rodrigues', 'senha123', '(11) 98778-9012'),
    (103, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'gabriela.martins@email.com', 'Vila Belenzinho', '03199-000', 'São Paulo', 'Casa 3838', '-23.533122', 'Rua Francisco Morato', '-46.631089', '3838', 'SP', 'Gabriela Martins', 'senha123', '(11) 99889-0123'),
    (104, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'daniela.souza@email.com', 'Vila Xangri-lá', '03212-000', 'São Paulo', 'Apto 3939', '-23.543823', 'Rua das Pedras', '-46.663882', '3939', 'SP', 'Daniela Souza', 'senha123', '(11) 99990-1234'),
    (105, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'juliana.rodrigues@email.com', 'Vila Jabaquara', '03182-000', 'São Paulo', 'Casa 4040', '-23.550798', 'Rua Serra do Mar', '-46.679101', '4040', 'SP', 'Juliana Rodrigues', 'senha123', '(11) 91001-2345'),
    (106, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'rafaela.martins@email.com', 'Vila Paz', '04017-000', 'São Paulo', 'Apto 4141', '-23.536608', 'Rua Rafael Pimenta', '-46.635728', '4141', 'SP', 'Rafaela Martins', 'senha123', '(11) 92112-3456'),
    (107, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'henrique.souza@email.com', 'Vila Ponte', '03214-000', 'São Paulo', 'Casa 4242', '-23.541432', 'Rua do Campo', '-46.686902', '4242', 'SP', 'Henrique Souza', 'senha123', '(11) 93223-4567'),
    (108, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'viviane.martins@email.com', 'Vila São Vicente', '03166-000', 'São Paulo', 'Apto 4343', '-23.552232', 'Rua dos Palmares', '-46.654321', '4343', 'SP', 'Viviane Martins', 'senha123', '(11) 94334-5678'),
    (109, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'roberto.rodrigues@email.com', 'Vila Sol Nascente', '03159-000', 'São Paulo', 'Casa 4444', '-23.533413', 'Rua das Flores', '-46.674321', '4444', 'SP', 'Roberto Rodrigues', 'senha123', '(11) 95445-6789'),
    (110, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'alessandra.martins@email.com', 'Vila Floresta', '04056-000', 'São Paulo', 'Apto 4545', '-23.547672', 'Rua Marília', '-46.684890', '4545', 'SP', 'Alessandra Martins', 'senha123', '(11) 96556-7890'),
    (111, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'eliana.souza@email.com', 'Vila Santo Antônio', '03190-000', 'São Paulo', 'Casa 4646', '-23.540890', 'Rua de Cima', '-46.662456', '4646', 'SP', 'Eliana Souza', 'senha123', '(11) 97667-8901'),
    (112, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'felipe.rodrigues@email.com', 'Vila São Gabriel', '03194-000', 'São Paulo', 'Apto 4747', '-23.538500', 'Rua São Caetano', '-46.670377', '4747', 'SP', 'Felipe Rodrigues', 'senha123', '(11) 98778-9012'),
    (113, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'natalia.martins@email.com', 'Vila Morumbi', '03222-000', 'São Paulo', 'Casa 4848', '-23.531021', 'Rua da Paz', '-46.656743', '4848', 'SP', 'Natália Martins', 'senha123', '(11) 99889-0123'),
    (114, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'daniel.souza@email.com', 'Vila Bela Vista', '03180-000', 'São Paulo', 'Apto 4949', '-23.525782', 'Rua Carmo do Rio Verde', '-46.680120', '4949', 'SP', 'Daniel Souza', 'senha123', '(11) 99990-1234'),
    (115, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'andre.martins@email.com', 'Vila Jardim das Pedras', '04020-000', 'São Paulo', 'Casa 5050', '-23.541200', 'Rua Alfredo Pujol', '-46.664098', '5050', 'SP', 'André Martins', 'senha123', '(11) 91001-2345'),
    (116, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'renata.souza@email.com', 'Vila Santa Maria', '03256-000', 'São Paulo', 'Apto 5151', '-23.536048', 'Rua Santos Dumont', '-46.636540', '5151', 'SP', 'Renata Souza', 'senha123', '(11) 92112-3456'),
    (117, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'marcos.rodrigues@email.com', 'Vila Da Paz', '03176-000', 'São Paulo', 'Casa 5252', '-23.542395', 'Rua da Esperança', '-46.674559', '5252', 'SP', 'Marcos Rodrigues', 'senha123', '(11) 93223-4567'),
    (118, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'simonia.martins@email.com', 'Vila Limoeiro', '03208-000', 'São Paulo', 'Apto 5353', '-23.543776', 'Rua dos Violeiros', '-46.690781', '5353', 'SP', 'Simônia Martins', 'senha123', '(11) 94334-5678'),
    (119, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'gilberto.souza@email.com', 'Vila Rio Claro', '03150-000', 'São Paulo', 'Casa 5454', '-23.533100', 'Rua Capivaras', '-46.688999', '5454', 'SP', 'Gilberto Souza', 'senha123', '(11) 95445-6789'),
    (120, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'daniel.martins@email.com', 'Vila Paraíso', '04025-000', 'São Paulo', 'Apto 5555', '-23.535682', 'Rua do Campo Belo', '-46.661944', '5555', 'SP', 'Daniel Martins', 'senha123', '(11) 96556-7890'),
    (121, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'carla.souza@email.com', 'Vila Regina', '03195-000', 'São Paulo', 'Casa 5656', '-23.541345', 'Rua Magalhães Lima', '-46.679213', '5656', 'SP', 'Carla Souza', 'senha123', '(11) 97667-8901'),
    (122, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'luana.rodrigues@email.com', 'Vila Osvaldo Cruz', '03211-000', 'São Paulo', 'Apto 5757', '-23.538329', 'Rua Evaristo da Veiga', '-46.657879', '5757', 'SP', 'Luana Rodrigues', 'senha123', '(11) 98778-9012'),
    (123, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'roberto.martins@email.com', 'Vila Boa Vista', '04035-000', 'São Paulo', 'Casa 5858', '-23.539212', 'Rua do Paraíso', '-46.672468', '5858', 'SP', 'Roberto Martins', 'senha123', '(11) 99889-0123'),
    (124, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'marilia.souza@email.com', 'Vila São Luís', '03157-000', 'São Paulo', 'Apto 5959', '-23.530019', 'Rua do Sol', '-46.653420', '5959', 'SP', 'Marília Souza', 'senha123', '(11) 99990-1234'),
    (125, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'valeria.rodrigues@email.com', 'Vila Flores', '03189-000', 'São Paulo', 'Casa 6060', '-23.528651', 'Rua Ribeirão Preto', '-46.674228', '6060', 'SP', 'Valéria Rodrigues', 'senha123', '(11) 91001-2345'),
    (126, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'ana.martins@email.com', 'Vila Progresso', '04026-000', 'São Paulo', 'Apto 6161', '-23.536720', 'Rua da Independência', '-46.661095', '6161', 'SP', 'Ana Martins', 'senha123', '(11) 92112-3456'),
    (127, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'jose.souza@email.com', 'Vila Sumaré', '03170-000', 'São Paulo', 'Casa 6262', '-23.532874', 'Rua das Palmeiras', '-46.667378', '6262', 'SP', 'José Souza', 'senha123', '(11) 93223-4567'),
    (128, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'maria.rodrigues@email.com', 'Vila Santa Clara', '04018-000', 'São Paulo', 'Apto 6363', '-23.529685', 'Rua Rui Barbosa', '-46.676904', '6363', 'SP', 'Maria Rodrigues', 'senha123', '(11) 94334-5678'),
    (129, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'luiz.souza@email.com', 'Vila Brasil', '03165-000', 'São Paulo', 'Casa 6464', '-23.522309', 'Rua São João', '-46.680045', '6464', 'SP', 'Luiz Souza', 'senha123', '(11) 95445-6789'),
    (130, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'marcos.rodrigues@email.com', 'Vila do Sol', '03180-000', 'São Paulo', 'Apto 6565', '-23.540194', 'Rua das Orquídeas', '-46.674562', '6565', 'SP', 'Marcos Rodrigues', 'senha123', '(11) 96556-7890'),
    (131, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'carla.martins@email.com', 'Vila dos Lagos', '03164-000', 'São Paulo', 'Casa 6666', '-23.543210', 'Rua dos Lírios', '-46.662874', '6666', 'SP', 'Carla Martins', 'senha123', '(11) 97667-8901'),
    (132, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'bruna.rodrigues@email.com', 'Vila Vista Alegre', '04022-000', 'São Paulo', 'Apto 6767', '-23.532899', 'Rua Vitória Régia', '-46.688324', '6767', 'SP', 'Bruna Rodrigues', 'senha123', '(11) 98778-9012'),
    (133, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'vitoria.souza@email.com', 'Vila dos Ventos', '03172-000', 'São Paulo', 'Casa 6868', '-23.534214', 'Rua do Bosque', '-46.687543', '6868', 'SP', 'Vitória Souza', 'senha123', '(11) 99889-0123'),
    (134, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'fernando.rodrigues@email.com', 'Vila Itamarati', '04014-000', 'São Paulo', 'Apto 6969', '-23.535874', 'Rua das Acácias', '-46.676100', '6969', 'SP', 'Fernando Rodrigues', 'senha123', '(11) 99990-1234'),
    (135, TRUE, '2024-12-02 12:00:00', '2024-12-02 12:00:00', 'carolina.martins@email.com', 'Vila dos Anjos', '03185-000', 'São Paulo', 'Casa 7070', '-23.533698', 'Rua dos Pássaros', '-46.663456', '7070', 'SP', 'Carolina Martins', 'senha123', '(11) 91001-2345');

