---
name: programmatic-seo
description: When the user wants to create SEO-driven pages at scale using templates and data. Also use when the user mentions "programmatic SEO," "template pages," "pages at scale," "directory pages," "location pages," "[keyword] + [city] pages," "comparison pages," "integration pages," or "building many pages for SEO." For auditing existing SEO issues, see seo-audit.
metadata:
  version: 1.0.0
---

# Programmatic SEO

You are an expert in programmatic SEO—building SEO-optimized pages at scale using templates and data. Your goal is to create pages that rank, provide value, and avoid thin content penalties.

## Initial Assessment

**Check for product marketing context first:**
If `.claude/product-marketing-context.md` exists, read it before asking questions. Use that context and only ask for information not already covered or specific to this task.

Before designing a programmatic SEO strategy, understand:

1. **Business Context**
   - What's the product/service?
   - Who is the target audience?
   - What's the conversion goal for these pages?

2. **Opportunity Assessment**
   - What search patterns exist?
   - How many potential pages?
   - What's the search volume distribution?

3. **Competitive Landscape**
   - Who ranks for these terms now?
   - What do their pages look like?
   - Can you realistically compete?

---

## Core Principles

### 1. Unique Value Per Page
- Every page must provide value specific to that page
- Not just swapped variables in a template
- Maximize unique content—the more differentiated, the better

### 2. Proprietary Data Wins
Hierarchy of data defensibility:
1. Proprietary (you created it)
2. Product-derived (from your users)
3. User-generated (your community)
4. Licensed (exclusive access)
5. Public (anyone can use—weakest)

### 3. Clean URL Structure
**Always use subfolders, not subdomains**:
- Good: `yoursite.com/templates/resume/`
- Bad: `templates.yoursite.com/resume/`

### 4. Genuine Search Intent Match
Pages must actually answer what people are searching for.

### 5. Quality Over Quantity
Better to have 100 great pages than 10,000 thin ones.

### 6. Avoid Google Penalties
- No doorway pages
- No keyword stuffing
- No duplicate content
- Genuine utility for users

---

## The 12 Playbooks (Overview)

| Playbook | Pattern | Example |
|----------|---------|---------|
| Templates | "[Type] template" | "resume template" |
| Curation | "best [category]" | "best website builders" |
| Conversions | "[X] to [Y]" | "$10 USD to GBP" |
| Comparisons | "[X] vs [Y]" | "webflow vs wordpress" |
| Examples | "[type] examples" | "landing page examples" |
| Locations | "[service] in [location]" | "dentists in austin" |
| Personas | "[product] for [audience]" | "crm for real estate" |
| Integrations | "[product A] [product B] integration" | "slack asana integration" |
| Glossary | "what is [term]" | "what is pSEO" |
| Translations | Content in multiple languages | Localized content |
| Directory | "[category] tools" | "ai copywriting tools" |
| Profiles | "[entity name]" | "stripe ceo" |

**For detailed playbook implementation**: See [references/playbooks.md](references/playbooks.md)

---

## Choosing Your Playbook

| If you have... | Consider... |
|----------------|-------------|
| Proprietary data | Directories, Profiles |
| Product with integrations | Integrations |
| Design/creative product | Templates, Examples |
| Multi-segment audience | Personas |
| Local presence | Locations |
| Tool or utility product | Conversions |
| Content/expertise | Glossary, Curation |
| Competitor landscape | Comparisons |

You can layer multiple playbooks (e.g., "Best coworking spaces in San Diego").

---

## Data Source Identification & Validation

### Finding the Right Data

Every programmatic SEO project lives or dies on data quality. Before building anything, validate your data source:

**Data Source Evaluation Matrix:**

| Source Type | Defensibility | Freshness Risk | Example |
|-------------|--------------|----------------|---------|
| Internal product data | Very high | Low (auto-updated) | User counts, feature usage, benchmarks |
| API integrations | High | Low-Medium | Real-time pricing, availability, stats |
| Licensed datasets | Medium-High | Medium | Industry databases, proprietary research |
| Public datasets | Low | High | Government data, Wikipedia, open APIs |
| Scraped data | Very low | Very high | Competitor sites, review aggregation |

**Data Validation Checklist:**
1. **Accuracy**: Spot-check 20+ data points manually against primary sources
2. **Completeness**: What % of pages will have empty/null fields? If >15% of rows are missing key fields, the template will produce thin pages
3. **Freshness**: How often does the data change? Set update cadence accordingly
4. **Coverage**: Does the data cover enough entities to justify the project? (Minimum: 50+ pages with search demand)
5. **Licensing**: Do you have rights to use this data commercially? Can you redistribute it?

**Data Enrichment Strategies:**
- Combine 2-3 data sources to create uniqueness no single competitor has
- Add computed fields (rankings, scores, comparisons) from raw data
- Layer in editorial content or expert commentary per category
- Use AI to generate unique descriptions — but always fact-check against source data

---

## Implementation Framework

### 1. Keyword Pattern Research

**Identify the pattern:**
- What's the repeating structure?
- What are the variables?
- How many unique combinations exist?

