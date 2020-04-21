//File fungsi untuk jadwal

const db = require('./config')

//Melihat jadwal pemberian makan pada alat
exports.getJadwal = (id_alat) => {
	return new Promise((resolve, reject) => {
		db.any('SELECT jadwal_pakan FROM alat WHERE id_alat = ' + id_alat)
			.then(data => {
				resolve(data);
			})
			.catch(e => {
				reject(e);
			})
	})
}

//Mengganti jadwal pemberian makan pada alat
exports.changeJadwal = (id_alat, jadwal) => {
	return new Promise((resolve, reject) => {
		db.any('UPDATE Alat SET jadwal_pakan = ', jadwal, 'WHERE id_alat = ' + id_alat)
			.then(data => {
				resolve(data);
			})
			.catch(e => {
				reject(e);
			})
	})
}