CREATE TABLE aluno
(
    id              SERIAL,
    nome            VARCHAR(255),
    cpf             CHAR(11),
    observacao      TEXT,
    idade           INTEGER,
    dinheiro        NUMERIC(10, 2),
    altura          REAL,
    ativo           BOOLEAN,
    data_nascimento DATE,
    hora_aula       TIME,
    matriculado_em  timestamp


);


SELECT *
FROM aluno;

INSERT INTO aluno (nome,
                   cpf,
                   observacao,
                   idade,
                   dinheiro,
                   altura,
                   ativo,
                   data_nascimento,
                   hora_aula,
                   matriculado_em)
VALUES ('Diogo',
        '12345678910',
        'masojndfuhrubfhjhgjfhgjfkjfksjdkjkdhf',
        30,
        100.50,
        1.81,
        TRUE,
        '1991-09-05',
        '17:30:00',
        '2022-07-05 13:03:00');

SELECT *
FROM aluno
WHERE id = 1;

UPDATE aluno
SET nome            = 'Nico',
    cpf             ='12398745685',
    observacao      ='teste',
    idade           = 30,
    dinheiro        = 15.23,
    altura          = 1.93,
    ativo           = FALSE,
    data_nascimento = '1991-09-05',
    hora_aula       = '14:00:00',
    matriculado_em  = '2022-07-05 14:10:00'
WHERE id = 1;


----------------------------------------------
CREATE TABLE dados_conta
(
    id       SERIAL,
    nome     VARCHAR(255),
    cpf      CHAR(11),
    status   VARCHAR(10),
    endereço VARCHAR(255),
    agencia  VARCHAR(4),
    conta    VARCHAR(8),
    digito   VARCHAR(2),
    saldo    NUMERIC(10, 2)


);



INSERT INTO dados_conta(nome,
                        cpf,
                        status,
                        endereço,
                        agencia,
                        conta,
                        digito,
                        saldo)
VALUES ('Deise Santana Pereira',
        '00900990090',
        'positivo',
        'Rua palma 514',
        '1234',
        '12345678',
        '12',
        1500);

INSERT INTO dados_conta(nome,
                        cpf,
                        status,
                        endereço,
                        agencia,
                        conta,
                        digito,
                        saldo)
VALUES ('Daniele Santana Pereira',
        '00300330030',
        'positivo',
        'praca julio mesquista',
        '2345',
        '23456789',
        '23',
        1800);

INSERT INTO dados_conta(nome,
                        cpf,
                        status,
                        endereço,
                        agencia,
                        conta,
                        digito,
                        saldo)
VALUES ('Felipe Sa Barreto',
        '12345678901',
        'positivo',
        'Avenida sao joao',
        '9876',
        '87654321',
        '34',
        2000);

INSERT INTO dados_conta(nome,
                        cpf,
                        status,
                        endereço,
                        agencia,
                        conta,
                        digito,
                        saldo)
VALUES ('Leandro Teixeira',
        '00400440040',
        'positivo',
        'Rua palma 514',
        '4440',
        '12121212',
        '45',
        1700);

UPDATE dados_conta
SET     cpf ='35272352807'
WHERE id = 3;

UPDATE dados_conta
SET     nome ='Felipe de Castro Sa Barreto'
WHERE id = 3;

delete  from dados_conta WHERE cpf = '35272352807';

SELECT *
FROM dados_conta
WHERE cpf = '35272352807';


SELECT * FROM dados_conta;




