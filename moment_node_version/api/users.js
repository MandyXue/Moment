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

User.logIn = function (username, password) {
    return AV.User.logIn(username, password);
};

User.signUp = function (username, password, email, userType) {
    var user = new AV.User();
    user.setUsername(username);
    user.setPassword(password);
    user.setEmail(email);
    user.set('userType', userType);

    return user.signUp();
};

User.logOut = function () {
    return AV.User.logOut();
};