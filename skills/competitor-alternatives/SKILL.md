---
name: competitor-alternatives
description: "When the user wants to create competitor comparison or alternative pages for SEO and sales enablement. Also use when the user mentions 'alternative page,' 'vs page,' 'competitor comparison,' 'comparison page,' '[Product] vs [Product],' '[Product] alternative,' or 'competitive landing pages.' Covers four formats: singular alternative, plural alternatives, you vs competitor, and competitor vs competitor. Emphasizes deep research, modular content architecture, and varied section types beyond feature tables."
metadata:
  version: 1.0.0
---

# Competitor & Alternative Pages

You are an expert in creating competitor comparison and alternative pages. Your goal is to build pages that rank for competitive search terms, provide genuine value to evaluators, and position your product effectively.

## Initial Assessment

**Check for product marketing context first:**
If `.claude/product-marketing-context.md` exists, read it before asking questions. Use that context and only ask for information not already covered or specific to this task.

Before creating competitor pages, understand:

1. **Your Product**
   - Core value proposition
   - Key differentiators
   - Ideal customer profile
   - Pricing model
   - Strengths and honest weaknesses

2. **Competitive Landscape**
   - Direct competitors
   - Indirect/adjacent competitors
   - Market positioning of each
   - Search volume for competitor terms

3. **Goals**
   - SEO traffic capture
   - Sales enablement
   - Conversion from competitor users
   - Brand positioning

---

## Core Principles

### 1. Honesty Builds Trust
- Acknowledge competitor strengths
- Be accurate about your limitations
- Don't misrepresent competitor features
- Readers are comparing—they'll verify claims

### 2. Depth Over Surface
- Go beyond feature checklists
- Explain *why* differences matter
- Include use cases and scenarios
- Show, don't just tell

### 3. Help Them Decide
- Different tools fit different needs
- Be clear about who you're best for
- Be clear about who competitor is best for
- Reduce evaluation friction

### 4. Modular Content Architecture
- Competitor data should be centralized
- Updates propagate to all pages
- Single source of truth per competitor

### 5. Ethical Guidelines for Fair Comparison
- **Accuracy obligation**: Verify every claim about competitors. Use their current pricing page, feature docs, and changelog — not outdated info
- **No defamation**: Never make false negative claims. Saying "Competitor X has poor support" without evidence is defamatory; saying "Competitor X offers email support; we offer live chat and phone" is factual
- **Acknowledge when competitors are better**: If they genuinely excel in an area, say so. Readers who discover you hid competitor strengths lose trust permanently
- **Date your comparisons**: Include "Last updated: [date]" and a note that features/pricing may have changed
- **Don't manipulate reviews**: Don't cherry-pick only negative competitor reviews. Show a balanced sample
- **Avoid legal risk**: Don't use competitor logos without permission (fair use is narrow). Don't claim "industry best" or "fastest" without substantiation. Include a disclaimer if needed
- **Competitor response test**: Before publishing, ask "Would I be comfortable if the competitor's CEO read this page?" If not, revise

---

## Page Formats

### Format 1: [Competitor] Alternative (Singular)

**Search intent**: User is actively looking to switch from a specific competitor

**URL pattern**: `/alternatives/[competitor]` or `/[competitor]-alternative`

**Target keywords**: "[Competitor] alternative", "alternative to [Competitor]", "switch from [Competitor]"

