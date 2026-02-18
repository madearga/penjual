---
name: analytics-tracking
description: When the user wants to set up, improve, or audit analytics tracking and measurement. Also use when the user mentions "set up tracking," "GA4," "Google Analytics," "conversion tracking," "event tracking," "UTM parameters," "tag manager," "GTM," "analytics implementation," or "tracking plan." For A/B test measurement, see ab-test-setup.
metadata:
  version: 1.0.0
---

# Analytics Tracking

You are an expert in analytics implementation and measurement. Your goal is to help set up tracking that provides actionable insights for marketing and product decisions.

## Initial Assessment

**Check for product marketing context first:**
If `.claude/product-marketing-context.md` exists, read it before asking questions. Use that context and only ask for information not already covered or specific to this task.

Before implementing tracking, understand:

1. **Business Context** - What decisions will this data inform? What are key conversions?
2. **Current State** - What tracking exists? What tools are in use?
3. **Technical Context** - What's the tech stack? Any privacy/compliance requirements?

---

## Core Principles

### 1. Track for Decisions, Not Data
- Every event should inform a decision
- Avoid vanity metrics
- Quality > quantity of events

### 2. Start with the Questions
- What do you need to know?
- What actions will you take based on this data?
- Work backwards to what you need to track

### 3. Name Things Consistently
- Naming conventions matter
- Establish patterns before implementing
- Document everything

### 4. Maintain Data Quality
- Validate implementation
- Monitor for issues
- Clean data > more data

---

## Tracking Plan Framework

### Structure

```
Event Name | Category | Properties | Trigger | Notes
---------- | -------- | ---------- | ------- | -----
```

### Event Types

| Type | Examples |
|------|----------|
| Pageviews | Automatic, enhanced with metadata |
| User Actions | Button clicks, form submissions, feature usage |
| System Events | Signup completed, purchase, subscription changed |
| Custom Conversions | Goal completions, funnel stages |

**For comprehensive event lists**: See [references/event-library.md](references/event-library.md)

---

## Event Naming Conventions

### Recommended Format: Object-Action

```
signup_completed
button_clicked
form_submitted
article_read
checkout_payment_completed
```

### Best Practices
- Lowercase with underscores
- Be specific: `cta_hero_clicked` vs. `button_clicked`
- Include context in properties, not event name
- Avoid spaces and special characters
- Document decisions

---

## Essential Events

### Marketing Site

| Event | Properties |
|-------|------------|
| cta_clicked | button_text, location |
| form_submitted | form_type |
| signup_completed | method, source |
| demo_requested | - |

### Product/App

| Event | Properties |
|-------|------------|
| onboarding_step_completed | step_number, step_name |
| feature_used | feature_name |
| purchase_completed | plan, value |
| subscription_cancelled | reason |

**For full event library by business type**: See [references/event-library.md](references/event-library.md)

---

## Event Properties

### Standard Properties

| Category | Properties |
|----------|------------|
| Page | page_title, page_location, page_referrer |
| User | user_id, user_type, account_id, plan_type |
| Campaign | source, medium, campaign, content, term |
| Product | product_id, product_name, category, price |

### Best Practices
- Use consistent property names
- Include relevant context
- Don't duplicate automatic properties
- Avoid PII in properties

---

## GA4 Implementation

### Quick Setup

1. Create GA4 property and data stream
2. Install gtag.js or GTM
3. Enable enhanced measurement
4. Configure custom events
5. Mark conversions in Admin

### Custom Event Example

```javascript
gtag('event', 'signup_completed', {
  'method': 'email',
  'plan': 'free'
});
```

**For detailed GA4 implementation**: See [references/ga4-implementation.md](references/ga4-implementation.md)

---

## Google Tag Manager

### Container Structure

| Component | Purpose |
|-----------|---------|
| Tags | Code that executes (GA4, pixels) |
| Triggers | When tags fire (page view, click) |
| Variables | Dynamic values (click text, data layer) |

### Data Layer Pattern

```javascript
dataLayer.push({
  'event': 'form_submitted',
  'form_name': 'contact',
  'form_location': 'footer'
});
```

**For detailed GTM implementation**: See [references/gtm-implementation.md](references/gtm-implementation.md)

---

## Data Layer Architecture for GTM

A well-structured data layer is the foundation of reliable tracking. It decouples your tracking logic from DOM structure so changes to UI don't break analytics.

### Architecture Principles

1. **Push, never overwrite** — Always use `dataLayer.push()`, never reassign `window.dataLayer`
2. **Initialize before GTM loads** — Declare `dataLayer = []` and push page-level data before the GTM snippet
3. **Normalize early** — Transform values at the data layer level, not inside GTM variables
4. **Version your schema** — Include `schema_version` so you can evolve without breaking reports

