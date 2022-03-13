const express = require('express');
const fs = require('fs');
const path = require('path');

const hostname = '127.0.0.1';
const port = 9000;
const app = express()

// fs.readdirSync('./')
// .filter(path => path.startsWith("project"))
// .forEach( path => { 
//   console.log("loggong",path)
//   app.use("./"+path,express.static(path))
//  })
// ;


app.use('/project_mosook_limousine', express.static(__dirname + '/project_mosook_limousine'))

// app.get('/', (req, res) => {
//   console.log("Request received",req.path,__dirname)
//   console.log(path.join(__dirname,'project_mosook_limousine/'))

//   fs.readdir('./', function (err, files) {
//       if (err) { //handling error
//           return console.log('Unable to scan directory: ' + err);
//       } 

//       const projects = files.filter(el => el.startsWith("project")) // filter folders names starting with project
//       res.send(projects)
//   });
// })


app.listen(port, () => {
  console.log(`LOG: app listening on port ${port}`)
})

// --------------