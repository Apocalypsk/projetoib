-- Tabela paciente
CREATE TABLE paciente (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    endereco VARCHAR(255),
    telefone VARCHAR(20),
    regiao VARCHAR(50),
    escolaridade VARCHAR(50)
);

-- tabela vacina
CREATE TABLE vacina (
    id_vacina INT AUTO_INCREMENT PRIMARY KEY,
    nome_vacina VARCHAR(100) NOT NULL,
    fabricante VARCHAR(100)
);

-- Tabela vacinacao (registro de quem tomou qual vacina e quando)
CREATE TABLE vacinacao (
    id_vacinacao INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT,
    id_vacina INT,
    data_aplicacao DATE,
    dose VARCHAR(20),
    FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
    FOREIGN KEY (id_vacina) REFERENCES vacina(id_vacina)
);

-- Tabela doenca (registro de doenças contraídas)
CREATE TABLE doenca (
    id_doenca INT AUTO_INCREMENT PRIMARY KEY,
    nome_doenca VARCHAR(100) NOT NULL
);

-- Tabela paciente_doenca (quem contraiu qual doença, quando)
CREATE TABLE paciente_doenca (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT,
    id_doenca INT,
    data_diagnostico DATE,
    FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
    FOREIGN KEY (id_doenca) REFERENCES doenca(id_doenca)
);