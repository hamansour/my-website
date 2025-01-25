self.addEventListener('install', event => {
    console.log('Service Worker installing.');
    event.waitUntil(
        caches.open('pwa-cache').then(cache => {
            return cache.addAll([
                './',
                './login.aspx',
                './manifest.json',
                './pic/Picture1.png', // أيقونة التطبيق
                './icon/doctor.png', // أيقونة التسجيل للطبيب
                './icon/user.png' // أيقونة التسجيل للمستخدم
            ]);
        })
    );
});

self.addEventListener('fetch', event => {
    event.respondWith(
        caches.match(event.request).then(response => {
            return response || fetch(event.request);
        })
    );
});
