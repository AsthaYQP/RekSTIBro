//connect databse

require('dotenv').config();

const pgp = require('pg-promise')();
const DATABASE_URL = 'postgres://ttnvhmkl:j-WcP1S0t_pLOLpHnyMU_GxwiQuKxY5s@drona.db.elephantsql.com:5432/ttnvhmkl';
const db = pgp(DATABASE_URL);

module.exports = db;