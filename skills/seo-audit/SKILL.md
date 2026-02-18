---
name: seo-audit
description: When the user wants to audit, review, or diagnose SEO issues on their site. Also use when the user mentions "SEO audit," "technical SEO," "why am I not ranking," "SEO issues," "on-page SEO," "meta tags review," or "SEO health check." For building pages at scale to target keywords, see programmatic-seo. For adding structured data, see schema-markup.
metadata:
  version: 1.0.0
---

# SEO Audit

You are an expert in search engine optimization. Your goal is to identify SEO issues and provide actionable recommendations to improve organic search performance.

## Initial Assessment

**Check for product marketing context first:**
If `.claude/product-marketing-context.md` exists, read it before asking questions. Use that context and only ask for information not already covered or specific to this task.

Before auditing, understand:

1. **Site Context**
   - What type of site? (SaaS, e-commerce, blog, etc.)
   - What's the primary business goal for SEO?
   - What keywords/topics are priorities?

2. **Current State**
   - Any known issues or concerns?
   - Current organic traffic level?
   - Recent changes or migrations?

3. **Scope**
   - Full site audit or specific pages?
   - Technical + on-page, or one focus area?
   - Access to Search Console / analytics?

---

## Audit Framework

### ⚠️ Important: Schema Markup Detection Limitation

**`web_fetch` and `curl` cannot reliably detect structured data / schema markup.**

Many CMS plugins (AIOSEO, Yoast, RankMath) inject JSON-LD via client-side JavaScript — it won't appear in static HTML or `web_fetch` output (which strips `<script>` tags during conversion).

**To accurately check for schema markup, use one of these methods:**
1. **Browser tool** — render the page and run: `document.querySelectorAll('script[type="application/ld+json"]')`
2. **Google Rich Results Test** — https://search.google.com/test/rich-results
3. **Screaming Frog export** — if the client provides one, use it (SF renders JavaScript)

**Never report "no schema found" based solely on `web_fetch` or `curl`.** This has led to false audit findings in production.

### Priority Order
1. **Crawlability & Indexation** (can Google find and index it?)
2. **Technical Foundations** (is the site fast and functional?)
3. **On-Page Optimization** (is content optimized?)
4. **Content Quality** (does it deserve to rank?)
5. **Authority & Links** (does it have credibility?)

---

## Technical SEO Audit

### Crawlability

**Robots.txt**
- Check for unintentional blocks
- Verify important pages allowed
- Check sitemap reference

**XML Sitemap**
- Exists and accessible
- Submitted to Search Console
- Contains only canonical, indexable URLs
- Updated regularly
- Proper formatting

**Site Architecture**
- Important pages within 3 clicks of homepage
- Logical hierarchy
- Internal linking structure
- No orphan pages

**Crawl Budget Issues** (for large sites)
- Parameterized URLs under control
- Faceted navigation handled properly
- Infinite scroll with pagination fallback
- Session IDs not in URLs

### Indexation

**Index Status**
- site:domain.com check
- Search Console coverage report
- Compare indexed vs. expected

**Indexation Issues**
- Noindex tags on important pages
- Canonicals pointing wrong direction
- Redirect chains/loops
- Soft 404s
- Duplicate content without canonicals

**Canonicalization**
- All pages have canonical tags
- Self-referencing canonicals on unique pages
- HTTP → HTTPS canonicals
- www vs. non-www consistency
- Trailing slash consistency

### Redirect Chain Audit

**Redirect Chain Detection Checklist:**
1. Crawl entire site with Screaming Frog or Sitebulb — filter for 3xx chains
2. Flag any chain with 3+ hops (ideal: every redirect resolves in 1 hop)
3. Check for redirect loops (A→B→C→A pattern)
4. Identify mixed-protocol chains (HTTP→HTTPS→final URL)
5. Audit old vanity URLs, campaign links, and rebranded paths
6. Check for chains caused by trailing slash normalization (e.g., `/page` → `/page/` → final)

**Severity scoring:**
- **Critical**: Redirect loops (pages become inaccessible)
- **High**: Chains of 4+ hops (significant PageRank dilution, crawl waste)
- **Medium**: Chains of 2-3 hops (minor PageRank dilution)
- **Low**: Single redirects that are functionally correct

**Fix pattern:** Always update the origin to point directly to the final destination URL. Batch-update internal links that point to redirected URLs.

### Site Speed & Core Web Vitals

**Core Web Vitals — Detailed Assessment**

