var express = require('express');
var router = express.Router();
var User = require('../api/users');

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('this is user APIs.');
});

// hello world

router.get('/hello', function (req, res, next) {
  res.send('hello');
});

// 登陆
router.post('/login', function (req, res, next) {
  var data = req.body;

  console.log(data.mobilePhone);
  if(data.mobilePhone != null && data.password != null) {
    User.login(data.mobilePhone, data.password);
    res.json({
      errCode: 0
    });
  } else {
    console.log('login failed');
    res.json({
      errCode: 1
    });
  }
});

// 注册
router.post('/signup', function (req, res, next) {
  var data = req.body;

  if(data.username != null && data.password != null) {
    User.signUp(data.username, data.password);
    res.json({
      errCode: 0
    });
  } else {
    console.log('signup failed');
    res.json({
      errCode: 1
    });
  }
});

module.exports = router;