**Page structure**:
1. Why people look for alternatives (validate their pain)
2. Summary: You as the alternative (quick positioning)
3. Detailed comparison (features, service, pricing)
4. Who should switch (and who shouldn't)
5. Migration path
6. Social proof from switchers
7. CTA

---

### Format 2: [Competitor] Alternatives (Plural)

**Search intent**: User is researching options, earlier in journey

**URL pattern**: `/alternatives/[competitor]-alternatives`

**Target keywords**: "[Competitor] alternatives", "best [Competitor] alternatives", "tools like [Competitor]"

**Page structure**:
1. Why people look for alternatives (common pain points)
2. What to look for in an alternative (criteria framework)
3. List of alternatives (you first, but include real options)
4. Comparison table (summary)
5. Detailed breakdown of each alternative
6. Recommendation by use case
7. CTA

**Important**: Include 4-7 real alternatives. Being genuinely helpful builds trust and ranks better.

---

### Format 3: You vs [Competitor]

**Search intent**: User is directly comparing you to a specific competitor

**URL pattern**: `/vs/[competitor]` or `/compare/[you]-vs-[competitor]`

**Target keywords**: "[You] vs [Competitor]", "[Competitor] vs [You]"

**Page structure**:
1. TL;DR summary (key differences in 2-3 sentences)
2. At-a-glance comparison table
3. Detailed comparison by category (Features, Pricing, Support, Ease of use, Integrations)
4. Who [You] is best for
5. Who [Competitor] is best for (be honest)
6. What customers say (testimonials from switchers)
7. Migration support
8. CTA

---

### Format 4: [Competitor A] vs [Competitor B]

**Search intent**: User comparing two competitors (not you directly)

**URL pattern**: `/compare/[competitor-a]-vs-[competitor-b]`

**Page structure**:
1. Overview of both products
2. Comparison by category
3. Who each is best for
4. The third option (introduce yourself)
5. Comparison table (all three)
6. CTA

**Why this works**: Captures search traffic for competitor terms, positions you as knowledgeable.

---

## Essential Sections

### TL;DR Summary
Start every page with a quick summary for scanners—key differences in 2-3 sentences.

### Paragraph Comparisons
Go beyond tables. For each dimension, write a paragraph explaining the differences and when each matters.

### Feature Comparison
For each category: describe how each handles it, list strengths and limitations, give bottom line recommendation.

### Feature Matrix Design Best Practices

A well-designed feature matrix can be the most-referenced section on your page. Do it wrong and it becomes noise.

**Design Principles:**
- **Group by user need, not product architecture**: Categories like "Collaboration," "Reporting," "Integrations" are better than "Module A," "Module B"
- **Limit to 15-25 rows**: More than that overwhelms. Move exhaustive lists to a separate detail page
- **Use more than checkmarks**: ✅/❌ is reductive. Use "Basic," "Advanced," "Enterprise-only," "Via integration," or brief descriptions
- **Highlight meaningful differences**: Bold or color-code rows where products genuinely differ. Don't pad with rows where everyone is identical
- **Include pricing row**: Always show starting price per row — it's the #1 thing readers look for

**Column Structure:**
| Feature Area | Your Product | Competitor A | Competitor B |
|---|---|---|---|
| **Collaboration** | Real-time co-editing, comments, @mentions | Comments only | Real-time co-editing |
| **Pricing (starter)** | $12/user/mo | $15/user/mo | Free (limited) |

**Anti-patterns to Avoid:**
- Listing features only you have (transparent bias — include features competitors have that you don't)
- Using vague labels ("Advanced analytics" — compared to what?)
- Hiding competitor advantages in footnotes
- Making the matrix so large it requires horizontal scrolling

### Pricing Comparison
Include tier-by-tier comparison, what's included, hidden costs, and total cost calculation for sample team size.

### Who It's For
Be explicit about ideal customer for each option. Honest recommendations build trust.

### Migration Section
Cover what transfers, what needs reconfiguration, support offered, and quotes from customers who switched.

**For detailed templates**: See [references/templates.md](references/templates.md)

---

## Win/Loss Analysis Integration

The most powerful comparison pages are informed by real win/loss data. Integrate these insights:

**Sources of Win/Loss Data:**
- CRM notes from closed-won and closed-lost deals (filter by competitor mentioned)
- Customer exit surveys ("Why did you leave?")
- Onboarding surveys ("What did you use before? Why did you switch?")
- G2/Capterra reviews mentioning your product AND competitor
- Sales call recordings (search for competitor mentions)

**How to Use Win/Loss Data in Comparison Pages:**
1. **Identify top 3 reasons customers switch TO you** from each competitor → Lead with these in the comparison
2. **Identify top 3 reasons customers switch AWAY** from you to each competitor → Address these honestly, explain your roadmap or positioning
3. **Quote real customers** (anonymized if needed): "We switched from [Competitor] because..." carries more weight than any feature table
4. **Quantify where possible**: "Teams that switch from [Competitor] report 30% faster onboarding" (only if you have data to back it)

**Win/Loss Summary Template per Competitor:**
```
Competitor: [Name]
Win rate against them: [X%]
Top reasons we win: [1, 2, 3]
Top reasons we lose: [1, 2, 3]
Common switching triggers: [contract renewal, price increase, missing feature]
Average deal size when competing: [$X]
```

---

## Content Architecture

### Centralized Competitor Data
Create a single source of truth for each competitor with:
- Positioning and target audience
- Pricing (all tiers)
- Feature ratings
- Strengths and weaknesses
- Best for / not ideal for
- Common complaints (from reviews)
- Migration notes

**For data structure and examples**: See [references/content-architecture.md](references/content-architecture.md)

---

## Research Process

### Deep Competitor Research

For each competitor, gather:

1. **Product research**: Sign up, use it, document features/UX/limitations
2. **Pricing research**: Current pricing, what's included, hidden costs
3. **Review mining**: G2, Capterra, TrustRadius for common praise/complaint themes
4. **Customer feedback**: Talk to customers who switched (both directions)
5. **Content research**: Their positioning, their comparison pages, their changelog

### Ongoing Updates

- **Quarterly**: Verify pricing, check for major feature changes
- **When notified**: Customer mentions competitor change
- **Annually**: Full refresh of all competitor data

---

## SEO Considerations

### Keyword Targeting

| Format | Primary Keywords |
|--------|-----------------|
| Alternative (singular) | [Competitor] alternative, alternative to [Competitor] |
| Alternatives (plural) | [Competitor] alternatives, best [Competitor] alternatives |
| You vs Competitor | [You] vs [Competitor], [Competitor] vs [You] |
| Competitor vs Competitor | [A] vs [B], [B] vs [A] |

### SERP Feature Analysis for Comparison Keywords

Before writing, analyze what Google shows for your target comparison keywords:

**SERP Features to Check:**
1. **Featured Snippets**: Do comparison queries trigger a featured snippet? If yes, format your content to win it (tables for "vs" queries, lists for "alternatives" queries)
2. **People Also Ask (PAA)**: Collect all PAA questions for your target keywords — these become H2/H3 sections in your content
3. **AI Overview**: Does an AI Overview appear? If yes, structure key comparisons as concise, factual statements that can be cited
4. **Shopping/Ads**: Heavy ad presence signals commercial intent — your page should lean toward conversion, not just information
5. **Video carousels**: If videos rank, consider adding a video comparison to your page
6. **Reddit/forum results**: If Reddit ranks, it means Google values authentic user opinions — include real customer quotes and reviews

**SERP Intent Mapping:**
| SERP Feature Pattern | What It Means | How to Adapt |
|---|---|---|
| Featured snippet (table) | Google wants a structured comparison | Include a clean comparison table early in the page |
| PAA dominates | Users have many sub-questions | Answer each PAA as a section with FAQ schema |
| Reddit/Quora ranking | Authenticity signal is strong | Add real user testimonials, unpolished quotes |
| Video carousel present | Visual comparison is valued | Create a comparison video or embed relevant ones |
| Competitor's own page ranks | They control their narrative | Differentiate with third-party data and user quotes |

### Internal Linking Strategy Between Comparison Pages

**Hub & Spoke Model for Competitor Content:**
- **Hub page**: `/alternatives/` or `/compare/` — lists all competitors with brief summaries, links to every individual comparison
- **Spoke pages**: Individual `/vs/[competitor]` and `/alternatives/[competitor]` pages
- **Cross-links**: Every comparison page links to related comparisons (e.g., `/vs/competitor-a` links to `/vs/competitor-b` if they're in the same category)

**Linking Rules:**
1. Every comparison page links back to the hub page
2. Every comparison page links to 2-3 other comparison pages (related competitors)
3. Feature pages link to relevant comparisons ("See how our reporting compares to [Competitor]")
4. Blog posts mentioning competitors link to the comparison page
5. Pricing page links to comparison pages ("See how we compare")

**Navigation Integration:**
- Add "Compare" or "Alternatives" to main navigation or footer
- On product/feature pages, add a "How we compare" CTA linking to the most relevant comparison
- In documentation, where you describe a feature a competitor lacks, link to the comparison page

### Schema Markup for Comparison Content

**FAQ Schema:**
Add FAQ schema for common questions answered on the page:
```json
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "What is the best alternative to [Competitor]?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "The best alternative depends on your needs. [Your Product] is ideal for teams that need [differentiator]..."
      }
    },
    {
      "@type": "Question",
      "name": "How does [Your Product] compare to [Competitor] on pricing?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "[Your Product] starts at $X/month while [Competitor] starts at $Y/month..."
      }
    }
  ]
}
```

**Review/Rating Schema (use carefully):**
- Only add `AggregateRating` if you have genuine, verifiable user ratings
- Never fabricate ratings for comparison pages — Google penalizes this
- If you aggregate G2/Capterra scores, cite the source and date

**SoftwareApplication Schema:**
For each product mentioned, consider adding `SoftwareApplication` schema with `offers` to surface pricing in search results.

---

## Output Format

### Competitor Data File
Complete competitor profile in YAML format for use across all comparison pages.

### Page Content
For each page: URL, meta tags, full page copy organized by section, comparison tables, CTAs.

### Page Set Plan
Recommended pages to create with priority order based on search volume.

---

## Task-Specific Questions

1. What are common reasons people switch to you?
2. Do you have customer quotes about switching?
3. What's your pricing vs. competitors?
4. Do you offer migration support?
5. Do you have win/loss data from sales or CRM?

---

## Related Skills

- **programmatic-seo**: For building competitor pages at scale
- **copywriting**: For writing compelling comparison copy
- **seo-audit**: For optimizing competitor pages
- **schema-markup**: For FAQ and comparison schema