| Metric | Good | Needs Improvement | Poor |
|--------|------|-------------------|------|
| LCP (Largest Contentful Paint) | ≤ 2.5s | 2.5–4.0s | > 4.0s |
| INP (Interaction to Next Paint) | ≤ 200ms | 200–500ms | > 500ms |
| CLS (Cumulative Layout Shift) | ≤ 0.1 | 0.1–0.25 | > 0.25 |

**LCP Optimization Checklist:**
- Identify the LCP element (usually hero image, heading, or video poster)
- Preload LCP resource with `<link rel="preload">`
- Serve images from CDN with proper sizing (`srcset`)
- Avoid lazy-loading the LCP image — it must load eagerly
- Reduce server response time (TTFB < 800ms target)
- Eliminate render-blocking CSS/JS above the fold

**INP Optimization Checklist:**
- Profile long tasks in Chrome DevTools Performance panel
- Break JavaScript tasks > 50ms into smaller chunks using `requestIdleCallback` or `scheduler.yield()`
- Debounce/throttle event handlers (scroll, resize, input)
- Move heavy computation to Web Workers
- Minimize main thread work during page interactions

**CLS Optimization Checklist:**
- Set explicit `width` and `height` on all images/video/embeds
- Reserve space for ads and dynamic content with `min-height`
- Use `font-display: swap` with size-adjusted fallback fonts to prevent layout shift on font load
- Avoid inserting content above existing content after initial load
- Use `contain: layout` on animation containers

**Speed Factors**
- Server response time (TTFB)
- Image optimization
- JavaScript execution
- CSS delivery
- Caching headers
- CDN usage
- Font loading

**Tools**
- PageSpeed Insights (uses CrUX field data + Lighthouse lab data)
- WebPageTest (filmstrip comparison, waterfall analysis)
- Chrome DevTools (Performance panel for INP, Lighthouse for LCP/CLS)
- Search Console Core Web Vitals report (monitors field data trends)

### Mobile-Friendliness

- Responsive design (not separate m. site)
- Tap target sizes
- Viewport configured
- No horizontal scroll
- Same content as desktop
- Mobile-first indexing readiness

### Security & HTTPS

- HTTPS across entire site
- Valid SSL certificate
- No mixed content
- HTTP → HTTPS redirects
- HSTS header (bonus)

### URL Structure

- Readable, descriptive URLs
- Keywords in URLs where natural
- Consistent structure
- No unnecessary parameters
- Lowercase and hyphen-separated

---

## On-Page SEO Audit

### Title Tags

**Check for:**
- Unique titles for each page
- Primary keyword near beginning
- 50-60 characters (visible in SERP)
- Compelling and click-worthy
- Brand name placement (end, usually)

**Common issues:**
- Duplicate titles
- Too long (truncated)
- Too short (wasted opportunity)
- Keyword stuffing
- Missing entirely

### Meta Descriptions

**Check for:**
- Unique descriptions per page
- 150-160 characters
- Includes primary keyword
- Clear value proposition
- Call to action

**Common issues:**
- Duplicate descriptions
- Auto-generated garbage
- Too long/short
- No compelling reason to click

### Heading Structure

**Check for:**
- One H1 per page
- H1 contains primary keyword
- Logical hierarchy (H1 → H2 → H3)
- Headings describe content
- Not just for styling

**Common issues:**
- Multiple H1s
- Skip levels (H1 → H3)
- Headings used for styling only
- No H1 on page

### Content Optimization

**Primary Page Content**
- Keyword in first 100 words
- Related keywords naturally used
- Sufficient depth/length for topic
- Answers search intent
- Better than competitors

**Thin Content Issues**
- Pages with little unique content
- Tag/category pages with no value
- Doorway pages
- Duplicate or near-duplicate content

### Image Optimization

**Check for:**
- Descriptive file names
- Alt text on all images
- Alt text describes image
- Compressed file sizes
- Modern formats (WebP)
- Lazy loading implemented
- Responsive images

### Internal Linking Strategy & Anchor Text Optimization

**Internal Link Audit Process:**
1. Crawl the site and export internal links with anchor text
2. Map link equity distribution — identify pages with high inlinks vs. orphans
3. Check that highest-priority pages receive the most internal links
4. Verify anchor text is descriptive and keyword-relevant (not "click here" or "read more")

**Anchor Text Best Practices:**
- Use natural, descriptive text that tells users and Google what the target page is about
- Vary anchor text — don't use identical exact-match anchors across every link
- Include the target page's primary keyword in at least 30-50% of internal anchors
- Avoid generic anchors ("learn more", "this page") for important pages
- Never over-optimize — if every internal link to `/pricing` says "best pricing software," it looks manipulative

