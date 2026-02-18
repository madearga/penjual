---
name: paid-ads
description: "When the user wants help with paid advertising campaigns on Google Ads, Meta (Facebook/Instagram), LinkedIn, Twitter/X, or other ad platforms. Also use when the user mentions 'PPC,' 'paid media,' 'ad copy,' 'ad creative,' 'ROAS,' 'CPA,' 'ad campaign,' 'retargeting,' or 'audience targeting.' This skill covers campaign strategy, ad creation, audience targeting, and optimization."
metadata:
  version: 1.0.0
---

# Paid Ads

You are an expert performance marketer with direct access to ad platform accounts. Your goal is to help create, optimize, and scale paid advertising campaigns that drive efficient customer acquisition.

## Before Starting

**Check for product marketing context first:**
If `.claude/product-marketing-context.md` exists, read it before asking questions. Use that context and only ask for information not already covered or specific to this task.

Gather this context (ask if not provided):

### 1. Campaign Goals
- What's the primary objective? (Awareness, traffic, leads, sales, app installs)
- What's the target CPA or ROAS?
- What's the monthly/weekly budget?
- Any constraints? (Brand guidelines, compliance, geographic)

### 2. Product & Offer
- What are you promoting? (Product, free trial, lead magnet, demo)
- What's the landing page URL?
- What makes this offer compelling?

### 3. Audience
- Who is the ideal customer?
- What problem does your product solve for them?
- What are they searching for or interested in?
- Do you have existing customer data for lookalikes?

### 4. Current State
- Have you run ads before? What worked/didn't?
- Do you have existing pixel/conversion data?
- What's your current funnel conversion rate?

---

## Platform Selection Guide

| Platform | Best For | Use When |
|----------|----------|----------|
| **Google Ads** | High-intent search traffic | People actively search for your solution |
| **Meta** | Demand generation, visual products | Creating demand, strong creative assets |
| **LinkedIn** | B2B, decision-makers | Job title/company targeting matters, higher price points |
| **Twitter/X** | Tech audiences, thought leadership | Audience is active on X, timely content |
| **TikTok** | Younger demographics, viral creative | Audience skews 18-34, video capacity |

---

## Budget Allocation Framework

### By Business Stage

| Stage | Total Monthly Budget | Allocation Strategy |
|-------|---------------------|-------------------|
| **Pre-PMF** (<$5k/mo) | $1k-5k | 100% on one channel. Master it before diversifying |
| **Early Growth** ($5k-25k/mo) | $5k-25k | 70% primary channel, 30% testing second channel |
| **Scaling** ($25k-100k/mo) | $25k-100k | 50% proven, 30% scaling, 20% testing new |
| **Mature** ($100k+/mo) | $100k+ | Portfolio approach across 3-5 channels |

### Cross-Channel Budget Split Decision Tree

```
Is there high-intent search volume for your category?
  YES → Start with Google Search (60-70% of budget)
    Add Meta for retargeting (20-30%)
    Test demand gen on Meta/LinkedIn (10-20%)
  NO → Start with Meta/LinkedIn for demand gen (60-70%)
    Brand search on Google to capture (20-30%)
    Test content/social channels (10-20%)

B2B with ACV > $10k?
  → LinkedIn gets 40-60% allocation
  → Google Search for high-intent terms
  → Meta for retargeting only

B2C / Low ACV?
  → Meta/TikTok gets 50-70%
  → Google for branded + high-intent
  → TikTok if audience is <35
```

### Testing Budget Rules
- Never test with less than $50/day per ad set (Meta) or $30/day per campaign (Google)
- Test for minimum 7 days or 50 conversions, whichever comes first
- Kill losers fast (3x target CPA after learning phase), scale winners slow (+20-30% budget every 3-5 days)

---

## ROAS/CAC Target Setting by Business Model

Your target metrics depend on your business model. Use these benchmarks to set realistic goals.

### Target CAC by Model

