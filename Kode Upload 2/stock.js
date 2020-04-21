//file untuk fungsi stok

const db = require('./config')

//fungsi untuk melakukan pengecekan stock
exports.getStock = (id_alat) => {
	return new Promise((resolve, reject) => {
		db.any('SELECT sensorpakan_status FROM alat WHERE id_alat = ' + id_alat)
			.then(data => {
				resolve(data);
			})
			.catch(e => {
				reject(e);
			})
	})
}