**Strategic Internal Linking Framework:**
- **Topical clusters**: Hub pages link to all spoke articles; spokes link back to hub and to each other
- **Contextual links**: Add 3-5 relevant internal links per 1,000 words of content
- **Navigation links**: Important category/pillar pages should be in main navigation or footer
- **Recency links**: New content should link to existing related pages (and vice versa — update old pages to link to new ones)
- **Conversion path links**: Informational content should link to commercial pages where contextually appropriate

**Red Flags:**
- Pages with 0-1 internal links pointing to them (orphans)
- Important pages only linked from footer/sidebar (weak contextual signal)
- Over-linked pages (100+ internal links on a single page dilute value)
- Broken internal links (404s waste crawl budget and link equity)

### Keyword Targeting

**Per Page**
- Clear primary keyword target
- Title, H1, URL aligned
- Content satisfies search intent
- Not competing with other pages (cannibalization)

**Site-Wide**
- Keyword mapping document
- No major gaps in coverage
- No keyword cannibalization
- Logical topical clusters

---

## Content Quality Assessment

### E-E-A-T Signals

**Experience**
- First-hand experience demonstrated
- Original insights/data
- Real examples and case studies

**Expertise**
- Author credentials visible
- Accurate, detailed information
- Properly sourced claims

**Authoritativeness**
- Recognized in the space
- Cited by others
- Industry credentials

**Trustworthiness**
- Accurate information
- Transparent about business
- Contact information available
- Privacy policy, terms
- Secure site (HTTPS)

### Content Decay Detection

Content decay = pages that previously ranked well but are now declining in traffic or position. This is one of the highest-ROI areas to audit.

**How to Identify Decaying Content:**
1. **Search Console method**: Compare last 3 months vs. previous 3 months — filter for pages with declining clicks AND declining average position
2. **Analytics method**: Filter landing pages by organic traffic, compare YoY — flag pages with >20% traffic decline
3. **Rank tracking method**: Pages that dropped 5+ positions for their primary keyword over 90 days

**Content Decay Severity Tiers:**
- **Critical**: Was in top 3, now position 10+ (lost featured snippet or top spots)
- **High**: Was on page 1, now page 2-3 (still recoverable quickly)
- **Medium**: Gradual position erosion over 6+ months (content aging out)
- **Low**: Seasonal fluctuation (verify against historical patterns before acting)

**Common Causes & Fixes:**
| Cause | Signal | Fix |
|-------|--------|-----|
| Outdated information | Old dates, dead links, stale stats | Refresh data, update examples, add current year |
| Competitor published better content | New pages outranking you | Expand depth, add unique data, improve UX |
| Search intent shifted | SERP now shows different content type | Re-evaluate intent, potentially rewrite format |
| Lost backlinks | Referring domains declined | Outreach for new links, update broken link targets |
| Keyword cannibalization | Another page now competing | Consolidate pages or differentiate targeting |

**Refresh Cadence Recommendation:**
- High-traffic pages: Review quarterly
- Medium-traffic pages: Review every 6 months
- Low-traffic evergreen: Review annually
- News/trend content: Review monthly or retire

### Content Depth

- Comprehensive coverage of topic
- Answers follow-up questions
- Better than top-ranking competitors
- Updated and current

### User Engagement Signals

- Time on page
- Bounce rate in context
- Pages per session
- Return visits

---

## Link Profile Assessment

### Backlink Audit Framework

Use Ahrefs, Semrush, or Moz to pull the full backlink profile. Evaluate across these dimensions:

**Domain Authority / Rating:**
- Check site's DR/DA relative to competitors ranking for target keywords
- If competitors average DR 60+ and you're DR 25, content alone won't close the gap — link building is a priority

**Link Quality Scoring:**
- **High quality**: Editorially placed, from relevant topical sites, DR 40+, real traffic
- **Medium quality**: Guest posts on relevant blogs, niche directories, DR 20-40
- **Low quality**: Blog comments, forum signatures, low-DR sites with no traffic
- **Toxic**: PBN links, link farms, sitewide footer links from unrelated sites, hacked sites

**Toxic Backlink Identification:**
1. Export all backlinks and sort by anchor text — flag exact-match keyword anchors from low-quality domains
2. Check for unnatural patterns: sudden spikes in links, foreign-language sites unrelated to your niche
3. Look for links from penalized domains (zero traffic, zero keywords in Ahrefs)
4. Check for sitewide links (every page of site X links to you) — usually toxic unless the site is legitimately relevant

**When to Disavow:**
- Only if you've received a manual action or see clear evidence of a negative SEO attack
- Google's algorithms are generally good at ignoring low-quality links — don't disavow preemptively
- If disavowing: upload a disavow file via Search Console; disavow at domain level (`domain:spamsite.com`), not per-URL

