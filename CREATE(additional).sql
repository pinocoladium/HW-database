CREATE TABLE IF NOT EXISTS Departament (
    departament_id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Employee (
	employee_id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
	departament INTEGER FOREIGN KEY REFERENCES Departament(departament_id)
);

CREATE TABLE IF NOT EXISTS Сhief (
	сhief_id SERIAL PRIMARY KEY,
	employee INTEGER FOREIGN KEY REFERENCES Employee(employee_id),
	departament INTEGER FOREIGN KEY REFERENCES Departament(departament_id)
);

CREATE TABLE IF NOT EXISTS Employee_chief (
	id SERIAL PRIMARY KEY,
	employee_id INTEGER FOREIGN KEY REFERENCES Employee(employee_id),
	сhief_id INTEGER FOREIGN KEY REFERENCES Сhief(сhief_id)
);



