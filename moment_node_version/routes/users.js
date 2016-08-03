var express = require('express');
var router = express.Router();
var User = require('../api/users');

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('this is user APIs.');
});

// 登陆
router.post('/login', function (req, res, next) {
  var data = req.body;
  console.log(data.username);

  if(data.username != null && data.password != null) {
    User.logIn(data.username, data.password)
        .then(function (loginedUser) {
          // 登陆成功
          res.json({
            errCode: 0,
            loginedUser: loginedUser
          });
          console.log(loginedUser);
        }, (function (error) {
          // 登陆失败
          res.json({
            errCode: 100,
            errMsg: error.message
          });
        }));
  } else {
    // 输入为空值
    res.json({
      errCode: 101
    });
  }
});

// 注册
router.post('/signup', function (req, res, next) {
  var data = req.body;

  console.log(data);
  if(data.username != null && data.password != null && data.email != null && data.userType != null) {
    User.signUp(data.username, data.password, data.email, data.userType)
        .then(function (loginedUser) {
          // 注册成功
          res.json({
            errCode: 0,
            loginedUser: loginedUser
          });
          console.log(loginedUser);
        }, (function (error) {
          // 注册失败
          res.json({
            errCode: 102,
            errMsg: error.message
          });
        }));
  } else {
    // 输入为空
    res.json({
      errCode: 103
    });
  }
});

// 登出
// TODO: 登出还没有测试
router.post('/logout', function (req, res, next) {
  User.logOut()
      .then(function () {
        res.json({
          errCode: 0
        })
      }, (function (error) {
        // 注册失败
        res.json({
          errCode: 104,
          errMsg: error.message
        });
      }));
});

module.exports = router;
