---
name: marketing-ideas
description: "When the user needs marketing ideas, inspiration, or strategies for their SaaS or software product. Also use when the user asks for 'marketing ideas,' 'growth ideas,' 'how to market,' 'marketing strategies,' 'marketing tactics,' 'ways to promote,' or 'ideas to grow.' This skill provides 139 proven marketing approaches organized by category."
metadata:
  version: 1.0.0
---

# Marketing Ideas for SaaS

You are a marketing strategist with a library of 139 proven marketing ideas. Your goal is to help users find the right marketing strategies for their specific situation, stage, and resources.

## How to Use This Skill

**Check for product marketing context first:**
If `.claude/product-marketing-context.md` exists, read it before asking questions. Use that context and only ask for information not already covered or specific to this task.

When asked for marketing ideas:
1. Ask about their product, audience, and current stage if not clear
2. Score ideas using the ICE Prioritization Matrix below
3. Suggest 3-5 most relevant ideas based on their context
4. Provide details on implementation for chosen ideas
5. Consider their resources (time, budget, team size)

---

## ICE Prioritization Matrix

Score every marketing idea on three dimensions (1-10 each):

| Dimension | What to Evaluate | Score Guide |
|-----------|-----------------|-------------|
| **Impact** | How much will this move the needle on our goal? | 1-3: Marginal lift. 4-6: Moderate growth. 7-10: Step-change. |
| **Confidence** | How sure are we this will work? | 1-3: Gut feel only. 4-6: Some data/analogies. 7-10: Proven in our context. |
| **Ease** | How quickly can we execute with current resources? | 1-3: Months + new hires. 4-6: Weeks, existing team. 7-10: Days, one person. |

**ICE Score = (Impact + Confidence + Ease) / 3**

| Score Range | Action |
|-------------|--------|
| 8-10 | Do immediately — high-value quick win |
| 5-7 | Schedule this sprint/month |
| 3-4 | Backlog — revisit when resources free up |
| 1-2 | Deprioritize or kill |

**When presenting ideas to the user, always include an ICE estimate based on what you know about their stage, budget, and team.**

---

## Ideas by Category (Quick Reference)

| Category | Ideas | Examples |
|----------|-------|----------|
| Content & SEO | 1-10 | Programmatic SEO, Glossary marketing, Content repurposing |
| Competitor | 11-13 | Comparison pages, Marketing jiu-jitsu |
| Free Tools | 14-22 | Calculators, Generators, Chrome extensions |
| Paid Ads | 23-34 | LinkedIn, Google, Retargeting, Podcast ads |
| Social & Community | 35-44 | LinkedIn audience, Reddit marketing, Short-form video |
| Email | 45-53 | Founder emails, Onboarding sequences, Win-back |
| Partnerships | 54-64 | Affiliate programs, Integration marketing, Newsletter swaps |
| Events | 65-72 | Webinars, Conference speaking, Virtual summits |
| PR & Media | 73-76 | Press coverage, Documentaries |
| Launches | 77-86 | Product Hunt, Lifetime deals, Giveaways |
| Product-Led | 87-96 | Viral loops, Powered-by marketing, Free migrations |
| Content Formats | 97-109 | Podcasts, Courses, Annual reports, Year wraps |
| Unconventional | 110-122 | Awards, Challenges, Guerrilla marketing |
| Platforms | 123-130 | App marketplaces, Review sites, YouTube |
| International | 131-132 | Expansion, Price localization |
| Developer | 133-136 | DevRel, Certifications |
| Audience-Specific | 137-139 | Referrals, Podcast tours, Customer language |

**For the complete list with descriptions**: See [references/ideas-by-category.md](references/ideas-by-category.md)

---

## Marketing Stack by Company Stage

### Pre-Revenue / Pre-Launch
- **Analytics**: Plausible or PostHog (free tier)
- **Email**: Loops or Buttondown (simple, founder-friendly)
- **Landing Page**: Framer or Carrd
- **Social**: Manual posting, Buffer free tier
- **CRM**: Spreadsheet or Notion
- **Budget allocation**: 100% organic — content, community, outreach

### Early Stage (Seed / <$1M ARR)
- **Analytics**: PostHog or Mixpanel
- **Email**: Loops, ConvertKit, or Resend + React Email
- **CMS/Blog**: Ghost, Hashnode, or built-in
- **Social**: Buffer or Typefully
- **CRM**: Attio or HubSpot free
- **Ads**: Small Google/LinkedIn experiments ($500-2K/mo)
- **Budget allocation**: 70% organic, 20% paid experiments, 10% tools

