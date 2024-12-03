-- Populate Enderecos Table

CREATE TABLE enderecos (
    id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL,
    bairro varchar(255) NOT NULL,
    cep varchar(255) NOT NULL,
    cidade varchar(255) NOT NULL,
    complemento varchar(255) NOT NULL,
    latitude varchar(255) NOT NULL,
    logradouro varchar(255) NOT NULL,
    longitude varchar(255) NOT NULL,
    numero varchar(255) NULL,
    uf varchar(255) NOT NULL,
    CONSTRAINT enderecos_pkey PRIMARY KEY (id),
    CONSTRAINT enderecos_uf_check CHECK (((uf)::text = ANY ((ARRAY['AM'::character varying, 'AC'::character varying, 'AP'::character varying, 'PA'::character varying, 'RO'::character varying, 'RR'::character varying, 'TO'::character varying, 'BA'::character varying, 'CE'::character varying, 'MA'::character varying, 'PB'::character varying, 'PE'::character varying, 'PI'::character varying, 'RN'::character varying, 'SE'::character varying, 'AL'::character varying, 'DF'::character varying, 'GO'::character varying, 'MS'::character varying, 'MT'::character varying, 'SP'::character varying, 'RJ'::character varying, 'MG'::character varying, 'ES'::character varying, 'PR'::character varying, 'SC'::character varying, 'RS'::character varying])::text[])))
);

