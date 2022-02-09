const express = require('express')
const cors = require('cors')
const pool = require('./database')
const app = express()
const dotenv = require("dotenv")

dotenv.config()
app.use(express.json())
app.use(cors())
app.listen(process.env.PORT || 5001, () => {
  console.log('Muhahahaha')
})


app.get('/cars', async (req, res) => {
  try {
    const response = await pool.query('SELECT * FROM cars')
    console.log(response.rows)
    res.json(response.rows)
  } catch (e) {
    console.log(e.message)
  }  
})

app.get('/users', async (req, res) => {
  try {
    const response = await pool.query('SELECT * FROM cars')
    console.log(response.rows)
    res.json(response.rows)
  } catch (e) {
    console.log(e.message)
  }
})



app.get('/cars/:name', async (req, res) => {
  const name = req.params.name;

  try {
    const cars = await pool.query(
      'SELECT * FROM cars WHERE user_id = (SELECT id from users where name=$1)',
      [name]
    );
    console.log(cars.rows);
    res.json(cars.rows);
  } catch (e) {
    console.log(e.message);
  }
});
