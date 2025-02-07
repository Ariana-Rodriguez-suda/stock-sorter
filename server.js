const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const { exec } = require("child_process"); 

const app = express();
app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
  host: "localhost",
  user: "root", 
  password: "gt45sdQCV!=+l",
  database: "mi_base",
});

db.connect(function(err) {
  if (err) {
    console.error("Error al conectar a MySQL: " + err);
    return;
  }
  console.log("Conectado a MySQL");
});

app.get("/productos", function(req, res) {
  const sql = "SELECT nombre, categoria, talla, genero, precio, stock FROM productos ORDER BY precio ASC";
  db.query(sql, function(err, results) {
    if (err) {
      console.error("Error al obtener productos: " + err);
      res.status(500).json({ error: "Error en la base de datos" });
      return;
    }
    res.json(results);
  });
});


app.use(express.static(__dirname + '/pagina_web')); 


app.get("/", function(req, res) {
  res.sendFile(__dirname + "/index.html"); 
});

app.listen(3000, function() {
  console.log("Servidor corriendo en http://localhost:3000");
  exec("start http://localhost:3000"); 
});
