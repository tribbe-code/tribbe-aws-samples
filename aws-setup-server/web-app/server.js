const express = require('express')
const app = express()
const port = 8080

app.get('/', (req, res) => {
  res.send('<br><center><b>Container hostname</b>: '+process.env.HOSTNAME+"</center>")
})

app.listen(port, () => {
  console.log(`Example app runnnig:${port}`)
})