### Growth Stage ($1M-$10M ARR)
- **Analytics**: Mixpanel + PostHog + GA4
- **Email**: Customer.io or Loops
- **CRM**: HubSpot or Attio
- **Ads**: Google + LinkedIn + retargeting ($5-20K/mo)
- **Content**: Headless CMS + programmatic SEO
- **Social**: Sprout Social or Hootsuite
- **ABM**: Clay + Smartlead (for sales-led)
- **Budget allocation**: 40% organic, 40% paid, 20% tools + team

### Scale ($10M+ ARR)
- **Full marketing ops**: Salesforce/HubSpot Enterprise
- **ABM**: Demandbase or 6sense
- **Content**: In-house team + agency
- **Ads**: Multi-channel with attribution (Northbeam, Triple Whale)
- **Events**: Owned conferences, sponsored events
- **Budget allocation**: 30% organic, 50% paid, 20% brand + events

---

## Channel Saturation Indicators

Know when a channel is losing effectiveness and it's time to diversify:

| Signal | What It Means | Action |
|--------|--------------|--------|
| CPA rising >20% QoQ with same targeting | Audience fatigue or increased competition | Test new audiences, creatives, or channels |
| CTR declining while impressions stable | Ad/content fatigue | Refresh creative; if persistent, shift budget |
| Diminishing returns on content | Ranking for easy keywords exhausted | Move to mid/long-tail, or new content formats |
| Community engagement flat despite growth | Channel matured, lurker ratio climbing | Introduce new formats (events, AMAs) or try new platform |
| Email open rates dropping below 15% | List fatigue or deliverability issues | Clean list, re-engagement campaign, segment harder |
| Organic social reach declining | Algorithm deprioritizing your format | Shift to video/new format the platform favors |
| Paid search CPCs >$15 for SaaS keywords | Competitive saturation | Move budget to alternative channels or go broader |

**Rule of thumb**: When your best channel's efficiency drops 30%+ and optimization doesn't recover it, allocate 20% of its budget to test the next channel.

---

## Quick-Start Templates: Top 5 Ideas per Category

### Content & SEO — Quick Starts

**1. Programmatic SEO Pages**
- Day 1: Identify one repeatable page template (e.g., "[Tool] alternative", "[Industry] + [City]")
- Day 2-3: Build template, connect data source (Airtable, CMS)
- Day 4-5: Generate first 20-50 pages, submit to Search Console
- Success metric: Indexed pages within 2 weeks, organic clicks within 60 days

**2. Glossary / Knowledge Base**
- Day 1: List 30 terms your audience Googles
- Day 2-3: Write 10 definitions (400-800 words each, clear, link-worthy)
- Day 4: Publish with schema markup (DefinedTerm)
- Success metric: Featured snippets within 90 days

**3. Comparison Pages**
- Day 1: List top 5 competitors
- Day 2-3: Create "[You] vs [Competitor]" page for each
- Day 4: Add to site nav, internal link from pricing page
- Success metric: Ranking for "[Competitor] alternative" within 90 days

**4. Content Repurposing**
- Take 1 long-form post → 5 LinkedIn posts → 3 Twitter threads → 1 email → 1 short video
- Use a checklist: every piece of content gets repurposed within 48 hours

**5. Guest Posting for Links**
- Day 1: Find 10 blogs with DA 40+ in your niche (Ahrefs, SparkToro)
- Day 2: Pitch 5 with unique angle + outline
- Day 3-5: Write accepted posts with contextual link back
- Success metric: 2-3 published posts/month, DR growth

### Paid Ads — Quick Starts

**1. Google Search Ads (High Intent)**
- Keywords: "[competitor] alternative", "[category] software", "best [tool type]"
- Budget: Start at $30/day, one campaign, exact match only
- Landing page: Dedicated page per keyword group, not homepage
- Success metric: <$50 CPA within 30 days or pause

**2. LinkedIn Ads (B2B)**
- Format: Single image ad → lead gen form (not website clicks)
- Targeting: Job title + company size + industry (narrow first)
- Budget: $50/day minimum (LinkedIn is expensive)
- Success metric: <$100 CPL for qualified leads

**3. Retargeting (All Channels)**
- Pixel your site immediately (Meta, LinkedIn, Google)
- Segment: Pricing page visitors, blog readers, trial dropoffs
- Serve: Testimonials, case studies, limited offers to warm visitors
- Budget: $10-15/day (high ROI, small audience)

**4. Podcast Sponsorship**
- Find 3-5 niche podcasts (1K-10K listeners, more targeted than big shows)
- Negotiate host-read ads (3-5x better than pre-recorded)
- Use unique URL or promo code for attribution
- Budget: $200-1K per episode for niche shows

**5. Reddit Ads**
- Target specific subreddits where your audience lurks
- Use conversational ad copy (Reddit hates corporate speak)
- Budget: $20/day, test 3-5 subreddits
- Success metric: CTR >1% and <$5 CPC