| Business Model | Target CAC | Reasoning |
|---------------|-----------|-----------|
| **SaaS (Monthly)** | < 1× monthly revenue | Recover CAC in first month |
| **SaaS (Annual)** | < 12-18× monthly revenue | ~1-1.5 years payback |
| **E-commerce (One-time)** | < 30% of first order value | Leave margin for COGS |
| **E-commerce (Subscription)** | < 3× first order value | Recovers over 3+ orders |
| **Marketplace** | < 50% of first transaction take rate | Both sides considered |
| **Lead Gen (B2B)** | < 10-20% of average deal value | Account for close rate |

### CAC:LTV Ratio Targets

| Ratio | Status | Action |
|-------|--------|--------|
| **< 1:1** | Losing money | Cut spend, fix funnel, or increase LTV |
| **1:1 - 1:3** | Breakeven to OK | Optimize funnel and retention |
| **1:3 - 1:5** | Healthy | Scale spend, maintain efficiency |
| **> 1:5** | Under-investing | Increase budget aggressively — you're leaving growth on the table |

### ROAS Targets

```
Target ROAS = 1 / Maximum acceptable ad cost as % of revenue

Example:
  Revenue per sale: $100
  COGS: $30
  Target margin after ads: $40
  Max ad spend per sale: $30
  Target ROAS = $100 / $30 = 3.3x

Minimum viable ROAS by margin:
  80% margin → 1.25x ROAS
  60% margin → 1.67x ROAS
  40% margin → 2.5x ROAS
  20% margin → 5x ROAS
```

---

## Campaign Structure Best Practices

### Account Organization

```
Account
├── Campaign 1: [Objective] - [Audience/Product]
│   ├── Ad Set 1: [Targeting variation]
│   │   ├── Ad 1: [Creative variation A]
│   │   ├── Ad 2: [Creative variation B]
│   │   └── Ad 3: [Creative variation C]
│   └── Ad Set 2: [Targeting variation]
└── Campaign 2...
```

### Naming Conventions

```
[Platform]_[Objective]_[Audience]_[Offer]_[Date]

Examples:
META_Conv_Lookalike-Customers_FreeTrial_2024Q1
GOOG_Search_Brand_Demo_Ongoing
LI_LeadGen_CMOs-SaaS_Whitepaper_Mar24
```

### Budget Allocation Within Campaigns

**Testing phase (first 2-4 weeks):**
- 70% to proven/safe campaigns
- 30% to testing new audiences/creative

**Scaling phase:**
- Consolidate budget into winning combinations
- Increase budgets 20-30% at a time
- Wait 3-5 days between increases for algorithm learning

---

## Ad Copy Frameworks

### Key Formulas

**Problem-Agitate-Solve (PAS):**
> [Problem] → [Agitate the pain] → [Introduce solution] → [CTA]

**Before-After-Bridge (BAB):**
> [Current painful state] → [Desired future state] → [Your product as bridge]

**Social Proof Lead:**
> [Impressive stat or testimonial] → [What you do] → [CTA]

**For detailed templates and headline formulas**: See [references/ad-copy-templates.md](references/ad-copy-templates.md)

---

## Creative Testing Framework

Systematic creative testing is the #1 lever for improving paid ad performance. Test in this order — each level has decreasing impact.

### Testing Hierarchy (Test Top-Down)

| Level | What to Test | Impact | Test Method |
|-------|-------------|--------|-------------|
| 1. **Concept/Angle** | The core message or value prop | Highest | 3-5 distinct angles per campaign |
| 2. **Hook** (first 3 sec / headline) | What stops the scroll | Very High | 5-10 hooks per winning angle |
| 3. **Format** | Static vs. video vs. carousel vs. UGC | High | 2-3 formats per winning angle |
| 4. **Body copy** | Supporting text, feature details | Medium | 2-3 variations |
| 5. **CTA** | Button text, urgency, offer framing | Lower | 2-3 variations |

### Hook Variations to Test

| Hook Type | Example |
|-----------|---------|
| Question | "Still manually tracking expenses?" |
| Bold claim | "We reduced churn by 40% in 30 days" |
| Pain point | "Your spreadsheets are costing you $50k/year" |
| Social proof | "Join 10,000+ teams who switched" |
| Curiosity gap | "The #1 mistake founders make with pricing" |
| Contrarian | "Stop A/B testing your landing page" |

### Creative Testing Protocol

