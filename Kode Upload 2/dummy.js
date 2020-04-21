//file untuk fungsi dummy

const db = require('./config')

//fungsi dummy yang digunakan untuk mengosongkan suatu wadah
exports.kosongWadah = (id_alat, id_wadah) => {
	return new Promise((resolve, reject) => {
		db.any('UPDATE Wadah SET Sensor1_status = FALSE, Sensor2_status = FALSE, Sensor3_status = FALSE WHERE id_alat = ' + id_alat + ' and id_wadah = ' + id_wadah)
			.then(data => {
				resolve(data);
			})
			.catch(e => {
				reject(e);
			})
	})
}