const express = require('express')
const path = require('path')
const app = express()

app.use('/public', express.static(path.join(__dirname, '../public')))
app.get('/', function (req, res) {
  res.sendFile(path.join(__dirname + '/index.html'))
})
app.get('/triangle/:base/:height', function (req, res) {
  res.send({ result: 0.5 * req.params.base * req.params.height })
})

app.listen(80)