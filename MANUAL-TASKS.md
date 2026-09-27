# Manual Tasks — What YOU Need to Do for Every New Site

These cannot be done in code. You must do these yourself after launch.

---

## 1. Google Search Console
- [ ] Go to search.google.com/search-console
- [ ] Add property → Domain type → enter the domain
- [ ] Verify via HTML file (I'll create and deploy it)
- [ ] Once verified → Sitemaps → submit `https://yourdomain.co.uk/sitemap.xml`
- [ ] URL Inspection → inspect each page URL → click "Request Indexing"
  - Do this for every page in the sitemap (homepage + all subpages)

## 2. Google Analytics (GA4)
- [ ] Go to analytics.google.com
- [ ] Create a new Property → Web stream → enter domain
- [ ] Copy the Measurement ID (e.g. `G-XXXXXXXXXX`) → give it to me to add to the code
- [ ] Confirm it's working: Realtime → should show 1 active user when you visit the site

## 3. Google Business Profile
- [ ] Go to business.google.com
- [ ] Create or claim the listing for the business
- [ ] Set business name, category, address, phone, website URL, hours
- [ ] **Phone must match exactly what's on the website** (NAP consistency)
- [ ] Add photos (logo, interior, exterior, team)
- [ ] Verify the listing (postcard or phone call)
- [ ] Once live → copy the Share Profile link → give it to me to add to the schema

## 4. Bing Webmaster Tools
- [ ] Go to bing.com/webmasters
- [ ] Add site → enter domain
- [ ] Verify (easiest: auto-verify if already in GSC)
- [ ] Submit sitemap URL
- [ ] Use IndexNow to request fast indexing

## 5. Business Directories (Free Backlinks + Citations)
Submit to all of these — use the EXACT same Name, Address, Phone on every one:
- [ ] Yell.com
- [ ] Thomson Local (thomsonlocal.com)
- [ ] FreeIndex (freeindex.co.uk)
- [ ] Scoot (scoot.co.uk)
- [ ] Bark.com
- [ ] 192.com

## 6. Industry Directories (Marketing/Web Design)
- [ ] Clutch.co — create agency profile, add case studies
- [ ] DesignRush (designrush.com)
- [ ] GoodFirms (goodfirms.co)

## 7. Social Profiles
Make sure every social profile (Facebook, Instagram, LinkedIn, TikTok) has:
- [ ] Website URL set to the correct domain
- [ ] Business name matching exactly (NAP consistency)

## 8. Domain Management
- [ ] If you have any old/spare domains pointing at the site → contact me to set up 308 redirects
- [ ] Never have two domains serving identical content — always redirect one to the canonical domain
- [ ] Check Vercel domain settings after launch — fix any "DNS Change Recommended" warnings

## 9. PageSpeed Insights (After Launch)
- [ ] Run pagespeed.web.dev on the homepage
- [ ] Run on mobile AND desktop
- [ ] Screenshot results and send to me — I'll fix anything under 90

## 10. Ongoing
- [ ] Post on Google Business Profile regularly (updates, offers, photos) — signals to Google you're active
- [ ] Ask clients to leave Google reviews — boosts local ranking
- [ ] Check GSC monthly for coverage errors or manual actions

---

**NAP Rule:** Name · Address · Phone must be IDENTICAL everywhere:
website, GBP, Yell, Thomson, all directories. One mismatch = Google doesn't trust = no Knowledge Panel.