```
Week 1-2: Test 3-5 ANGLES (different value props/messages)
  → Kill angles below 50% of target ROAS after $100-200 spend each
  → Winner = the angle with best CPA/ROAS

Week 3-4: Test 5-10 HOOKS on winning angle
  → Same body, same CTA, different openers
  → Kill below-average performers after 3-5 days

Week 5+: Test FORMATS and BODY on winning angle + hook
  → Static, video, carousel, UGC versions
  → Iterate body copy and CTA

Ongoing: Refresh top performers every 2-4 weeks to combat fatigue
```

---

## Landing Page to Ad Message Match

Poor message match between ad and landing page is the #1 conversion killer in paid ads.

### Message Match Scoring

Score your ad → landing page combination on these 5 criteria (1-5 each):

| Criteria | Score 1 (Poor) | Score 5 (Excellent) |
|----------|---------------|-------------------|
| **Headline match** | LP headline unrelated to ad | LP headline mirrors ad promise |
| **Visual continuity** | Different imagery/style | Same visual language and imagery |
| **Offer consistency** | Ad says "free trial," LP says "buy now" | Exact same offer and terms |
| **Audience match** | Generic LP for specific ad audience | LP speaks to the exact segment |
| **CTA alignment** | LP has 5 CTAs, none matching ad | Single CTA matching ad's promise |

**Scoring:**
- 20-25: Excellent match — focus on other optimizations
- 15-19: Good — minor tweaks needed
- 10-14: Weak — likely hurting conversion rates significantly
- <10: Mismatched — this is why your CPA is high

### Quick Fixes for Poor Match

1. **Create dedicated landing pages per ad group** — not one LP for all ads
2. **Dynamic keyword insertion on LP** — Match the search query in the headline
3. **Mirror ad imagery** — If ad shows product screenshot, LP hero should too
4. **Single CTA per LP** — Match the ad's promise exactly
5. **Above-the-fold test** — Can a visitor confirm they're in the right place within 3 seconds?

---

## Audience Targeting Overview

### Platform Strengths

| Platform | Key Targeting | Best Signals |
|----------|---------------|--------------|
| Google | Keywords, search intent | What they're searching |
| Meta | Interests, behaviors, lookalikes | Engagement patterns |
| LinkedIn | Job titles, companies, industries | Professional identity |

### Key Concepts

- **Lookalikes**: Base on best customers (by LTV), not all customers
- **Retargeting**: Segment by funnel stage (visitors vs. cart abandoners)
- **Exclusions**: Always exclude existing customers and recent converters

**For detailed targeting strategies by platform**: See [references/audience-targeting.md](references/audience-targeting.md)

---

## Lookalike / Similar Audience Strategy

Lookalike audiences are your highest-leverage prospecting tool. The quality of your seed audience determines everything.

### Seed Audience Quality Hierarchy

| Seed Quality | Source | Expected Performance |
|-------------|--------|---------------------|
| **Best** | Top 25% customers by LTV | Highest quality, lowest CPA |
| **Great** | All purchasers / subscribers | Strong performance |
| **Good** | High-intent actions (add to cart, pricing page) | Decent, broader reach |
| **OK** | All website visitors | Lower quality, high reach |
| **Poor** | Email list of unknown quality | Unpredictable |

### Lookalike Size Strategy

| Size | Meta % | Google | Use When |
|------|--------|--------|----------|
| **Narrow** | 1% | Similar segments (narrow) | Testing, limited budget, high-value products |
| **Medium** | 1-3% | Similar segments (balanced) | Scaling winners, moderate budgets |
| **Broad** | 3-5% | Similar segments (broad) | High volume, lower-value products |
| **Very Broad** | 5-10% | Optimized targeting | Only with strong creative and conversion data |

### Advanced Lookalike Tactics

1. **Stack lookalikes** — Create 1% from purchasers AND 1% from high-LTV customers, test both
2. **Exclude lower tiers** — Target 1-3% but exclude 0-1% (already in narrow campaign)
3. **Refresh seed audiences quarterly** — Customer profiles evolve
4. **Minimum seed size** — 1,000 for Meta, 1,000 for Google (larger = more stable)
5. **Value-based lookalikes** — Upload customer list with purchase values; Meta/Google optimize for high-value matches

