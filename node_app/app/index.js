'use strict'
import express from 'express';
const app = express();
const port = 8080

app.get('/', (req, res) => {
  res.send('Hello World!');
});

var server = app.listen(port, () => {
  console.log(`Example app listening at http:\/\/localhost:${port}`);
});
