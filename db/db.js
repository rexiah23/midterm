const { Pool } = require("pg");
const dbParams = require('../lib/db');
const pool = new Pool(dbParams);

pool.connect(() => {
    console.log("connected to database");
});

module.exports = pool;
