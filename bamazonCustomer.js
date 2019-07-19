const inquirer = require ('inquirer');
const mysql = require("mysql2");
const keys = require ('./keys');

var connection = mysql.createConnection({
  host: "127.0.0.1",

  port: 3306,

  user: "root",

  password: keys.mySql.password,

  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId + "\n");
  readProducts();
});

function readProducts() {
  console.log("Selecting all products...\n");
  connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
    // Log all results of the SELECT statement
    console.table(res);
     start();
  });
  
  function start() {
    inquirer
      .prompt([
        {
          name: "idQuestion",
          type: "input",
          message: "What is the ID of the product you'd like to purchase?",
        },
        {
          name: "unitQuestion",
          type: "list",
          message: "How many units would you like?",
          choices: [ '0','1', '2', '3', '4']
        }
      ]).then(function(answer) {
        console.log(answer.unitQuestion);
       
      });
  }
}

