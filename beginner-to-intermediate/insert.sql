-- Basic Insert
INSERT INTO customers
VALUE(DEFAULT, 'Samuel', 'Godfrey', 'UK', NULL)

INSERT INTO customers
VALUE(DEFAULT, 'Imani', 'Godfrey', NULL, NULL)

-- Better Version of Basic Insert
INSERT INTO customers
(first_name, last_name)
VALUE('Imani', 'Grace')