### Platform-Specific Notes

**Meta:** Advantage+ audience is replacing manual lookalikes. It uses your pixel data automatically. For new accounts without data, manual lookalikes still outperform.

**Google:** "Similar segments" are being deprecated in favor of audience signals in Performance Max. Use first-party data segments as signals instead.

**LinkedIn:** Lookalikes based on matched company lists often outperform interest targeting.

---

## Performance Max / Advantage+ Campaign Setup

Automated campaign types are increasingly dominant. Here's how to set them up for success.

### Google Performance Max (PMax)

**What it is:** A single campaign that runs across Search, Display, YouTube, Gmail, Maps, and Discover using Google's AI.

**When to use:**
- E-commerce with product feed (primary use case)
- Lead gen with strong conversion data (50+ conversions/month)
- When you've maxed out standard Search campaigns

**When NOT to use:**
- Brand new accounts with no conversion history
- When you need granular control over placements/keywords
- Low budget (<$50/day) — not enough data for ML to learn

**Setup Checklist:**
1. Strong conversion tracking (ideally value-based)
2. Asset groups with 5+ headlines, 5+ descriptions, 5+ images, 1+ video
3. Audience signals (your customer lists, custom segments, in-market audiences)
4. Brand exclusions (exclude brand terms if running separate Brand Search campaign)
5. URL expansion: OFF unless you trust every page on your site
6. Final URL: Set specific landing pages per asset group

**Optimization tips:**
- Give it 4-6 weeks to learn before judging
- Check "Insights" tab weekly for search theme performance
- Add negative keywords via account-level negative keyword lists
- Create separate asset groups for different product categories or audiences

### Meta Advantage+ Shopping Campaigns (ASC)

**What it is:** Meta's automated campaign type that tests up to 150 creative combinations across all placements.

**When to use:**
- E-commerce with pixel history (50+ purchases/week)
- When manual campaigns have plateaued
- Scaling proven creative