### Recommended Data Layer Structure

```javascript
// Initialize before GTM snippet
window.dataLayer = window.dataLayer || [];
dataLayer.push({
  'event': 'page_data_ready',
  'page': {
    'type': 'product',           // homepage, category, product, checkout, blog
    'category': 'pricing',
    'title': document.title
  },
  'user': {
    'id': 'usr_abc123',          // hashed, never PII
    'type': 'authenticated',     // anonymous, authenticated
    'plan': 'pro',
    'account_age_days': 45
  },
  'schema_version': '2.0'
});
```

### E-commerce Data Layer (GA4 format)

```javascript
dataLayer.push({
  'event': 'purchase',
  'ecommerce': {
    'transaction_id': 'T12345',
    'value': 99.00,
    'currency': 'USD',
    'items': [{
      'item_id': 'plan_pro',
      'item_name': 'Pro Plan',
      'price': 99.00,
      'quantity': 1
    }]
  }
});
```

### GTM Variable Hierarchy

| Priority | Variable Type | Use For |
|----------|--------------|---------|
| 1 | Data Layer Variable | Structured event data |
| 2 | 1st Party Cookie | Consent state, user preferences |
| 3 | JavaScript Variable | Computed values from page |
| 4 | Auto-Event Variable | Click text, URL, element classes |
| 5 | DOM Element | Last resort — fragile |

---

## Server-Side Tracking

Client-side tracking is increasingly blocked by ad blockers, ITP, and browser privacy changes. Server-side tracking provides more reliable data collection.

### When to Use Server-Side

| Use Server-Side When | Stay Client-Side When |
|---------------------|-----------------------|
| Ad blockers reduce data 15%+ | Simple marketing site, low stakes |
| You need accurate conversion data for ad optimization | Budget is limited |
| GDPR/privacy compliance is critical | No dev resources available |
| You want to control what data goes to third parties | Traffic is low (<10k/mo) |

### Implementation Options

**Option 1: Server-Side GTM (sGTM)**
- Google Cloud Run container running GTM server
- First-party subdomain (e.g., `data.yourdomain.com`) so cookies are 1st-party
- Processes hits server-side before forwarding to GA4, Meta CAPI, etc.

```
Browser → your-domain.com/collect → sGTM Container → GA4, Meta, LinkedIn
```

**Option 2: Custom Server Endpoint**
- Your backend receives events via API
- Forwards to analytics platforms via their server APIs
- Maximum control, more engineering effort

```javascript
// Client sends to your endpoint
fetch('/api/track', {
  method: 'POST',
  body: JSON.stringify({
    event: 'purchase_completed',
    properties: { value: 99, plan: 'pro' }
  })
});

// Server forwards to GA4 Measurement Protocol
POST https://www.google-analytics.com/mp/collect?
  measurement_id=G-XXXXX&api_secret=YOUR_SECRET
{
  "client_id": "abc123",
  "events": [{ "name": "purchase", "params": { "value": 99 } }]
}
```

**Option 3: Meta Conversions API (CAPI)**
- Send events server-side to Meta alongside the pixel
- Deduplicate using `event_id` on both client and server hits
- Critical for iOS 14.5+ accuracy

### Server-Side Deduplication

When running both client-side and server-side, you MUST deduplicate:

```javascript
// Generate shared event_id
const eventId = crypto.randomUUID();

// Client-side pixel
fbq('track', 'Purchase', { value: 99 }, { eventID: eventId });

// Server-side CAPI (same event_id)
{ "event_name": "Purchase", "event_id": eventId, "user_data": { ... } }
```

---

## Cross-Domain Tracking

When users navigate between your domains (e.g., `www.example.com` → `app.example.com` → `checkout.example.com`), sessions break unless you configure cross-domain tracking.

### GA4 Cross-Domain Setup

1. **Admin → Data Streams → Configure tag settings → Configure your domains**
2. Add all domains that should share the same session
3. GA4 appends `_gl` parameter to cross-domain links automatically

### When You Need It

| Scenario | Cross-Domain Needed? |
|----------|---------------------|
| marketing site → app on different domain | Yes |
| blog.example.com → example.com | Yes (different subdomains with separate GA4 streams) |
| example.com → Stripe checkout | Yes, if you want to track the full funnel |
| example.com/blog → example.com/pricing | No (same domain) |

### Verification

- Navigate between domains and check the URL for `_gl=` parameter
- In GA4 DebugView, confirm the same `client_id` persists across domains
- Check Realtime report — user count shouldn't spike on domain transitions

### Common Pitfalls
- Referral exclusion list: Add all your domains to prevent self-referrals inflating traffic
- Subdomain cookies: Set cookie domain to `.example.com` (leading dot) for subdomain sharing
- Redirects stripping parameters: Ensure `_gl` parameter survives redirects

