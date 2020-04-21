require('dotenv').config();

const express = require('express');
const app = express();

app.use('/', require('./route'));

// Run the server!
const start = async () => {
    try {
    	// Isi PORT di file .env (default: 8000)
        const server = await app.listen(process.env.PORT);
        console.info(`Server listening on ${server.address().port}`); 
    } catch (err) {
        console.error(err);
    }
};

start();