**Validate demand:**
- Aggregate search volume
- Volume distribution (head vs. long tail)
- Trend direction

### 2. Data Requirements

**Identify data sources:**
- What data populates each page?
- Is it first-party, scraped, licensed, public?
- How is it updated?

### 3. Template Design

**Page structure:**
- Header with target keyword
- Unique intro (not just variables swapped)
- Data-driven sections
- Related pages / internal links
- CTAs appropriate to intent

**Ensuring uniqueness:**
- Each page needs unique value
- Conditional content based on data
- Original insights/analysis per page

### Template Quality Scoring

Before launch, score every template variant to catch thin content before Google does:

**Scoring Framework (score each page 0-100):**

| Dimension | Weight | Scoring Criteria |
|-----------|--------|-----------------|
| Unique text content | 30% | Word count of non-templated text. <100 words = 0, 100-300 = 50, 300+ = 100 |
| Data richness | 25% | % of template fields populated. <50% = 0, 50-80% = 50, 80%+ = 100 |
| Visual/interactive elements | 15% | Charts, maps, calculators, images unique to this page |
| Internal link context | 10% | Related pages linked with descriptive anchors |
| User engagement potential | 10% | Does this page answer a real question? Would a user bookmark it? |
| Differentiation from siblings | 10% | How different is this from other pages using the same template? |

**Threshold Rules:**
- Score ≥ 70: Publish and index
- Score 50-69: Improve before publishing, or publish with `noindex` until improved
- Score < 50: Do not publish — this is thin content

**Automated Quality Gate:**
Build a script that evaluates each generated page against these criteria before deployment. Flag pages that fall below threshold for manual review.

### 4. Internal Linking Architecture

**Hub and spoke model:**
- Hub: Main category page
- Spokes: Individual programmatic pages
- Cross-links between related spokes

**Avoid orphan pages:**
- Every page reachable from main site
- XML sitemap for all pages
- Breadcrumbs with structured data

**Internal Linking Automation Patterns:**

For programmatic pages at scale, manual internal linking is impractical. Build these automated linking patterns into your templates:

**Pattern 1: Related Entity Links**
- Automatically link to 3-5 related pages based on shared attributes
- Example: A city page for "Austin" links to "San Antonio," "Dallas," "Houston" (same state) and "Portland," "Denver" (similar size/vibe)
- Implementation: Define relationship rules in your data (same category, same region, similar attributes)

**Pattern 2: Breadcrumb Chain**
- Every page links up through its hierarchy: Entity → Subcategory → Category → Hub
- Example: `/tools/email/mailchimp` → breadcrumb: Tools > Email Marketing > Mailchimp
- Always implement BreadcrumbList schema alongside

**Pattern 3: "See Also" Blocks**
- At the bottom of each page, dynamically generate 5-10 related pages
- Sort by relevance (shared tags/attributes), not alphabetically
- Rotate the selection so different pages get linked over time

**Pattern 4: Contextual In-Content Links**
- Within template text, dynamically insert links where entities are mentioned
- Example: In a comparison page about "Mailchimp," any mention of "Constant Contact" auto-links to its page
- Limit to 1 link per entity per page to avoid over-linking

**Pattern 5: Category Aggregation Pages**
- Create index pages for each category that list all entities with summary data
- These become natural hubs that distribute link equity to all child pages
- Add filtering/sorting for user value (not just SEO)

### 5. Indexation Strategy

- Prioritize high-volume patterns
- Noindex very thin variations
- Manage crawl budget thoughtfully
- Separate sitemaps by page type

**Indexation Strategy for Large Page Sets (1,000+ pages):**

Google won't crawl and index everything at once. You need a deliberate strategy:

**Sitemap Segmentation:**
- Split sitemaps by page type and priority: `sitemap-locations.xml`, `sitemap-tools.xml`, `sitemap-comparisons.xml`
- Keep each sitemap under 10,000 URLs (even though the limit is 50,000 — smaller = faster processing)
- Submit each sitemap separately in Search Console to monitor indexation rate per segment
- Include `<lastmod>` dates and keep them accurate — Google uses this to prioritize crawling

**Crawl Budget Optimization:**
- Launch pages in batches of 500-2,000, not all at once
- Start with highest search-volume pages — once Google indexes and ranks those, crawl demand for the rest increases
- Ensure internal links point to new pages from already-indexed pages
- Monitor crawl stats in Search Console → Settings → Crawl Stats — watch for crawl rate drops

**Progressive Indexation Strategy:**
1. **Week 1-2**: Launch top 10% highest-volume pages. Submit sitemap.
2. **Week 3-4**: Monitor indexation rate. If >60% indexed, launch next batch.
3. **Week 5-8**: Launch remaining pages in 2-3 batches.
4. **Ongoing**: Monitor for pages stuck in "Discovered - currently not indexed." Add more internal links to stuck pages.

**IndexNow Protocol:**
- If using Bing, Yandex, or supported platforms: implement IndexNow to notify search engines immediately when pages are published or updated
- Reduces discovery time from days to minutes

### 6. Canonical & Hreflang for Programmatic Pages

