const Pool = require('pg').Pool

const pool = new Pool({
  user: 'wsitsliroiimlo',
  password: '47b2780da611c69b04e272c7640c5be028f0ce299263cc56b8ac61fc784db78e',
  host: 'ec2-3-217-216-13.compute-1.amazonaws.com',
  port: 5432,
  database: 'd5ol0q7gnbjiv0',
  ssl: { rejectUnauthorized: false },
})

module.exports = pool
