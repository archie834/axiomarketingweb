# Website Launch Checklist — Apply to Every Site

Everything done on axiomarketing.co.uk. Apply this to every new website build.

---

## 1. Meta & SEO Tags
- [ ] `<title>` — Business name + main keyword + location
- [ ] `<meta name="description">` — 150-160 chars, include keyword + USP
- [ ] `<meta name="robots" content="index, follow">`
- [ ] `<link rel="canonical" href="https://yourdomain.co.uk/">`

## 2. Open Graph (Social Sharing)
- [ ] `og:title`
- [ ] `og:description`
- [ ] `og:url`
- [ ] `og:image` — 1200x630px image
- [ ] `og:type` — `website`
- [ ] `og:locale` — `en_GB`
- [ ] `twitter:card` — `summary_large_image`
- [ ] `twitter:image`

## 3. Favicon
- [ ] `/favicon.ico`
- [ ] `/favicon-48x48.png`
- [ ] `/favicon-96x96.png`
- [ ] `/favicon-144x144.png`
- [ ] `/apple-touch-icon.png` (180x180)
- [ ] All linked in `<head>`

## 4. Schema.org (Structured Data)
- [ ] `WebSite` schema with `name` + `url`
- [ ] `LocalBusiness` schema with:
  - `@type`, `@id`, `name`, `url`, `description`
  - `telephone` (international format e.g. `+441538712402`)
  - `email`
  - `image` (og-image URL)
  - `address` (PostalAddress with locality, region, country)
  - `geo` (GeoCoordinates with lat/long)
  - `areaServed` (list of cities/regions)
  - `priceRange`
  - `aggregateRating` (once reviews exist)
  - `knowsAbout` (list of services)
  - `sameAs` array — Facebook, Instagram, TikTok, LinkedIn, **Google Business Profile link**
  - `additionalType` if secondary type needed

## 5. Performance — Images
- [ ] Compress all images with `sharp` (JPEG q75 mozjpeg, PNG palette q95)
- [ ] Add explicit `width` and `height` attributes to every `<img>` (prevents CLS)
- [ ] Add `loading="lazy" decoding="async"` to all below-the-fold images
- [ ] Hero/above-fold images: keep eager (no lazy), ensure small file size
- [ ] Never serve a 1000px+ image at 50px display size — set `width`/`height` attrs to displayed size when CSS overrides only one dimension

## 6. Performance — Fonts
- [ ] Load Google Fonts asynchronously:
```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="preload" as="style" href="https://fonts.googleapis.com/css2?family=...">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=..." media="print" onload="this.media='all'">
<noscript><link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=..."></noscript>
```

## 7. Performance — JavaScript
- [ ] Do NOT use Tailwind CDN (`cdn.tailwindcss.com`) — check if Tailwind classes are actually used; if not, remove it entirely
- [ ] If Tailwind IS needed, use the CLI build step to generate a minimal CSS file
- [ ] Remove any dead/hidden `<img>` elements that still get fetched (display:none does NOT prevent image download)
- [ ] GA4: load with `async` attribute

## 8. Accessibility
- [ ] Wrap main content in `<main>` tag
- [ ] All `<select>` elements have an `aria-label` or associated `<label>`
- [ ] All images have descriptive `alt` text (decorative images use `alt=""`)
- [ ] Navigation wrapped in `<nav>` with `aria-label`

## 9. Google Analytics (GA4)
- [ ] Add GA4 snippet in `<head>` (async):
```html
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

## 10. Sitemap
- [ ] Create `sitemap.xml` listing all canonical URLs with `lastmod`, `changefreq`, `priority`
- [ ] Submit to Google Search Console
- [ ] Submit to Bing Webmaster Tools

## 11. Robots.txt
- [ ] Create `robots.txt` — allow all, reference sitemap

## 12. Backlinks (Footer Credit)
- [ ] Add "Website by Axio Marketing → axiomarketing.co.uk" to footer of every client/example site built
- [ ] Use `target="_blank" rel="noopener"` and subtle styling (low opacity)

## 13. Google Search Console Verification
- [ ] Upload HTML verification file to site root
- [ ] Verify domain in GSC
- [ ] Submit sitemap
- [ ] Request indexing for all pages via URL Inspection

## 14. Vercel / Deployment
- [ ] Ensure `www` and apex domain both point to Vercel
- [ ] No duplicate domains serving identical content (causes duplicate indexing)
- [ ] Any old/spare domains → set as 308 permanent redirects to the canonical domain
