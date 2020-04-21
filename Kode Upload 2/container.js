//File fungsi untuk wadah 

const db = require('./config')

//fungsi untuk melihat status wadah
exports.getWadahStatus = (id_alat, id_wadah) => {
	return new Promise((resolve, reject) => {
		db.any('SELECT sensor1_status, sensor2_status, sensor3_status FROM Wadah WHERE id_alat = ' + id_alat + ' and id_wadah = ' + id_wadah)
			.then(data => {
				resolve(data);
			})
			.catch(e => {
				reject(e);
			})
	})
}

//fungsi untuk melakukan pengisian wadah
exports.isiWadah = (id_alat, id_wadah) => {
	return new Promise((resolve, reject) => {
		db.any('UPDATE Wadah SET Sensor1_status = TRUE, Sensor2_status = TRUE, Sensor3_status = TRUE WHERE id_alat = ' + id_alat + ' and id_wadah = ' + id_wadah)
			.then(data => {
				resolve(data);
			})
			.catch(e => {
				reject(e);
			})
	})
}