---

## Custom Dimensions and Metrics Strategy

Custom dimensions and metrics let you slice GA4 reports by business-specific attributes that GA4 doesn't capture automatically.

### Dimension vs. Metric

| Type | Purpose | Examples |
|------|---------|----------|
| Custom Dimension | Categorize/segment | user_plan, content_type, experiment_variant |
| Custom Metric | Measure quantities | scroll_depth_percent, video_watch_seconds |

### Recommended Custom Dimensions

**User-Scoped** (persist across sessions):
| Dimension | Why |
|-----------|-----|
| user_plan | Segment behavior by pricing tier |
| signup_date | Cohort analysis |
| user_role | B2B role-based analysis |
| acquisition_channel | First-touch attribution beyond session |

**Event-Scoped** (per interaction):
| Dimension | Why |
|-----------|-----|
| cta_location | Which CTA placements drive action |
| content_category | Which content topics perform |
| experiment_id | A/B test variant tracking |
| error_type | Track error patterns |

### GA4 Limits

| Resource | Free GA4 | GA4 360 |
|----------|----------|---------|
| Event-scoped dimensions | 50 | 125 |
| User-scoped dimensions | 25 | 100 |
| Custom metrics | 50 | 125 |

### Implementation

```javascript
// Set user-scoped dimension (set once, persists)
gtag('set', 'user_properties', {
  'user_plan': 'pro',
  'signup_date': '2025-03-15'
});

// Event-scoped dimension (sent with specific event)
gtag('event', 'feature_used', {
  'feature_name': 'export_csv',
  'user_plan': 'pro'   // Also available as event param
});
```

After sending data, register dimensions in GA4: **Admin → Custom definitions → Create custom dimension**.

---

## Attribution Modeling

Attribution determines which marketing touchpoints get credit for conversions. The model you choose changes how you allocate budget.

### Model Comparison

| Model | How It Works | Best For | Bias |
|-------|-------------|----------|------|
| **Last-Touch** | 100% credit to final interaction | Bottom-funnel optimization | Undervalues awareness |
| **First-Touch** | 100% credit to first interaction | Understanding acquisition | Ignores nurture |
| **Linear** | Equal credit to all touchpoints | Balanced view | Overvalues low-impact touches |
| **Time Decay** | More credit to recent touches | Longer sales cycles | Undervalues early awareness |
| **Position-Based** | 40% first, 40% last, 20% middle | Balanced first/last emphasis | Arbitrary weighting |
| **Data-Driven** | ML-based on your actual data | Mature accounts (600+ conversions/mo) | Needs volume, black box |

### Choosing a Model

```
Low traffic (<5k conversions/mo)?
  → Use Last-Touch as baseline, supplement with First-Touch report
  → Compare both to understand full picture

High traffic (5k+ conversions/mo)?
  → Use Data-Driven (GA4 default for eligible properties)
  → Cross-reference with incrementality tests

Long sales cycle (B2B, 30+ days)?
  → Time Decay or Position-Based
  → CRM-based attribution (Salesforce, HubSpot) for offline touches

Short sales cycle (B2C, same-session)?
  → Last-Touch is often sufficient
  → Focus on channel-level blended metrics
```

### Practical Attribution Framework

Don't rely on a single model. Use this layered approach:

1. **Platform reporting** — What each ad platform claims (always inflated)
2. **GA4 attribution** — Cross-channel view with your chosen model
3. **Blended metrics** — Total spend ÷ total conversions = blended CAC (the truth check)
4. **Incrementality tests** — Turn channels off/on to measure true lift (gold standard)

---

## Consent Management and Cookie Banners

Privacy regulations (GDPR, CCPA, ePrivacy) require consent before setting non-essential cookies. Implementing this wrong means either legal risk or massive data loss.

### Consent Mode v2 (Google)

GA4 and Google Ads support Consent Mode, which adjusts tag behavior based on consent state:

```javascript
// Set default consent state BEFORE gtag/GTM loads
gtag('consent', 'default', {
  'ad_storage': 'denied',
  'ad_user_data': 'denied',
  'ad_personalization': 'denied',
  'analytics_storage': 'denied',
  'wait_for_update': 500    // ms to wait for CMP
});

// When user grants consent (fired by your CMP)
gtag('consent', 'update', {
  'ad_storage': 'granted',
  'ad_user_data': 'granted',
  'analytics_storage': 'granted'
});
```

### CMP Integration Pattern (GTM)

1. **CMP loads** → Sets consent state in data layer
2. **GTM reads consent** → Uses built-in consent checks on tags
3. **Tags fire or wait** → Based on required consent type

```javascript
// CMP pushes consent to data layer
dataLayer.push({
  'event': 'consent_update',
  'consent': {
    'analytics': true,
    'marketing': false,
    'preferences': true
  }
});
```

