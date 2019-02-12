// Empty constructor
function squarePOS() {}

// The function that passes work along to native shells
// Message is a string, duration may be 'long' or 'short'
squarePOS.prototype.startTransaction = function(jobid, amount, customerid, successCallback, errorCallback) {
  var options = {};
  options.jobid = jobid;
  options.amount = amount;
  options.customerid = customerid;
  cordova.exec(successCallback, errorCallback, 'squarePOS', 'startTransaction', [options]);
}

// Installation constructor that binds ToastyPlugin to window
squarePOS.install = function() {
  if (!window.plugins) {
    window.plugins = {};
  }
  window.plugins.squarePOS = new squarePOS();
  return window.plugins.squarePOS;
};
cordova.addConstructor(squarePOS.install);
