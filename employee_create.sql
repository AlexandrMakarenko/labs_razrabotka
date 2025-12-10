 IF NOT EXISTS (SELECT 1 FROM pg_database WHERE datname = 'employee') THEN
        CREATE DATABASE employee;
    END IF;
 IF NOT EXISTS (SELECT 1 FROM pg_namespace WHERE nspname = 'public') THEN
        CREATE SCHEMA public;
    END IF;
-- Устанавливаем права на схему
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO public;

-- Создаем таблицы в схеме public базы данных employee
-- PostgreSQL не поддерживает IF NOT EXISTS для CREATE DATABASE и не использует USE

CREATE TABLE IF NOT EXISTS region (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS territory (
    id SERIAL PRIMARY KEY,
    regionId INT NOT NULL,
    description VARCHAR(255) NOT NULL,
    FOREIGN KEY (regionId) REFERENCES region(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS employee (
    id SERIAL PRIMARY KEY,
    LastName VARCHAR(100) NOT NULL,
    FirstName VARCHAR(100) NOT NULL,
    SecondName VARCHAR(100),
    Title VARCHAR(100),
    BirthDay DATE,
    Address VARCHAR(255),
    City VARCHAR(100),
    Region VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS employeeterritory (
    EmployeeId INT NOT NULL,
    TerritoryId INT NOT NULL,
    PRIMARY KEY (EmployeeId, TerritoryId),
    FOREIGN KEY (EmployeeId) REFERENCES employee(id) ON DELETE CASCADE,
    FOREIGN KEY (TerritoryId) REFERENCES territory(id) ON DELETE CASCADE
); 
INSERT INTO region (description) VALUES
    ('Центральный федеральный округ'),
    ('Северо-Западный федеральный округ'),
    ('Приволжский федеральный округ'),
    ('Южный федеральный округ');

INSERT INTO territory (regionId, description) VALUES
    (1, 'Москва'),
    (1, 'Тула'),
    (1, 'Владимир'),
    (2, 'Санкт-Петербург'),
    (2, 'Псков'),
    (2, 'Калининград'),
    (3, 'Казань'),
    (3, 'Самара'),
    (3, 'Уфа'),
    (4, 'Ростов-на-Дону'),
    (4, 'Краснодар'),
    (4, 'Волгоград');

INSERT INTO employee (LastName, FirstName, SecondName, Title, BirthDay, Address, City, Region, Phone, Email) VALUES
    ('Иванов', 'Иван', 'Иванович', 'Менеджер', '1985-03-15', 'ул. Ленина, д. 10', 'Москва', 'Центральный федеральный округ', '+7-495-123-4567', 'ivanov@example.com'),
    ('Петров', 'Петр', 'Петрович', 'Аналитик', '1990-07-22', 'ул. Тверская, д. 5', 'Москва', 'Центральный федеральный округ', '+7-495-234-5678', 'petrov@example.com'),
    ('Сидорова', 'Анна', 'Александровна', 'Разработчик', '1992-11-10', 'ул. Декабристов, д. 3', 'Санкт-Петербург', 'Северо-Западный федеральный округ', '+7-812-345-6789', 'sidorova@example.com'),
    ('Кузнецов', 'Алексей', 'Сергеевич', 'Директор', '1980-05-30', 'ул. Баумана, д. 8', 'Казань', 'Приволжский федеральный округ', '+7-843-456-7890', 'kuznetsov@example.com'),
    ('Морозов', 'Дмитрий', 'Игоревич', 'Инженер', '1988-09-14', 'ул. Гагарина, д. 12', 'Самара', 'Приволжский федеральный округ', '+7-846-567-8901', 'morozov@example.com'),
    ('Васильева', 'Екатерина', 'Владимировна', 'Маркетолог', '1995-02-25', 'ул. Советская, д. 7', 'Краснодар', 'Южный федеральный округ', '+7-861-678-9012', 'vasilieva@example.com'),
    ('Федоров', 'Олег', 'Андреевич', 'Логист', '1983-06-05', 'ул. Комсомольская, д. 15', 'Волгоград', 'Южный федеральный округ', '+7-844-789-0123', 'fedorov@example.com'),
    ('Смирнов', 'Максим', 'Дмитриевич', 'Экономист', '1991-12-18', 'ул. Победы, д. 20', 'Тула', 'Центральный федеральный округ', '+7-487-890-1234', 'smirnov@example.com');

INSERT INTO employeeterritory (EmployeeId, TerritoryId) VALUES
    (1, 1), -- Иванов работает в Москве
    (1, 2), -- Иванов также отвечает за Тулу
    (2, 1), -- Петров работает в Москве
    (3, 4), -- Сидорова работает в Санкт-Петербурге
    (4, 7), -- Кузнецов работает в Казани
    (4, 8), -- Кузнецов также отвечает за Самару
    (5, 8), -- Морозов работает в Самаре
    (6, 11), -- Васильева работает в Краснодаре
    (7, 12), -- Федоров работает в Волгограде
    (8, 2); -- Смирнов работает в Туле