### Consent by Region

| Region | Law | What's Required |
|--------|-----|-----------------|
| EU/EEA | GDPR | Opt-in before any non-essential cookies |
| UK | UK GDPR + PECR | Opt-in (same as EU in practice) |
| California | CCPA/CPRA | Opt-out (can set cookies, must honor opt-out) |
| Canada | PIPEDA | Implied consent OK, but explicit recommended |
| Brazil | LGPD | Opt-in for sensitive data |

### Data Loss Mitigation

Consent requirements typically reduce tracked data by 30-60%. Mitigate with:

- **Consent Mode modeling** — Google models conversions for unconsented users (requires 1k+ daily events)
- **Server-side tracking** — First-party data collection is more consent-friendly
- **Cookieless measurement** — GA4's blended modeling fills gaps
- **Privacy-first tools** — Plausible, Fathom, or Simple Analytics don't require consent banners (no cookies)

---

## UTM Parameter Strategy

### Standard Parameters

| Parameter | Purpose | Example |
|-----------|---------|---------|
| utm_source | Traffic source | google, newsletter |
| utm_medium | Marketing medium | cpc, email, social |
| utm_campaign | Campaign name | spring_sale |
| utm_content | Differentiate versions | hero_cta |
| utm_term | Paid search keywords | running+shoes |

### Naming Conventions
- Lowercase everything
- Use underscores or hyphens consistently
- Be specific but concise: `blog_footer_cta`, not `cta1`
- Document all UTMs in a spreadsheet

---

## Debugging and Validation

### Testing Tools

| Tool | Use For |
|------|---------|
| GA4 DebugView | Real-time event monitoring |
| GTM Preview Mode | Test triggers before publish |
| Browser Extensions | Tag Assistant, dataLayer Inspector |

### Validation Checklist

- [ ] Events firing on correct triggers
- [ ] Property values populating correctly
- [ ] No duplicate events
- [ ] Works across browsers and mobile
- [ ] Conversions recorded correctly
- [ ] No PII leaking
- [ ] Consent mode blocks tags when consent denied
- [ ] Server-side events deduplicated with client-side
- [ ] Cross-domain tracking preserves session across domains

### Common Issues

| Issue | Check |
|-------|-------|
| Events not firing | Trigger config, GTM loaded, consent blocking |
| Wrong values | Variable path, data layer structure |
| Duplicate events | Multiple containers, trigger firing twice, missing dedup |
| Session breaks | Cross-domain config, cookie settings, redirects stripping params |
| Data discrepancy | Client vs. server duplication, consent filtering, ad blockers |

---

## Privacy and Compliance

### Considerations
- Cookie consent required in EU/UK/CA
- No PII in analytics properties
- Data retention settings
- User deletion capabilities

### Implementation
- Use consent mode (wait for consent)
- IP anonymization
- Only collect what you need
- Integrate with consent management platform

---

## Output Format

### Tracking Plan Document

```markdown
# [Site/Product] Tracking Plan

## Overview
- Tools: GA4, GTM
- Last updated: [Date]

## Events

| Event Name | Description | Properties | Trigger |
|------------|-------------|------------|---------|
| signup_completed | User completes signup | method, plan | Success page |

## Custom Dimensions

| Name | Scope | Parameter |
|------|-------|-----------|
| user_type | User | user_type |

## Conversions

| Conversion | Event | Counting |
|------------|-------|----------|
| Signup | signup_completed | Once per session |
```

---

## Task-Specific Questions

1. What tools are you using (GA4, Mixpanel, etc.)?
2. What key actions do you want to track?
3. What decisions will this data inform?
4. Who implements - dev team or marketing?
5. Are there privacy/consent requirements?
6. What's already tracked?

---

## Tool Integrations

For implementation, see the [tools registry](../../tools/REGISTRY.md). Key analytics tools:

| Tool | Best For | MCP | Guide |
|------|----------|:---:|-------|
| **GA4** | Web analytics, Google ecosystem | ✓ | [ga4.md](../../tools/integrations/ga4.md) |
| **Mixpanel** | Product analytics, event tracking | - | [mixpanel.md](../../tools/integrations/mixpanel.md) |
| **Amplitude** | Product analytics, cohort analysis | - | [amplitude.md](../../tools/integrations/amplitude.md) |
| **PostHog** | Open-source analytics, session replay | - | [posthog.md](../../tools/integrations/posthog.md) |
| **Segment** | Customer data platform, routing | - | [segment.md](../../tools/integrations/segment.md) |

---

## Related Skills

- **ab-test-setup**: For experiment tracking
- **seo-audit**: For organic traffic analysis
- **page-cro**: For conversion optimization (uses this data)
