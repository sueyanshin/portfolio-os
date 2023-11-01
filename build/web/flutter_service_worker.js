'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/NOTICES": "e257f0bbb667b4ba7d0f0edcbd86cf9b",
"assets/assets/icon-f.png": "c27df4c6f9e85cbf5ce505312c37a6dc",
"assets/assets/icon-fullscreen.png": "22330bc1489863dec34c4b6e88275413",
"assets/assets/icon-contact-m.png": "2100204617b5c9f567e1b62fcdd3df04",
"assets/assets/bg-win.jpg": "ea155c02f827f0c12a0c5bae051198c5",
"assets/assets/icon-phone-a.png": "598852cb88ac2fb0a94c26a491316f5d",
"assets/assets/bgmac.jpg": "dd2a67e61292f260e3c306430a6d7964",
"assets/assets/animation_rocket.gif": "db1168a78e80247a3b4c24a1efeaf2b3",
"assets/assets/icon-github.png": "2fe50be5843c30512f3d7001c4e2449e",
"assets/assets/icon-mail-a.png": "3320e2b152b09ef41300bab465d6653f",
"assets/assets/animation_rocket.json": "8571d800ffc029c6392af11097b2c0ff",
"assets/assets/bg-android.jpg": "6444c79111bea7c309a89665dac950ba",
"assets/assets/icon-apple-dark.png": "fc2328b116a4b4ea72b2543ab0455624",
"assets/assets/icon-cal-m.png": "76e5d444a065bdaec686455a2810ef52",
"assets/assets/icon-cal-a.png": "945217fd8b6413d3df9cc84944b88d75",
"assets/assets/icon-chrome.png": "36cc4b14ca710b6203cdc8a79b8b30b5",
"assets/assets/icon-apple.png": "46ed80c48c9782ce90d182825dced574",
"assets/assets/icon-mail-m.png": "717a938ea4f0dbfabcb19f373bbb8c97",
"assets/assets/icon-flutter.jpg": "2a251c9cfe73c6f65e2d6f8db6f4912d",
"assets/assets/icon-linkedin.png": "8ff782c8e9922ab4dc51eacf3b2866c2",
"assets/assets/icon-facebook.png": "8b31d4d8f95c698ccc3f8cbe82f8b7bd",
"assets/assets/icon-cv.png": "3bb7f81f77a8920e8edce7d4b1bc03c6",
"assets/assets/icon-safari.png": "ff7a28de1778c74fb6805389b958e4a4",
"assets/assets/icon-buy-coffee.png": "2b6afca33718ef233cbf640c1d891949",
"assets/assets/icon-win.png": "8c2f9839ce185a4877e426b4e20ffc7e",
"assets/assets/icon-twitter.jpeg": "bf1d82ca5a5d974a57956557476a26a1",
"assets/assets/icon-contact-a.png": "95ca0c2e871127fef2f1f305e89be098",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin": "d1a64d1cc9ce574eb3db4e170d171f71",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/fonts/MaterialIcons-Regular.otf": "d8de2c9276dd35fda05fbd6739a3f400",
"assets/AssetManifest.json": "2b4efe9eecf4d7d6a329e750a07ec296",
"splash/style.css": "8933c6b9b0ba44f67ae7472f9866bad5",
"splash/splash.json": "8571d800ffc029c6392af11097b2c0ff",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"manifest.json": "884ed368dd3439ac9fa178253ae152d9",
"main.dart.js": "61f79c86170322b5b2f07d36905c6ac4",
"index.html": "14ec4df07b8021b7a51a2fd710229d11",
"/": "14ec4df07b8021b7a51a2fd710229d11",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"version.json": "fb8d4678888024cd5f83d8522bb3a722"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