**Anchor Text Distribution Audit:**
- Healthy profile: ~30-40% branded, ~20-30% naked URLs, ~10-20% partial-match, ~5-10% exact-match, remainder generic/misc
- Unhealthy profile: 50%+ exact-match keyword anchors = likely over-optimized, risk of penalty

---

## AI Overview / SGE Optimization

Google AI Overviews (formerly SGE) are changing how traffic flows from search results. Audit for AI Overview exposure:

**AI Overview Audit Checklist:**
1. Search your top 20 keywords manually — note which trigger AI Overviews
2. Check if your site is cited in any AI Overviews (look for your domain in the sources)
3. Identify content gaps: What questions does the AI Overview answer that your page doesn't address?

**Content Patterns That Get Cited in AI Overviews:**
- Direct, concise answers to specific questions (2-3 sentence summaries)
- Structured data (FAQ schema, HowTo schema) that makes content machine-parseable
- Lists and step-by-step formats (AI Overviews frequently pull numbered lists)
- Authoritative, well-sourced content with clear E-E-A-T signals
- Content organized with clear heading hierarchy matching common questions

**Optimization Tactics:**
- Add a "Key Takeaways" or summary box at the top of long-form content
- Structure content as Q&A where appropriate — each H2/H3 as a question, first paragraph as a direct answer
- Include structured data (FAQ, HowTo) to increase parsability
- Target "People Also Ask" questions within your content
- Provide unique data, original research, or proprietary insights — AI Overviews prefer citing authoritative primary sources

**Traffic Impact Assessment:**
- For keywords where AI Overviews appear: expect 20-60% CTR reduction for traditional blue links
- Prioritize keywords where AI Overviews do NOT appear (typically commercial/transactional intent)
- For informational keywords with AI Overviews: aim to be a cited source rather than fighting for blue-link clicks

---

## Common Issues by Site Type

### SaaS/Product Sites
- Product pages lack content depth
- Blog not integrated with product pages
- Missing comparison/alternative pages
- Feature pages thin on content
- No glossary/educational content

### E-commerce
- Thin category pages
- Duplicate product descriptions
- Missing product schema
- Faceted navigation creating duplicates
- Out-of-stock pages mishandled

### Content/Blog Sites
- Outdated content not refreshed
- Keyword cannibalization
- No topical clustering
- Poor internal linking
- Missing author pages

### Local Business
- Inconsistent NAP
- Missing local schema
- No Google Business Profile optimization
- Missing location pages
- No local content

---

## Output Format

### Audit Report Structure

**Executive Summary**
- Overall health assessment
- Top 3-5 priority issues
- Quick wins identified

**Technical SEO Findings**
For each issue:
- **Issue**: What's wrong
- **Impact**: SEO impact (High/Medium/Low)
- **Evidence**: How you found it
- **Fix**: Specific recommendation
- **Priority**: 1-5 or High/Medium/Low

**On-Page SEO Findings**
Same format as above

**Content Findings**
Same format as above

**Prioritized Action Plan**
1. Critical fixes (blocking indexation/ranking)
2. High-impact improvements
3. Quick wins (easy, immediate benefit)
4. Long-term recommendations

---

## References

- [AI Writing Detection](references/ai-writing-detection.md): Common AI writing patterns to avoid (em dashes, overused phrases, filler words)
- [AEO & GEO Patterns](references/aeo-geo-patterns.md): Content patterns optimized for answer engines and AI citation

---

## Tools Referenced

**Free Tools**
- Google Search Console (essential)
- Google PageSpeed Insights
- Bing Webmaster Tools
- Rich Results Test (**use this for schema validation — it renders JavaScript**)
- Mobile-Friendly Test
- Schema Validator

> **Note on schema detection:** `web_fetch` strips `<script>` tags (including JSON-LD) and cannot detect JS-injected schema. Always use the browser tool, Rich Results Test, or Screaming Frog for schema checks. See the warning at the top of the Audit Framework section.

**Paid Tools** (if available)
- Screaming Frog
- Ahrefs / Semrush
- Sitebulb
- ContentKing

---

## Task-Specific Questions

1. What pages/keywords matter most?
2. Do you have Search Console access?
3. Any recent changes or migrations?
4. Who are your top organic competitors?
5. What's your current organic traffic baseline?

---

## Related Skills

- **programmatic-seo**: For building SEO pages at scale
- **schema-markup**: For implementing structured data
- **page-cro**: For optimizing pages for conversion (not just ranking)
- **analytics-tracking**: For measuring SEO performance
