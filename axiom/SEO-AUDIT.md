# Axio Marketing — SEO Audit
*Generated: May 2026 | Location: Leek, Staffordshire, UK*

---

## CRITICAL ISSUES (Fix First)

### 1. Missing Meta Descriptions — ALL pages
Every page has zero meta description. This is one of the highest-impact quick wins.
- Google uses meta descriptions in SERPs → directly affects click-through rate
- Without them Google auto-generates snippets (often poor quality)

### 2. Title Tags Missing Location
Current:
- `Axio Marketing — Web Design & Advertising`
- `Digital Marketing — Axio Marketing`
- `SEO — Axio Marketing`
- etc.

All title tags are missing **Leek, Staffordshire** — the most important local SEO signal.

### 3. Zero Structured Data / Schema Markup
No JSON-LD anywhere on the site. Missing:
- `LocalBusiness` schema (or `ProfessionalService`)
- `WebSite` schema with `SearchAction`
- `Service` schema on each service page
- `FAQPage` schema (critical for AEO / Google AI Overviews)
- `Organization` schema

### 4. No NAP on Page (Name, Address, Phone)
- Phone is in the nav (good) but there is **no business address** anywhere on the site
- Google Local rankings require consistent NAP across the site + Google Business Profile
- No footer address block

### 5. H1 Tags Not Keyword-Optimised
- index.html H1: "GREAT BUSINESSES DESERVE TO BE FOUND" — zero local keywords
- Should include: "Web Design", "Staffordshire", or "Leek"

---

## HIGH PRIORITY ISSUES

### 6. No Open Graph / Social Meta Tags
No `og:title`, `og:description`, `og:image`, `og:url`, `og:type`, `twitter:card`
- Affects how pages look when shared on Facebook, LinkedIn, Twitter
- Facebook Ads traffic (which they sell) will land on pages with no OG = poor preview

### 7. No Canonical Tags
No `<link rel="canonical">` on any page — risk of duplicate content issues

### 8. No Sitemap.xml or Robots.txt
- No sitemap to tell Google what pages exist
- No robots.txt to guide crawlers

### 9. Images Missing Alt Text
- `AXIOM LOGO.png` (watermark): `alt=""` — should be descriptive
- `AXIOM LOGO ICON.png` (nav): has `alt="Axio"` — should be `alt="Axio Marketing logo"`
- Hero watermark image: empty alt

### 10. No Internal Linking Strategy
- Pages link to each other only through nav
- No contextual internal links in body copy (e.g. "our SEO service" linking to seo.html)
- No breadcrumbs

---

## ON-PAGE SEO ISSUES

### 11. Service Pages Thin on Content
Each service page has ~200 words of body copy. Google prefers 500–800+ words for service pages.

### 12. No FAQ Sections
No FAQ content anywhere = missing AEO opportunity (AI Overviews, Featured Snippets)
Questions like "How much does a website cost in Staffordshire?" are high-intent

### 13. No "Near Me" or Local Content
No copy addressing "web design near me", no mentions of nearby towns:
- Stoke-on-Trent, Macclesfield, Buxton, Cheadle, Congleton, Uttoxeter, Ashbourne

### 14. Copyright Year Wrong on Service Pages
- `© 2025` on all service pages (should be 2026)

### 15. No Google Analytics / Search Console Setup
No tracking scripts detected — can't measure SEO performance

---

## TECHNICAL SEO

### 16. No Viewport/Speed Optimisation Notes
- Tailwind CDN loaded on index.html (fine for now, impacts page speed slightly)
- Service pages use Google Fonts (render-blocking potential)
- No `<link rel="preconnect">` for external resources

### 17. Lang Attribute
- `<html lang="en">` ✓ Present on index.html — good
- Service pages also have `lang="en"` ✓

---

## AEO (ANSWER ENGINE OPTIMISATION) GAPS

### 18. No FAQ Schema
AI engines (ChatGPT, Perplexity, Google AI Overviews) pull from FAQ schema heavily.
Need Q&A blocks like:
- "How much does a website cost?"
- "How long does it take to build a website?"
- "What is included in the monthly fee?"
- "Do you build websites in Leek/Staffordshire?"

### 19. No HowTo or Process Schema
The 3-step process section is perfect for HowTo schema — currently not marked up

### 20. No Conversational Headings
All headings are statement-style ("THE PROCESS", "OUR WORK") — not question-led.
AI engines rank pages higher that answer specific questions with h2/h3 question headings.

---

## QUICK WINS SUMMARY (priority order)

1. Add meta descriptions to all 5 pages
2. Fix all title tags to include location
3. Add LocalBusiness JSON-LD to index.html
4. Add Service JSON-LD to each service page
5. Add FAQPage JSON-LD with 5–6 questions to index.html
6. Add physical address to footer (NAP consistency)
7. Add Open Graph tags to all pages
8. Add canonical tags to all pages
9. Add "near me" and local area copy
10. Expand service page content with local keywords
11. Fix copyright year on service pages
12. Add preconnect hints for Google Fonts
