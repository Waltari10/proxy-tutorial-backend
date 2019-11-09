const http = require('http');
const path = require('path');

const port = process.env.PORT || 3001;

const server = http.createServer((req, res) => {
  if (req.url === path.resolve('/hello-world')) {
    res.end('Hello world!');
    return;
  } 
  res.end('');
});

server.listen(port);

console.log('Running on port: ' + port)