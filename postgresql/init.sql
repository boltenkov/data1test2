CREATE TABLE IF NOT EXISTS test_table (
    name VARCHAR(10),
    surname VARCHAR(255),
    city VARCHAR(255),
    age INTEGER
);

INSERT INTO test_table (name, surname, city, age) VALUES
('Ivan', 'Ivanov', 'Moscow', 25),
('Anna', 'Smirnova', 'Saint Petersburg', 30),
('Petr', 'Petrov', 'Kazan', 22),
('Elena', 'Sidorova', 'Novosibirsk', 28),
('Igor', 'Volkov', 'Ekaterinburg', 35),
('Olga', 'Fedorova', 'Nizhny Novgorod', 29),
('Dmitry', 'Morozov', 'Chelyabinsk', 24),
('Natalia', 'Lebedeva', 'Samara', 31),
('Sergey', 'Kozlov', 'Omsk', 27),
('Maria', 'Vasilieva', 'Rostov-on-Don', 33),
('Alex', 'Mikhailov', 'Ufa', 26),
('Julia', 'Sokolova', 'Krasnoyarsk', 32),
('Roman', 'Popov', 'Voronezh', 23),
('Svetlana', 'Andreeva', 'Perm', 34),
('Denis', 'Ermakov', 'Volgograd', 21),
('Irina', 'Orlova', 'Krasnodar', 36),
('Maxim', 'Belov', 'Saratov', 30),
('Tatiana', 'Guseva', 'Tyumen', 28),
('Kirill', 'Kuznetsov', 'Tolyatti', 29),
('Sofia', 'Novikova', 'Izhevsk', 25),
('Oleg', 'Semenov', 'Barnaul', 40),
('Nina', 'Pavlova', 'Irkutsk', 45),
('Ilya', 'Frolov', 'Khabarovsk', 38);

ALTER TABLE test_table ALTER COLUMN name TYPE VARCHAR(10);
ALTER TABLE test_table ADD CONSTRAINT name_length CHECK (LENGTH(name) BETWEEN 4 AND 10);

ALTER TABLE test_table ADD CONSTRAINT age_positive CHECK (age > 0 AND age <= 150);

