var exec = require('cordova/exec');
/**
 * @constructor
 */
var TwitterAuth = function() {};

TwitterAuth.echo = function(opts, success, failure) {
  exec(success, failure, "TwitterAuth", "echo", [opts]);
};

TwitterAuth.loginWithBlock = function(success, failure) {
  exec(success, failure, "TwitterAuth", "loginWithBlock", []);
};

module.exports = TwitterAuth;