--Database untuk sensor 

CREATE TABLE Pengguna (
	id integer PRIMARY KEY,
	nama varchar(30), 
	email varchar(50), 
	password varchar(24)
);

CREATE TABLE Alat ( 
	id_alat integer PRIMARY KEY,
	id_pengguna integer, 
	jumlah_wadah integer, 
	jadwal_pakan time, 
	pakan_otomatis boolean,
	sensorpakan_status boolean,
	
	FOREIGN KEY (id_pengguna) REFERENCES Pengguna(id) ON DELETE CASCADE
); 

CREATE TABLE Wadah ( 
	id_wadah integer PRIMARY KEY, 
	id_alat integer, 
	sensor1_status boolean, 
	sensor2_status boolean,
	sensor3_status boolean,
	
	FOREIGN KEY (id_alat) REFERENCES Alat(id_alat) ON DELETE CASCADE
);
	