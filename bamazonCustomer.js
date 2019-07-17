const inquireer = require ('inquirer');
const mysql = require("mysql2/promise");
const keys = require ('./keys');

var connection = mysql.createConnection({
  host: "127.0.0.1",

  port: 3306,

  user: "root",

  password: keys.mySql.password,

  database: "bamazon"
});