INSERT INTO enderecos (logradouro, numero, complemento, bairro, cidade, uf, cep, latitude, longitude)
VALUES
    ('Av. Eduardo Ribeiro', '520', 'Apto 101', 'Centro', 'Manaus', 'AM', '69010-902', '-3.131556', '-60.023516'),
    ('Rua Pará', '190', 'Bloco B', 'Nossa Sra. das Graças', 'Manaus', 'AM', '69053-230', '-3.103834', '-60.016972'),
    ('Av. Djalma Batista', '1300', 'Sala 305', 'Chapada', 'Manaus', 'AM', '69050-010', '-3.091308', '-60.020619'),
    ('Rua Recife', '47', 'Casa 2', 'Adrianópolis', 'Manaus', 'AM', '69057-100', '-3.107345', '-60.021231'),
    ('Av. Constantino Nery', '500', '1', 'Centro', 'Manaus', 'AM', '69025-020', '-3.118785', '-60.026793'),
    ('Rua Benjamin Constant', '400', 'Casa 1', 'Centro', 'Rio Branco', 'AC', '69900-002', '-9.971514', '-67.814891'),
    ('Av. Ceará', '1200', 'Apto 202', 'Bosque', 'Rio Branco', 'AC', '69900-020', '-9.965685', '-67.818473'),
    ('Rua Isaura Parente', '800', 'Loja 3', 'Bosque', 'Rio Branco', 'AC', '69900-080', '-9.968756', '-67.815681'),
    ('Av. Antônio da Rocha Viana', '750', '1', 'Vila Ivonete', 'Rio Branco', 'AC', '69900-040', '-9.963345', '-67.822748'),
    ('Rua Marechal Deodoro', '900', 'Apto 2', 'Centro', 'Rio Branco', 'AC', '69900-030', '-9.970231', '-67.816239'),
    ('Av. FAB', '500', '1', 'Centro', 'Macapá', 'AP', '68900-073', '0.037895', '-51.067289'),
    ('Rua São José', '320', 'Bloco C', 'Laguinho', 'Macapá', 'AP', '68900-015', '0.042839', '-51.069129'),
    ('Av. Almirante Barroso', '150', 'Apto 301', 'Santa Rita', 'Macapá', 'AP', '68900-042', '0.037025', '-51.070553'),
    ('Rua Hamilton Silva', '230', 'Casa 1', 'Trem', 'Macapá', 'AP', '68900-102', '0.036973', '-51.072489'),
    ('Av. Mendonça Furtado', '620', 'Loja 5', 'Jesus de Nazaré', 'Macapá', 'AP', '68900-083', '0.040732', '-51.074661'),
    ('Av. Presidente Vargas', '620', 'Apto 3', 'Campina', 'Belém', 'PA', '66017-000', '-1.455833', '-48.503887'),
    ('Av. Nazaré', '150', 'Casa 10', 'Nazaré', 'Belém', 'PA', '66040-143', '-1.456216', '-48.489532'),
    ('Tv. Padre Eutíquio', '345', 'Sala 201', 'Campina', 'Belém', 'PA', '66010-160', '-1.457438', '-48.491320'),
    ('Rua Gama Abreu', '87', 'Casa 2', 'Cidade Velha', 'Belém', 'PA', '66020-555', '-1.456772', '-48.503244'),
    ('Av. Governador José Malcher', '320', 'Bloco A', 'Nazaré', 'Belém', 'PA', '66055-260', '-1.450924', '-48.490042'),
    ('Rua Duque de Caxias', '340', 'Apto 202', 'Caiari', 'Porto Velho', 'RO', '76801-080', '-8.760777', '-63.903766'),
    ('Av. Sete de Setembro', '700', 'Loja 1', 'Centro', 'Porto Velho', 'RO', '76801-131', '-8.761893', '-63.902891'),
    ('Rua Joaquim Nabuco', '430', 'Casa 10', 'Arigolândia', 'Porto Velho', 'RO', '76801-201', '-8.759229', '-63.905681'),
    ('Av. Carlos Gomes', '120', 'Casa 10', 'Caiari', 'Porto Velho', 'RO', '76801-321', '-8.761114', '-63.904512'),
    ('Rua José de Alencar', '540', 'Apto 102', 'Baixa União', 'Porto Velho', 'RO', '76801-400', '-8.762915', '-63.903121'),
    ('Av. Capitão Ene Garcez', '1000', 'Casa 10', 'Centro', 'Boa Vista', 'RR', '69301-000', '2.823509', '-60.675833'),
    ('Rua Cecília Brasil', '250', 'Loja 3', 'Centro', 'Boa Vista', 'RR', '69301-120', '2.820492', '-60.672125'),
    ('Av. Ville Roy', '580', 'Bloco B', 'Caçari', 'Boa Vista', 'RR', '69301-140', '2.825789', '-60.673456'),
    ('Rua Ajuricaba', '370', 'Casa 4', 'Liberdade', 'Boa Vista', 'RR', '69301-300', '2.822345', '-60.677890'),
    ('Av. Mário Homem de Melo', '720', 'Apto 2', 'Tancredo Neves', 'Boa Vista', 'RR', '69301-450', '2.819456', '-60.674567'),
    ('Av. Teotônio Segurado', '1500', 'Bloco A', 'Plano Diretor Sul', 'Palmas', 'TO', '77015-000', '-10.239441', '-48.324309'),
    ('Rua LO-27', '100', 'Apto 101', 'Plano Diretor Norte', 'Palmas', 'TO', '77006-054', '-10.210972', '-48.331520'),
    ('Av. NS-10', '200', 'Casa 10', 'Plano Diretor Norte', 'Palmas', 'TO', '77001-020', '-10.185967', '-48.322111'),
    ('Rua SE-1', '75', 'Casa 10', 'Jardim Aureny I', 'Palmas', 'TO', '77024-300', '-10.241789', '-48.329345'),
    ('Rua NE-5', '550', 'Casa 2', 'Taquaralto', 'Palmas', 'TO', '77062-105', '-10.283456', '-48.356890'),
    ('Av. Sete de Setembro', '140', 'Sala 1', 'Centro', 'Salvador', 'BA', '40060-001', '-12.971431', '-38.501681'),
    ('Rua Carlos Gomes', '110', 'Loja 2', 'Centro', 'Salvador', 'BA', '40060-002', '-12.972345', '-38.508231'),
    ('Av. Tancredo Neves', '1800', 'Casa 10', 'Caminho das Árvores', 'Salvador', 'BA', '41820-020', '-12.983114', '-38.465791'),
    ('Rua Direita de Santo Antônio', '95', 'Apto 3', 'Santo Antônio', 'Salvador', 'BA', '40301-280', '-12.957893', '-38.507891'),
    ('Praça da Sé', '200', 'Casa 10', 'Pelourinho', 'Salvador', 'BA', '40020-010', '-12.970928', '-38.510948'),
    ('Av. Beira Mar', '3000', 'Apto 101', 'Meireles', 'Fortaleza', 'CE', '60165-120', '-3.723660', '-38.500558'),
    ('Rua Barão do Rio Branco', '140', 'Bloco C', 'Centro', 'Fortaleza', 'CE', '60025-060', '-3.728256', '-38.530018'),
    ('Av. Santos Dumont', '2000', 'Casa 10', 'Aldeota', 'Fortaleza', 'CE', '60150-161', '-3.731950', '-38.491657'),
    ('Rua João Cordeiro', '350', 'Casa 1', 'Praia de Iracema', 'Fortaleza', 'CE', '60060-120', '-3.726450', '-38.515024'),
    ('Av. Dom Luís', '100', 'Apto 202', 'Meireles', 'Fortaleza', 'CE', '60160-196', '-3.733215', '-38.497821'),
    ('Av. Pedro II', '85', 'Casa 10', 'Centro', 'São Luís', 'MA', '65010-450', '-2.529772', '-44.304457'),
    ('Rua Rio Branco', '210', 'Loja 3', 'Centro', 'São Luís', 'MA', '65010-770', '-2.528456', '-44.303219'),
    ('Av. dos Holandeses', '5000', 'Casa 10', 'Calhau', 'São Luís', 'MA', '65071-380', '-2.488764', '-44.239990'),
    ('Rua Grande', '350', 'Casa 10', 'Centro', 'São Luís', 'MA', '65020-240', '-2.531456', '-44.305678'),
    ('Praça Benedito Leite', '10', 'Bloco A', 'Centro', 'São Luís', 'MA', '65010-410', '-2.529219', '-44.302781'),
    ('Av. Epitácio Pessoa', '1500', 'Bloco A', 'Tambauzinho', 'João Pessoa', 'PB', '58040-000', '-7.118858', '-34.836093'),
    ('Rua das Trincheiras', '120', 'Casa 10', 'Centro', 'João Pessoa', 'PB', '58013-390', '-7.120012', '-34.881633'),
    ('Av. Presidente Nilo Peçanha', '300', 'Loja 2', 'Cabo Branco', 'João Pessoa', 'PB', '58045-010', '-7.115273', '-34.829183'),
    ('Rua Duque de Caxias', '200', 'Casa 10', 'Varadouro', 'João Pessoa', 'PB', '58010-820', '-7.115832', '-34.879297'),
    ('Praça João Pessoa', '1', 'Casa 10', 'Centro', 'João Pessoa', 'PB', '58013-280', '-7.121840', '-34.882098'),
    ('Av. Conde da Boa Vista', '500', 'Casa 10', 'Boa Vista', 'Recife', 'PE', '50060-002', '-8.062236', '-34.879973'),
    ('Rua do Hospício', '250', 'Bloco B', 'Boa Vista', 'Recife', 'PE', '50050-290', '-8.061291', '-34.881041'),
    ('Rua da Aurora', '80', 'Apto 4', 'Boa Vista', 'Recife', 'PE', '50050-000', '-8.061886', '-34.880798'),
    ('Rua do Imperador', '160', 'Casa 10', 'Santo Antônio', 'Recife', 'PE', '50010-240', '-8.060000', '-34.881900'),
    ('Praça do Arsenal', '10', 'Casa 10', 'Santo Amaro', 'Recife', 'PE', '50030-350', '-8.063546', '-34.873905'),
    ('Av. Senador Salgado Filho', '2000', 'Bloco C', 'Lagoa Nova', 'Natal', 'RN', '59078-970', '-5.836417', '-35.206436'),
    ('Rua João Pessoa', '100', 'Casa 10', 'Centro', 'Natal', 'RN', '59025-520', '-5.794350', '-35.208607'),
    ('Av. Hermes da Fonseca', '800', 'Casa 10', 'Tirol', 'Natal', 'RN', '59015-000', '-5.825627', '-35.203682'),
    ('Rua Mermoz', '300', 'Apto 1', 'Ponta Negra', 'Natal', 'RN', '59090-010', '-5.872598', '-35.177908'),
    ('Praça Sete de Setembro', '1', 'Casa 10', 'Cidade Alta', 'Natal', 'RN', '59025-740', '-5.792683', '-35.209013'),
    ('Av. Álvaro Calheiros', '800', 'Bloco D', 'Mangabeiras', 'Maceió', 'AL', '57037-970', '-9.653141', '-35.717465'),
    ('Rua Barão de Anadia', '200', 'Casa 10', 'Centro', 'Maceió', 'AL', '57020-110', '-9.664194', '-35.734147'),
    ('Av. Dr. Antônio Gomes de Barros', '1500', 'Casa 10', 'Jatiúca', 'Maceió', 'AL', '57036-000', '-9.649930', '-35.715619'),
    ('Rua Feijó Júnior', '220', 'Apto 101', 'Pajuçara', 'Maceió', 'AL', '57030-000', '-9.659502', '-35.714748'),
    ('Praça Dom Pedro II', '1', 'Casa 10', 'Centro', 'Maceió', 'AL', '57020-500', '-9.665037', '-35.735501'),
    ('Av. Beira Mar', '1000', 'Casa 10', '13 de Julho', 'Aracaju', 'SE', '49020-010', '-10.944114', '-37.043400'),
    ('Rua João Pessoa', '230', 'Casa 10', 'Centro', 'Aracaju', 'SE', '49010-380', '-10.914772', '-37.048349'),
    ('Av. Hermes Fontes', '700', 'Loja 3', 'Suissa', 'Aracaju', 'SE', '49050-100', '-10.923958', '-37.040280'),
    ('Rua Itabaiana', '150', 'Bloco A', 'São José', 'Aracaju', 'SE', '49015-000', '-10.919321', '-37.056852'),
    ('Praça Fausto Cardoso', '1', 'Casa 10', 'Centro', 'Aracaju', 'SE', '49010-130', '-10.914399', '-37.043317'),
    ('Av. Historiador Rubens de Mendonça', '3200', 'Apto 2', 'Centro Norte', 'Cuiabá', 'MT', '78040-000', '-15.600407', '-56.097188'),
    ('Rua Barão de Melgaço', '750', 'Loja 2', 'Centro Sul', 'Cuiabá', 'MT', '78005-440', '-15.598951', '-56.097470'),
    ('Av. Fernando Correa da Costa', '2200', 'Casa 10', 'Pedra 90', 'Cuiabá', 'MT', '78085-630', '-15.598241', '-56.087453'),
    ('Rua Zé do Coco', '450', 'Casa 10', 'Morada do Ouro', 'Cuiabá', 'MT', '78065-500', '-15.579529', '-56.108473'),
    ('Praça 8 de Abril', '30', 'Casa 10', 'Centro', 'Cuiabá', 'MT', '78010-010', '-15.601278', '-56.097872'),
    ('Av. Afonso Pena', '1500', 'Bloco 4', 'Centro', 'Campo Grande', 'MS', '79002-010', '-20.469710', '-54.620739'),
    ('Rua 14 de Julho', '850', 'Casa 10', 'Centro', 'Campo Grande', 'MS', '79002-140', '-20.469315', '-54.616684'),
    ('Rua Joaquim Murtinho', '600', 'Casa 10', 'Centro', 'Campo Grande', 'MS', '79002-330', '-20.468455', '-54.618497'),
    ('Av. Gury Marques', '1200', 'Casa 10', 'Morada do Sol', 'Campo Grande', 'MS', '79065-010', '-20.460873', '-54.595062'),
    ('Praça Ary Coelho', '1', 'Casa 10', 'Centro', 'Campo Grande', 'MS', '79002-170', '-20.468345', '-54.619444'),
    ('Av. Goiás', '3200', 'Casa 10', 'Setor Central', 'Goiânia', 'GO', '74053-010', '-16.686444', '-49.264071'),
    ('Rua 82', '150', 'Loja 4', 'Setor Sul', 'Goiânia', 'GO', '74080-210', '-16.681302', '-49.266754'),
    ('Av. T-63', '3500', 'Casa 10', 'Setor Bueno', 'Goiânia', 'GO', '74210-145', '-16.675514', '-49.277292'),
    ('Rua 23', '450', 'Casa 10', 'Setor Leste Universitário', 'Goiânia', 'GO', '74605-060', '-16.669375', '-49.255049'),
    ('Praça Cívica', '1', 'Casa 10', 'Centro', 'Goiânia', 'GO', '74003-340', '-16.678285', '-49.258837'),
    ('Av. W3 Norte', '1000', 'Casa 10', 'Asa Norte', 'Brasília', 'DF', '70830-000', '-15.779743', '-47.929648'),
    ('Rua das Botas', '350', 'Casa 10', 'Setor Militar Urbano', 'Brasília', 'DF', '70630-100', '-15.778820', '-47.933450'),
    ('Av. Hélio Prates', '200', 'Casa 10', 'Taguatinga', 'Brasília', 'DF', '72030-030', '-15.779865', '-47.951563'),
    ('Rua 8 Sul', '230', 'Casa 10', 'Guará', 'Brasília', 'DF', '71060-110', '-15.779724', '-47.936730'),
    ('Praça do Buriti', '1', 'Casa 10', 'Plano Piloto', 'Brasília', 'DF', '70098-900', '-15.780123', '-47.929430'),
    ('Av. Presidente Vargas', '600', 'Apto 101', 'Centro', 'Vitória', 'ES', '29010-300', '-20.315605', '-40.312748'),
    ('Rua Monsenhor Guilherme', '200', 'Casa 10', 'Praia do Canto', 'Vitória', 'ES', '29055-150', '-20.307872', '-40.311674'),
    ('Rua 1º de Maio', '950', 'Loja 4', 'Centro', 'Vitória', 'ES', '29010-015', '-20.312710', '-40.314205'),
    ('Rua Sérgio Fadel', '500', 'Casa 10', 'Jardim Camburi', 'Vitória', 'ES', '29075-220', '-20.291522', '-40.271835'),
    ('Praça Jerônimo Monteiro', '1', 'Casa 10', 'Centro', 'Vitória', 'ES', '29010-060', '-20.312395', '-40.312263'),
    ('Rua do Rosário', '50', 'Casa 10', 'Centro', 'Rio de Janeiro', 'RJ', '20011-000', '-22.905227', '-43.178233'),
    ('Avenida Atlântica', '1700', 'Casa 10', 'Copacabana', 'Rio de Janeiro', 'RJ', '22021-001', '-22.970033', '-43.183022'),
    ('Rua Visconde de Pirajá', '300', 'Casa 10', 'Ipanema', 'Rio de Janeiro', 'RJ', '22410-003', '-22.986138', '-43.205122'),
    ('Rua da Carioca', '100', 'Casa 10', 'Centro', 'Rio de Janeiro', 'RJ', '20050-001', '-22.902850', '-43.180519'),
    ('Praia de Botafogo', '400', 'Casa 10', 'Botafogo', 'Rio de Janeiro', 'RJ', '22250-040', '-22.951524', '-43.179677'),
    ('Av. Afonso Pena', '3000', 'Casa 10', 'Centro', 'Belo Horizonte', 'MG', '30130-000', '-19.920803', '-43.937019'),
    ('Rua Tupis', '500', 'Casa 10', 'Centro', 'Belo Horizonte', 'MG', '30190-060', '-19.919351', '-43.933636'),
    ('Av. Amazonas', '1000', 'Casa 10', 'Centro', 'Belo Horizonte', 'MG', '30180-010', '-19.930624', '-43.940029'),
    ('Rua São Paulo', '650', 'Casa 10', 'Santa Efigênia', 'Belo Horizonte', 'MG', '30160-060', '-19.924184', '-43.935049'),
    ('Praça Sete de Setembro', '1', 'Casa 10', 'Centro', 'Belo Horizonte', 'MG', '30120-001', '-19.921432', '-43.933727'),
    ('Av. Paulista', '1578', 'Casa 10', 'Bela Vista', 'São Paulo', 'SP', '01310-200', '-23.564212', '-46.652762'),
    ('Rua Augusta', '1200', 'Casa 10', 'Cerqueira César', 'São Paulo', 'SP', '01305-100', '-23.550897', '-46.650246'),
    ('Rua da Consolação', '600', 'Casa 10', 'Bela Vista', 'São Paulo', 'SP', '01301-000', '-23.553399', '-46.659180'),
    ('Av. Brigadeiro Faria Lima', '2000', 'Casa 10', 'Jardim Paulistano', 'São Paulo', 'SP', '01452-000', '-23.589540', '-46.683010'),
    ('Rua XV de Novembro', '500', 'Casa 10', 'Centro', 'São Paulo', 'SP', '01015-000', '-23.550332', '-46.634654'),
    ('Av. Sete de Setembro', '1700', 'Casa 10', 'Centro', 'Curitiba', 'PR', '80060-000', '-25.428679', '-49.271312'),
    ('Rua XV de Novembro', '100', 'Casa 10', 'Centro', 'Curitiba', 'PR', '80010-080', '-25.429247', '-49.271134'),
    ('Rua Visconde do Rio Branco', '900', 'Casa 10', 'Centro', 'Curitiba', 'PR', '80420-120', '-25.431211', '-49.271462'),
    ('Av. João Gualberto', '1000', 'Casa 10', 'Centro', 'Curitiba', 'PR', '80510-000', '-25.448322', '-49.275078'),
    ('Praça Tiradentes', '1', 'Casa 10', 'Centro', 'Curitiba', 'PR', '80060-060', '-25.428236', '-49.270736'),
    ('Av. Beira Mar Norte', '900', 'Casa 10', 'Centro', 'Florianópolis', 'SC', '88015-401', '-27.595297', '-48.548489'),
    ('Rua Dom Jaime Câmara', '100', 'Casa 10', 'Centro', 'Florianópolis', 'SC', '88010-000', '-27.595674', '-48.547826'),
    ('Rua São Francisco', '750', 'Casa 10', 'Centro', 'Florianópolis', 'SC', '88015-501', '-27.595038', '-48.547134'),
    ('Av. Jornalista Rubens de Arruda Ramos', '3000', 'Casa 10', 'Centro', 'Florianópolis', 'SC', '88015-702', '-27.591398', '-48.553315'),
    ('Praça XV de Novembro', '1', 'Casa 10', 'Centro', 'Florianópolis', 'SC', '88015-010', '-27.595129', '-48.548090'),
    ('Rua dos Andradas', '1000', 'Casa 10', 'Centro', 'Porto Alegre', 'RS', '90020-004', '-30.027635', '-51.227291'),
    ('Av. Osvaldo Aranha', '600', 'Casa 10', 'Bom Fim', 'Porto Alegre', 'RS', '90035-060', '-30.031050', '-51.218334'),
    ('Rua Professor Sarmento', '200', 'Casa 10', 'Centro', 'Porto Alegre', 'RS', '90040-050', '-30.031711', '-51.223330'),
    ('Av. Ipiranga', '1000', 'Casa 10', 'Santana', 'Porto Alegre', 'RS', '90610-001', '-30.059607', '-51.232703'),
    ('Praça da Alfândega', '1', 'Casa 10', 'Centro Histórico', 'Porto Alegre', 'RS', '90010-150', '-30.033025', '-51.228491'),
    ('Av. Frei Serafim', '1000', 'Casa 10', 'Centro', 'Teresina', 'PI', '64001-020', '-5.091110', '-42.804287'),
    ('Rua Rui Barbosa', '500', 'Casa 10', 'Centro', 'Teresina', 'PI', '64000-040', '-5.089855', '-42.803044'),
    ('Av. João XXIII', '700', 'Casa 10', 'João XXIII', 'Teresina', 'PI', '64013-010', '-5.089229', '-42.801767'),
    ('Rua Governador Dirceu Arcoverde', '800', 'Casa 10', 'Centro', 'Teresina', 'PI', '64000-050', '-5.091628', '-42.804769'),
    ('Praça Pedro II', '1', 'Casa 10', 'Centro', 'Teresina', 'PI', '64001-000', '-5.091759', '-42.804264');

