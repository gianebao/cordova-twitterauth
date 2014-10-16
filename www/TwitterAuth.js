var exec = require('cordova/exec');
/**
 * @constructor
 */
var TwitterAuth = function() {};
/**
 * Checks if the Twitter SDK is loaded
 * @param {Function} response callback on result
 * @param {Number} response.response is 1 for success, 0 for failure
 * @example
 *      window.plugins.twitterauth.twitterClientSideLoginWithBlock(function (response) {
 *          console.log("twitter available? " + response);
 *      });
 */
TwitterAuth.echo = function(success, data){
  data.fired = true;
  exec(success, success, "TwitterAuth", "echo", []);
};

module.exports = TwitterAuth;