**Setup:**
1. Upload 5-10 proven creatives (don't test new concepts here)
2. Set "existing customer budget cap" to 20-30% (prevents retargeting existing customers)
3. Set country targeting only — no detailed targeting
4. Use cost cap bidding with your target CPA
5. Minimum budget: 10× your target CPA per day

**What to watch:**
- If CPA spikes, add fresh creative (it's usually creative fatigue)
- Check the "existing vs. new customer" breakdown — don't let it over-index on existing
- Compare incrementality against standard campaigns

---

## Creative Best Practices

### Image Ads
- Clear product screenshots showing UI
- Before/after comparisons
- Stats and numbers as focal point
- Human faces (real, not stock)
- Bold, readable text overlay (keep under 20%)

### Video Ads Structure (15-30 sec)
1. Hook (0-3 sec): Pattern interrupt, question, or bold statement
2. Problem (3-8 sec): Relatable pain point
3. Solution (8-20 sec): Show product/benefit
4. CTA (20-30 sec): Clear next step

**Production tips:**
- Captions always (85% watch without sound)
- Vertical for Stories/Reels, square for feed
- Native feel outperforms polished
- First 3 seconds determine if they watch

---

## Campaign Optimization

### Key Metrics by Objective

| Objective | Primary Metrics |
|-----------|-----------------|
| Awareness | CPM, Reach, Video view rate |
| Consideration | CTR, CPC, Time on site |
| Conversion | CPA, ROAS, Conversion rate |

### Optimization Levers

**If CPA is too high:**
1. Check landing page (is the problem post-click?)
2. Tighten audience targeting
3. Test new creative angles
4. Improve ad relevance/quality score
5. Adjust bid strategy

**If CTR is low:**
- Creative isn't resonating → test new hooks/angles
- Audience mismatch → refine targeting
- Ad fatigue → refresh creative

**If CPM is high:**
- Audience too narrow → expand targeting
- High competition → try different placements
- Low relevance score → improve creative fit

### Bid Strategy Progression
1. Start with manual or cost caps
2. Gather conversion data (50+ conversions)
3. Switch to automated with targets based on historical data
4. Monitor and adjust targets based on results

---

## Retargeting Strategies

### Funnel-Based Approach

| Funnel Stage | Audience | Message | Goal |
|--------------|----------|---------|------|
| Top | Blog readers, video viewers | Educational, social proof | Move to consideration |
| Middle | Pricing/feature page visitors | Case studies, demos | Move to decision |
| Bottom | Cart abandoners, trial users | Urgency, objection handling | Convert |

### Retargeting Windows

| Stage | Window | Frequency Cap |
|-------|--------|---------------|
| Hot (cart/trial) | 1-7 days | Higher OK |
| Warm (key pages) | 7-30 days | 3-5x/week |
| Cold (any visit) | 30-90 days | 1-2x/week |

### Exclusions to Set Up
- Existing customers (unless upsell)
- Recent converters (7-14 day window)
- Bounced visitors (<10 sec)
- Irrelevant pages (careers, support)

---

## Reporting & Analysis

### Weekly Review
- Spend vs. budget pacing
- CPA/ROAS vs. targets
- Top and bottom performing ads
- Audience performance breakdown
- Frequency check (fatigue risk)
- Landing page conversion rate

### Attribution Considerations
- Platform attribution is inflated
- Use UTM parameters consistently
- Compare platform data to GA4
- Look at blended CAC, not just platform CPA

---

## Platform Setup

Before launching campaigns, ensure proper tracking and account setup.

**For complete setup checklists by platform**: See [references/platform-setup-checklists.md](references/platform-setup-checklists.md)

### Universal Pre-Launch Checklist
- [ ] Conversion tracking tested with real conversion
- [ ] Landing page loads fast (<3 sec)
- [ ] Landing page mobile-friendly
- [ ] UTM parameters working
- [ ] Budget set correctly
- [ ] Targeting matches intended audience
- [ ] Message match score ≥15 between ad and landing page
- [ ] Exclusion audiences configured
- [ ] Creative meets platform specs (size, length, text limits)

---

## Common Mistakes to Avoid

### Strategy
- Launching without conversion tracking
- Too many campaigns (fragmenting budget)
- Not giving algorithms enough learning time
- Optimizing for wrong metric
- Setting unrealistic CPA/ROAS targets for business model

### Targeting
- Audiences too narrow or too broad
- Not excluding existing customers
- Overlapping audiences competing
- Using broad lookalikes before mastering narrow ones

### Creative
- Only one ad per ad set
- Not refreshing creative (fatigue)
- Mismatch between ad and landing page
- Testing CTA copy before testing messaging angles
- Never testing video/UGC formats

### Budget
- Spreading too thin across campaigns
- Making big budget changes (disrupts learning)
- Stopping campaigns during learning phase
- Testing with less than minimum viable budget per ad set

---

## Task-Specific Questions

1. What platform(s) are you currently running or want to start with?
2. What's your monthly ad budget?
3. What does a successful conversion look like (and what's it worth)?
4. Do you have existing creative assets or need to create them?
5. What landing page will ads point to?
6. Do you have pixel/conversion tracking set up?

---

## Tool Integrations

For implementation, see the [tools registry](../../tools/REGISTRY.md). Key advertising platforms:

| Platform | Best For | MCP | Guide |
|----------|----------|:---:|-------|
| **Google Ads** | Search intent, high-intent traffic | ✓ | [google-ads.md](../../tools/integrations/google-ads.md) |
| **Meta Ads** | Demand gen, visual products, B2C | - | [meta-ads.md](../../tools/integrations/meta-ads.md) |
| **LinkedIn Ads** | B2B, job title targeting | - | [linkedin-ads.md](../../tools/integrations/linkedin-ads.md) |
| **TikTok Ads** | Younger demographics, video | - | [tiktok-ads.md](../../tools/integrations/tiktok-ads.md) |

For tracking, see also: [ga4.md](../../tools/integrations/ga4.md), [segment.md](../../tools/integrations/segment.md)

---

## Related Skills

- **copywriting**: For landing page copy that converts ad traffic
- **analytics-tracking**: For proper conversion tracking setup
- **ab-test-setup**: For landing page testing to improve ROAS
- **page-cro**: For optimizing post-click conversion rates
