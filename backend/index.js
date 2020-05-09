const express = require('express');
const cors = require('cors');
const mysql = require('mysql');

const app = express();

const SELECT_ALL_POST = 'SELECT * FROM anonpost';

const connection = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'posts'
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


app.listen(5000, () => {
  console.log('Posts server listening on port 5000');
});