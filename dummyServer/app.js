var express = require('express');
var app = express();
var bodyParser = require('body-parser');

app.use(express.static(__dirname + '/../client/dist'));

app.get('/assesments', function(req, res){
  res.status(200).json(data);
})

app.listen(8080, function() {
  console.log('Server started and listening on port 8080');
});