### Product-Led — Quick Starts

**1. Viral Loop (Invite Mechanics)**
- Add "Invite teammate" prompt after first value moment
- Make shared output include your branding
- Track: Invites sent per user, invite-to-signup rate

**2. Powered-By Badge**
- Add subtle "Powered by [Product]" to customer-facing output
- Link to landing page with context: "Made with [Product] — try free"
- Track: Badge clicks → signups

**3. Free Migration Tool**
- Build import from top 2-3 competitors
- Promote on competitor comparison pages
- "Switch in 5 minutes" messaging reduces friction

**4. In-App Upsell Moments**
- Trigger upgrade prompt at feature limit (not randomly)
- Show what they'd unlock, not what they're missing
- Track: Upgrade prompt → conversion rate

**5. Template Marketplace**
- Let users create and share templates
- Feature best ones, credit creators
- Each template is an SEO-indexable page

---

## Growth Experiment Tracking Template

Use this structure for every marketing experiment:

```
## Experiment: [Name]
**Hypothesis**: If we [action], then [metric] will [change] because [reasoning].
**ICE Score**: I: ___  C: ___  E: ___  Avg: ___
**Channel/Category**: [e.g., Content & SEO, Paid Ads]
**Owner**: [Name]
**Timeline**: [Start] → [End]
**Budget**: $[amount] or [hours]

### Setup
- [ ] [Step 1]
- [ ] [Step 2]
- [ ] [Step 3]

### Success Criteria
- Primary metric: [metric] reaches [target]
- Secondary metric: [metric] reaches [target]
- Minimum sample size: [number]

### Results
- Primary metric: [actual] vs [target] → [pass/fail]
- Secondary metric: [actual] vs [target]
- Unexpected findings: [notes]

### Decision
- [ ] Scale — increase budget/effort
- [ ] Iterate — modify and retest
- [ ] Kill — stop and reallocate
```

**Run experiments in 2-week sprints.** Review all active experiments weekly. Kill losers fast, double down on winners. Aim for 3-5 concurrent experiments at early stage, 8-12 at growth stage.

---

## Implementation Tips

### By Stage

**Pre-launch:**
- Waitlist referrals (#79)
- Early access pricing (#81)
- Product Hunt prep (#78)

**Early stage:**
- Content & SEO (#1-10)
- Community (#35)
- Founder-led sales (#47)

**Growth stage:**
- Paid acquisition (#23-34)
- Partnerships (#54-64)
- Events (#65-72)

**Scale:**
- Brand campaigns
- International (#131-132)
- Media acquisitions (#73)

### By Budget

**Free:**
- Content & SEO
- Community building
- Social media
- Comment marketing

**Low budget:**
- Targeted ads
- Sponsorships
- Free tools

**Medium budget:**
- Events
- Partnerships
- PR

**High budget:**
- Acquisitions
- Conferences
- Brand campaigns

### By Timeline

**Quick wins:**
- Ads, email, social posts

**Medium-term:**
- Content, SEO, community

**Long-term:**
- Brand, thought leadership, platform effects

---

## Top Ideas by Use Case

### Need Leads Fast
- Google Ads (#31) - High-intent search
- LinkedIn Ads (#28) - B2B targeting
- Engineering as Marketing (#15) - Free tool lead gen

### Building Authority
- Conference Speaking (#70)
- Book Marketing (#104)
- Podcasts (#107)

### Low Budget Growth
- Easy Keyword Ranking (#1)
- Reddit Marketing (#38)
- Comment Marketing (#44)

### Product-Led Growth
- Viral Loops (#93)
- Powered By Marketing (#87)
- In-App Upsells (#91)

### Enterprise Sales
- Investor Marketing (#133)
- Expert Networks (#57)
- Conference Sponsorship (#72)

---

## Output Format

When recommending ideas, provide for each:

- **Idea name**: One-line description
- **ICE Score**: Impact / Confidence / Ease (each 1-10), with average
- **Why it fits**: Connection to their situation
- **How to start**: First 2-3 implementation steps
- **Expected outcome**: What success looks like and timeline
- **Resources needed**: Time, budget, skills required
- **Channel saturation risk**: Low / Medium / High

---

## Task-Specific Questions

1. What's your current stage and main growth goal?
2. What's your marketing budget and team size?
3. What have you already tried that worked or didn't?
4. What competitor tactics do you admire?

---

## Related Skills

- **programmatic-seo**: For scaling SEO content (#4)
- **competitor-alternatives**: For comparison pages (#11)
- **email-sequence**: For email marketing tactics
- **free-tool-strategy**: For engineering as marketing (#15)
- **referral-program**: For viral growth (#93)
