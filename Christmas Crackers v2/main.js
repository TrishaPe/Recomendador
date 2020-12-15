// const http = require('http');
// const app = http.createServer();
// app.on("request", (req, res)=>{
//  res.writeHead(200, {"Content-Type": "text/html"});
//  res.write("<h1>Welcome to Nodejs Server</h1>");
//  res.end();
// });
// app.listen(3000, ()=> {
//  console.log("Server is listening on port 3000");
// });

const port = 3000,
 http = require('http'),
 router = require('./router'),
 contentTypes = require('./contentTypes'),
 utils = require('./utils');

router.get("/", (req, res) => {
 res.writeHead(200, contentTypes.html);
 utils.getFile("views/index.html", res);
});

router.get("/about", (req, res) => {
 res.writeHead(200, contentTypes.html);
 utils.getFile("views/about.html", res);
});

router.get("/contact", (req, res) => {
 res.writeHead(200, contentTypes.html);
 utils.getFile("views/contact.html", res);
});

router.post("/contact", (req, res) => {
  var body = [];

  req.on('data', (bodyData)=>{
    body.push(bodyData);
  })
  
  req.on('end', ()=>{
    body = Buffer.concat(body).toString();
    body = body.replace('%40', '@');
    console.log(body);
  })
  res.writeHead(200, contentTypes.html);
  utils.getFile("views/thanks.html", res);
});

router.get("/home.jpg", (req, res) => {
 res.writeHead(200, contentTypes.jpg);
 utils.getFile("public/images/home.jpg", res);
});

router.get("/about.jpg", (req, res) => {
 res.writeHead(200, contentTypes.jpg);
 utils.getFile("public/images/about.jpg", res);
});

router.get("/contact.jpg", (req, res) => {
 res.writeHead(200, contentTypes.jpg);
 utils.getFile("public/images/contact.jpg", res);
});

router.get("/style.css", (req, res) => {
 res.writeHead(200, contentTypes.css);
 utils.getFile("public/css/style.css", res);
});

router.get("/script.js", (req, res) => {
 res.writeHead(200, contentTypes.js);
 utils.getFile("public/js/script.js", res);
});

http.createServer(router.handle).listen(port);
console.log(`The server is listening on port number: ${port}`);