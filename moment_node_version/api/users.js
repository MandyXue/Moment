/**
 * Created by mandyxue on 16/8/2.
 */


var AV = require('avoscloud-sdk').AV;

module.exports = User;

function User(obj) {
    for (var key in obj) {
        this[key] = obj[key];
    }
}

User.login = function (mobilePhone, password) {
    AV.User.logInWithMobilePhone(mobilePhone, password).then(function (loginedUser) {
        console.log(loginedUser);
    }, (function (error) {
        console.log(error);
    }));
};

User.signUp = function (username, password) {
    var user = new AV.User();
    user.setUsername(username);
    user.setPassword(password);
    //user.setMobilePhoneNumber(mobilePhone);

    user.signUp().then(function (loginedUser) {
        console.log(loginedUser);
    }, (function (error) {
        console.log(error);
    }));
};