-- Populate Produtos table

CREATE TABLE pedidos (
    id int8 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1 NO CYCLE) NOT NULL,
    quantidade int4 NOT NULL,
    cliente_id int8 NOT NULL,
    data_hora_criacao timestamp(6) NOT NULL,
    endereco_id int8 NULL,
    produto_id int8 NOT NULL,
    status varchar(255) NOT NULL,
    CONSTRAINT pedidos_endereco_id_key UNIQUE (endereco_id),
    CONSTRAINT pedidos_pkey PRIMARY KEY (id),
    CONSTRAINT pedidos_status_check CHECK (((status)::text = ANY ((ARRAY['PENDENTE'::character varying, 'EM_ROTA'::character varying, 'TENTATIVA_ENTREGA'::character varying, 'ENTREGUE'::character varying, 'CANCELADA'::character varying])::text[])))
);

INSERT INTO pedidos (cliente_id, status, produto_id, quantidade, data_hora_criacao, endereco_id)
VALUES
    (1,'PENDENTE',1,1,'2024-11-29 14:30:00',1),
    (2,'PENDENTE',1,1,'2024-11-29 14:30:00',2),
    (3,'PENDENTE',1,1,'2024-11-29 14:30:00',3),
    (4,'PENDENTE',1,1,'2024-11-29 14:30:00',4),
    (5,'PENDENTE',1,1,'2024-11-29 14:30:00',5),
    (6,'PENDENTE',1,1,'2024-11-29 14:30:00',6),
    (7,'PENDENTE',1,1,'2024-11-29 14:30:00',7),
    (8,'PENDENTE',1,1,'2024-11-29 14:30:00',8),
    (9,'PENDENTE',1,1,'2024-11-29 14:30:00',9),
    (10,'PENDENTE',1,1,'2024-11-29 14:30:00',10),
    (11,'PENDENTE',1,1,'2024-11-29 14:30:00',11),
    (12,'PENDENTE',1,1,'2024-11-29 14:30:00',12),
    (13,'PENDENTE',1,1,'2024-11-29 14:30:00',13),
    (14,'PENDENTE',1,1,'2024-11-29 14:30:00',14),
    (15,'PENDENTE',1,1,'2024-11-29 14:30:00',15),
    (16,'PENDENTE',1,1,'2024-11-29 14:30:00',16),
    (17,'PENDENTE',1,1,'2024-11-29 14:30:00',17),
    (18,'PENDENTE',1,1,'2024-11-29 14:30:00',18),
    (19,'PENDENTE',1,1,'2024-11-29 14:30:00',19),
    (20,'PENDENTE',1,1,'2024-11-29 14:30:00',20),
    (21,'PENDENTE',1,1,'2024-11-29 14:30:00',21),
    (22,'PENDENTE',1,1,'2024-11-29 14:30:00',22),
    (23,'PENDENTE',1,1,'2024-11-29 14:30:00',23),
    (24,'PENDENTE',1,1,'2024-11-29 14:30:00',24),
    (25,'PENDENTE',1,1,'2024-11-29 14:30:00',25),
    (26,'PENDENTE',1,1,'2024-11-29 14:30:00',26),
    (27,'PENDENTE',1,1,'2024-11-29 14:30:00',27),
    (28,'PENDENTE',1,1,'2024-11-29 14:30:00',28),
    (29,'PENDENTE',1,1,'2024-11-29 14:30:00',29),
    (30,'PENDENTE',1,1,'2024-11-29 14:30:00',30),
    (31,'PENDENTE',1,1,'2024-11-29 14:30:00',31),
    (32,'PENDENTE',1,1,'2024-11-29 14:30:00',32),
    (33,'PENDENTE',1,1,'2024-11-29 14:30:00',33),
    (34,'PENDENTE',1,1,'2024-11-29 14:30:00',34),
    (35,'PENDENTE',1,1,'2024-11-29 14:30:00',35),
    (36,'PENDENTE',1,1,'2024-11-29 14:30:00',36),
    (37,'PENDENTE',1,1,'2024-11-29 14:30:00',37),
    (38,'PENDENTE',1,1,'2024-11-29 14:30:00',38),
    (39,'PENDENTE',1,1,'2024-11-29 14:30:00',39),
    (40,'PENDENTE',1,1,'2024-11-29 14:30:00',40),
    (41,'PENDENTE',1,1,'2024-11-29 14:30:00',41),
    (42,'PENDENTE',1,1,'2024-11-29 14:30:00',42),
    (43,'PENDENTE',1,1,'2024-11-29 14:30:00',43),
    (44,'PENDENTE',1,1,'2024-11-29 14:30:00',44),
    (45,'PENDENTE',1,1,'2024-11-29 14:30:00',45),
    (46,'PENDENTE',1,1,'2024-11-29 14:30:00',46),
    (47,'PENDENTE',1,1,'2024-11-29 14:30:00',47),
    (48,'PENDENTE',1,1,'2024-11-29 14:30:00',48),
    (49,'PENDENTE',1,1,'2024-11-29 14:30:00',49),
    (50,'PENDENTE',1,1,'2024-11-29 14:30:00',50),
    (51,'PENDENTE',1,1,'2024-11-29 14:30:00',51),
    (52,'PENDENTE',1,1,'2024-11-29 14:30:00',52),
    (53,'PENDENTE',1,1,'2024-11-29 14:30:00',53),
    (54,'PENDENTE',1,1,'2024-11-29 14:30:00',54),
    (55,'PENDENTE',1,1,'2024-11-29 14:30:00',55),
    (56,'PENDENTE',1,1,'2024-11-29 14:30:00',56),
    (57,'PENDENTE',1,1,'2024-11-29 14:30:00',57),
    (58,'PENDENTE',1,1,'2024-11-29 14:30:00',58),
    (59,'PENDENTE',1,1,'2024-11-29 14:30:00',59),
    (60,'PENDENTE',1,1,'2024-11-29 14:30:00',60),
    (61,'PENDENTE',1,1,'2024-11-29 14:30:00',61),
    (62,'PENDENTE',1,1,'2024-11-29 14:30:00',62),
    (63,'PENDENTE',1,1,'2024-11-29 14:30:00',63),
    (64,'PENDENTE',1,1,'2024-11-29 14:30:00',64),
    (65,'PENDENTE',1,1,'2024-11-29 14:30:00',65),
    (66,'PENDENTE',1,1,'2024-11-29 14:30:00',66),
    (67,'PENDENTE',1,1,'2024-11-29 14:30:00',67),
    (68,'PENDENTE',1,1,'2024-11-29 14:30:00',68),
    (69,'PENDENTE',1,1,'2024-11-29 14:30:00',69),
    (70,'PENDENTE',1,1,'2024-11-29 14:30:00',70),
    (71,'PENDENTE',1,1,'2024-11-29 14:30:00',71),
    (72,'PENDENTE',1,1,'2024-11-29 14:30:00',72),
    (73,'PENDENTE',1,1,'2024-11-29 14:30:00',73),
    (74,'PENDENTE',1,1,'2024-11-29 14:30:00',74),
    (75,'PENDENTE',1,1,'2024-11-29 14:30:00',75),
    (76,'PENDENTE',1,1,'2024-11-29 14:30:00',76),
    (77,'PENDENTE',1,1,'2024-11-29 14:30:00',77),
    (78,'PENDENTE',1,1,'2024-11-29 14:30:00',78),
    (79,'PENDENTE',1,1,'2024-11-29 14:30:00',79),
    (80,'PENDENTE',1,1,'2024-11-29 14:30:00',80),
    (81,'PENDENTE',1,1,'2024-11-29 14:30:00',81),
    (82,'PENDENTE',1,1,'2024-11-29 14:30:00',82),
    (83,'PENDENTE',1,1,'2024-11-29 14:30:00',83),
    (84,'PENDENTE',1,1,'2024-11-29 14:30:00',84),
    (85,'PENDENTE',1,1,'2024-11-29 14:30:00',85),
    (86,'PENDENTE',1,1,'2024-11-29 14:30:00',86),
    (87,'PENDENTE',1,1,'2024-11-29 14:30:00',87),
    (88,'PENDENTE',1,1,'2024-11-29 14:30:00',88),
    (89,'PENDENTE',1,1,'2024-11-29 14:30:00',89),
    (90,'PENDENTE',1,1,'2024-11-29 14:30:00',90),
    (91,'PENDENTE',1,1,'2024-11-29 14:30:00',91),
    (92,'PENDENTE',1,1,'2024-11-29 14:30:00',92),
    (93,'PENDENTE',1,1,'2024-11-29 14:30:00',93),
    (94,'PENDENTE',1,1,'2024-11-29 14:30:00',94),
    (95,'PENDENTE',1,1,'2024-11-29 14:30:00',95),
    (96,'PENDENTE',1,1,'2024-11-29 14:30:00',96),
    (97,'PENDENTE',1,1,'2024-11-29 14:30:00',97),
    (98,'PENDENTE',1,1,'2024-11-29 14:30:00',98),
    (99,'PENDENTE',1,1,'2024-11-29 14:30:00',99),
    (100,'PENDENTE',1,1,'2024-11-29 14:30:00',100),
    (101,'PENDENTE',1,1,'2024-11-29 14:30:00',101),
    (102,'PENDENTE',1,1,'2024-11-29 14:30:00',102),
    (103,'PENDENTE',1,1,'2024-11-29 14:30:00',103),
    (104,'PENDENTE',1,1,'2024-11-29 14:30:00',104),
    (105,'PENDENTE',1,1,'2024-11-29 14:30:00',105),
    (106,'PENDENTE',1,1,'2024-11-29 14:30:00',106),
    (107,'PENDENTE',1,1,'2024-11-29 14:30:00',107),
    (108,'PENDENTE',1,1,'2024-11-29 14:30:00',108),
    (109,'PENDENTE',1,1,'2024-11-29 14:30:00',109),
    (110,'PENDENTE',1,1,'2024-11-29 14:30:00',110),
    (111,'PENDENTE',1,1,'2024-11-29 14:30:00',111),
    (112,'PENDENTE',1,1,'2024-11-29 14:30:00',112),
    (113,'PENDENTE',1,1,'2024-11-29 14:30:00',113),
    (114,'PENDENTE',1,1,'2024-11-29 14:30:00',114),
    (115,'PENDENTE',1,1,'2024-11-29 14:30:00',115),
    (116,'PENDENTE',1,1,'2024-11-29 14:30:00',116),
    (117,'PENDENTE',1,1,'2024-11-29 14:30:00',117),
    (118,'PENDENTE',1,1,'2024-11-29 14:30:00',118),
    (119,'PENDENTE',1,1,'2024-11-29 14:30:00',119),
    (120,'PENDENTE',1,1,'2024-11-29 14:30:00',120),
    (121,'PENDENTE',1,1,'2024-11-29 14:30:00',121),
    (122,'PENDENTE',1,1,'2024-11-29 14:30:00',122),
    (123,'PENDENTE',1,1,'2024-11-29 14:30:00',123),
    (124,'PENDENTE',1,1,'2024-11-29 14:30:00',124),
    (125,'PENDENTE',1,1,'2024-11-29 14:30:00',125),
    (126,'PENDENTE',1,1,'2024-11-29 14:30:00',126),
    (127,'PENDENTE',1,1,'2024-11-29 14:30:00',127),
    (128,'PENDENTE',1,1,'2024-11-29 14:30:00',128),
    (129,'PENDENTE',1,1,'2024-11-29 14:30:00',129),
    (130,'PENDENTE',1,1,'2024-11-29 14:30:00',130),
    (131,'PENDENTE',1,1,'2024-11-29 14:30:00',131),
    (132,'PENDENTE',1,1,'2024-11-29 14:30:00',132),
    (133,'PENDENTE',1,1,'2024-11-29 14:30:00',133),
    (134,'PENDENTE',1,1,'2024-11-29 14:30:00',134),
    (135,'PENDENTE',1,1,'2024-11-29 14:30:00',135);
