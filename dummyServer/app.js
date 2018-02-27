var express = require('express');
var app = express();

app.use(express.static(__dirname + '/../client/dist'));

app.listen(8080, function() {
  console.log('Server started and listening on port 8080');
});