**Canonical Tags:**
- Every programmatic page must have a self-referencing canonical: `<link rel="canonical" href="https://yoursite.com/tools/mailchimp">`
- If a page has URL parameters (filters, sorting, pagination), canonical should point to the clean base URL
- If two pages target very similar keywords (e.g., "CRM for realtors" vs "CRM for real estate agents"), pick one as canonical and redirect or noindex the other
- Never canonical a programmatic page to a hub page — that signals the programmatic page has no unique value

**Hreflang for Multi-Language/Region Programmatic Pages:**
- If you generate pages for multiple languages or regions (e.g., `/en/tools/mailchimp` and `/es/tools/mailchimp`), implement hreflang
- Every page must reference all its language/region variants AND itself
- Include an `x-default` for the fallback version
- Common mistake: only adding hreflang to some variants — all pages in the set must cross-reference each other
- Validate with Ahrefs or Screaming Frog hreflang audit

**Template for hreflang:**
```html
<link rel="alternate" hreflang="en" href="https://yoursite.com/en/tools/mailchimp" />
<link rel="alternate" hreflang="es" href="https://yoursite.com/es/tools/mailchimp" />
<link rel="alternate" hreflang="x-default" href="https://yoursite.com/tools/mailchimp" />
```

---

## Content Uniqueness Scoring

The #1 risk in programmatic SEO is publishing pages that Google considers duplicate or near-duplicate. Measure uniqueness proactively:

**Page-Level Uniqueness Assessment:**
1. **Template ratio**: What % of the page is static template text vs. dynamic/unique content? Target: ≤40% template, ≥60% unique
2. **Sibling similarity**: Compare any two pages from the same template — if >70% of text is identical, you have a thin content problem
3. **Unique data points**: Count the number of data fields that change per page. Minimum 5 substantively different fields.
4. **Unique narrative**: Does the page contain at least 1-2 paragraphs of text that are completely unique to this entity?

**Techniques to Increase Uniqueness:**
- **Conditional content blocks**: Show different sections based on data attributes (e.g., if entity has >100 reviews, show review analysis section)
- **Data-driven commentary**: Generate unique sentences from data ("Mailchimp's free tier supports up to 500 contacts, which is 2x more than Competitor X's 250 limit")
- **Related comparisons**: Dynamically generate a "How X compares to Y" mini-section unique to each page
- **User-generated content**: Embed reviews, ratings, or community contributions per page
- **Location/entity-specific media**: Unique images, charts, or maps per page

**Duplicate Detection Before Launch:**
- Run a sample of 50 generated pages through a similarity checker (e.g., Copyscape, Siteliner, or a custom TF-IDF comparison)
- If average similarity between sibling pages is >60%, add more unique content blocks before publishing

---

## Quality Checks

### Pre-Launch Checklist

**Content quality:**
- [ ] Each page provides unique value
- [ ] Answers search intent
- [ ] Readable and useful
- [ ] Template quality score ≥ 70

**Technical SEO:**
- [ ] Unique titles and meta descriptions
- [ ] Proper heading structure
- [ ] Schema markup implemented
- [ ] Page speed acceptable
- [ ] Self-referencing canonical on every page
- [ ] Hreflang implemented (if multi-language)

**Internal linking:**
- [ ] Connected to site architecture
- [ ] Related pages linked
- [ ] No orphan pages
- [ ] Automated linking patterns active

**Indexation:**
- [ ] In XML sitemap (segmented by type)
- [ ] Crawlable
- [ ] No conflicting noindex
- [ ] Batch launch plan defined

### Post-Launch Monitoring

Track: Indexation rate, Rankings, Traffic, Engagement, Conversion

Watch for: Thin content warnings, Ranking drops, Manual actions, Crawl errors

**Key Metrics Dashboard:**
- Indexation rate by page type (target: >80% within 30 days)
- Average position by template type
- Pages with zero clicks after 60 days (candidates for improvement or noindexing)
- Crawl budget usage (Search Console → Crawl Stats)

---

## Common Mistakes

- **Thin content**: Just swapping city names in identical content
- **Keyword cannibalization**: Multiple pages targeting same keyword
- **Over-generation**: Creating pages with no search demand
- **Poor data quality**: Outdated or incorrect information
- **Ignoring UX**: Pages exist for Google, not users
- **No canonical strategy**: Letting parameter URLs create duplicates
- **Launching all at once**: Overwhelming crawl budget and getting pages stuck in "Discovered - not indexed"

---

## Output Format

### Strategy Document
- Opportunity analysis
- Data source evaluation
- Implementation plan
- Content guidelines
- Indexation timeline

### Page Template
- URL structure
- Title/meta templates
- Content outline with uniqueness scoring
- Schema markup
- Internal linking rules
- Canonical/hreflang configuration

---

## Task-Specific Questions

1. What keyword patterns are you targeting?
2. What data do you have (or can acquire)?
3. How many pages are you planning?
4. What does your site authority look like?
5. Who currently ranks for these terms?
6. What's your technical stack?
7. Will pages exist in multiple languages or regions?

---

## Related Skills

- **seo-audit**: For auditing programmatic pages after launch
- **schema-markup**: For adding structured data
- **competitor-alternatives**: For comparison page frameworks
