/**
 * Employee endpoints
 * Prefix: /employee
 */

const express = require('express');
const router = express.Router();
const container = require('./container');
const stock = require('./stock');
const dummy = require('./dummy');
const schedule = require('./schedule');
const createResponse = require('./response');


/**router.get('/', async (req, res) => {
	try {
		const pegawai = await employee.getAllEmployees();
		const result = createResponse(pegawai, 200);
		res.json(result);
	}
	catch(e) {
		console.log(e);
		const result = createResponse(e.toString(), 400);
		res.json(result);
	}
})
*/
router.post('/', async (req, res) => {
	try {
		const akun = await account.createAccount(req.body);
		const result = createResponse(akun, 200);
		res.json(result);
	}
	catch(e) {
		console.log(e);
		const result = createResponse(e.toString(), 400);
		res.json(result);
	}
}) 

//fungsi untuk melakukan pengecekan pada sebuah wadah
router.get('/wadah/:id_alat/:id_wadah', async (req, res) => {
	try {
		const wadah = await container.getWadahStatus(req.params.id_alat, req.params.id_wadah);
		const result = createResponse(wadah, 200);
		res.json(result);
	}
	catch (e) {
		console.log(e);
		const result = createResponse(e.toString(), 400);
		res.json(result);
	}
})

//Fungsi untuk mengisi wadah
router.put('/wadah/:id_alat/:id_wadah', async (req, res) => {
	try {
		const wadah = await container.isiWadah(req.params.id_alat, req.params.id_wadah);
		const result = createResponse(wadah, 200);
		res.json(result);
	}
	catch (e) {
		console.log(e);
		const result = createResponse(e.toString(), 400);
		res.json(result);
	}
})

//Fungsi untuk melakukan pengecekan stok pakan
router.get('/stok/:id_alat', async (req, res) => {
	try {
		const stok = await stock.getStock(req.params.id_alat);
		const result = createResponse(stok, 200);
		res.json(result);
	}
	catch (e) {
		console.log(e);
		const result = createResponse(e.toString(), 400);
		res.json(result);
	}
})

//Fungsi untuk melihat jadwal pemberian pakan
router.get('/jadwal/:id_alat', async (req, res) => {
	try {
		const jadwal = await schedule.getJadwal(req.params.id_alat);
		const result = createResponse(jadwal, 200);
		res.json(result);
	}
	catch (e) {
		console.log(e);
		const result = createResponse(e.toString(), 400);
		res.json(result);
	}
})

//Fungsi untuk mengganti jadwal 
router.put('/jadwal/:id_alat', async (req, res) => {
	try {
		const jadwal = await schedule.changeJadwal(req.params.id_alat);
		const result = createResponse(jadwal, 200);
		res.json(result);
	}
	catch (e) {
		console.log(e);
		const result = createResponse(e.toString(), 400);
		res.json(result);
	}
})

//Fungsi dummy yang digunakan untuk mengosongkan pakan (mengubah ketiga status sensor pada wadah menjadi FALSE)
router.put('/dummy/:id_alat/:id_wadah', async (req, res) => {
	try {
		const dummyf = await dummy.kosongWadah(req.params.id_alat, req.params.id_wadah);
		const result = createResponse(dummyf, 200);
		res.json(result);
	}
	catch (e) {
		console.log(e);
		const result = createResponse(e.toString(), 400);
		res.json(result);
	}
})

module.exports = router;