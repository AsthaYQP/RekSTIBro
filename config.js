//connect databse

require('dotenv').config();

const pgp = require('pg-promise')();
const DATABASE_URL = //isi sama url database
const db = pgp(DATABASE_URL);

module.exports = db;