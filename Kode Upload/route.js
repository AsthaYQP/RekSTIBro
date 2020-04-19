/**
 * Employee endpoints
 * Prefix: /employee
 */

const express = require('express');
const router = express.Router();
const fungsi = require('./fungsi');
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
})**/

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

router.get('/:id_alat/:id_wadah', async (req, res) => {
	try {
		const wadah = await fungsi.getWadahStatus(req.params.id_alat, req.params.id_wadah);
		const result = createResponse(wadah, 200);
		res.json(result);
	}
	catch (e) {
		console.log(e);
		const result = createResponse(e.toString(), 400);
		res.json(result);
	}
})

router.put('/:id_alat/:id_wadah', async (req, res) => {
	try {
		const wadah = await fungsi.isiWadah(req.params.id_alat, req.params.id_wadah);
		const result = createResponse(wadah, 200);
		res.json(result);
	}
	catch (e) {
		console.log(e);
		const result = createResponse(e.toString(), 400);
		res.json(result);
	}
})

module.exports = router;