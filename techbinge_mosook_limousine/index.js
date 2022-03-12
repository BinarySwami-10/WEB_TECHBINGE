const hostname = '127.0.0.1';
const port = 3000;
const express = require('express')
const app = express()

app.use(express.static('src/'))
// respond with "hello world" when a GET request is made to the homepage
app.get('/', (req, res) => {
  res.send('hello world')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})

// --------------