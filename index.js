const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send('Hello World docker');
});

app.listen(8080, () => {
  console.log('server running' , )
})