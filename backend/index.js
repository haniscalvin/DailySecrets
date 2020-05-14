const express = require('express');
const cors = require('cors');
const mysql = require('mysql');
const app = express();

require('dotenv').config();

const SELECT_ALL_POST = 'SELECT * FROM post';
const PORT = process.env.NODE_PORT;

const connection = mysql.createPool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_DATABASE
});

app.use(cors());

app.get('/',(req, res) => {
	res.send('go to /posts to see posts')
});

app.get('/posts/add', (req, res) => {

  const {UserID, PostID} = req.query;
  const INSERT_POSTS_QUERY = `INSERT INTO anonpost (UserID, PostID) VALUES('${UserID}', ${PostID})`;

  connection.query(INSERT_POSTS_QUERY, (err, results) => {
    if(err){
      return res.send(err)
    }
    else{
      return res.send('successfully added')
    }
  });
});

app.get('/posts',(req, res) => {
  connection.query(SELECT_ALL_POST, (err,results)=>{
    if(err){
      return res.send(err)
    }
    else{
      return res.json({
        data: results
      })
    }
  });
});

app.listen(PORT, () => {
  console.log(`Posts server listening on port ${PORT}`);
});
