'use strict';

const express = require('express');
const _ = require('lodash');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/hello-world', (req, res) => {
    res.send('Hello World!');
});

app.get('/sort-numbers', (req, res) => {
    let listParam = req.query.list;
    let list = [];
    if(listParam) {
        list = listParam.split(',').map(item => parseInt(item));
        list = _.sortBy(list)
    }
    console.log(list);
    res.send(list)
});

app.get('/sort-strings', (req, res) => {
   let listParam = req.query.list;
   let list = [];
   if(listParam) {
       list = listParam.split(',');
       list = _.sortBy(list);
   }
   console.log(list);
   res.send(list);
});

app.get('/sort-number-array', (req, res) => {
   let list = JSON.parse(req.query.list);
   console.log(list);
   res.send(_.sortBy(list))
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
