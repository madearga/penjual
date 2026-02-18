# Kottler Skills for Claude Code

A collection of AI agent skills focused on marketing tasks for technical marketers and founders. These skills help Claude Code understand marketing frameworks, apply best practices, and execute marketing tasks effectively.

## What are Skills?

Skills are markdown files that give AI agents specialized knowledge and workflows for specific tasks. When you add these to your project, Claude Code can recognize when you're working on a marketing task and apply the right frameworks and best practices.

## Available Skills

### Conversion Optimization

| Skill | Description |
| --- | --- |
| [page-cro](skills/page-cro) | **Optimize any marketing page for conversions**<br>Use when improving landing pages, homepages, pricing pages, or feature pages. Includes conversion benchmarks, A/B testing frameworks, heat map analysis guidance, and page-specific optimization strategies for SaaS, e-commerce, and lead gen. |
| [signup-flow-cro](skills/signup-flow-cro) | **Optimize registration and signup flows**<br>Reduce friction in account creation, trial signup, and registration processes. Includes signup benchmarks by industry, field optimization guidance, progressive profiling strategies, and drop-off analysis frameworks. |
| [onboarding-cro](skills/onboarding-cro) | **Optimize post-signup activation and retention**<br>Improve first-run experience, time-to-value, and user activation. Includes activation benchmarks, onboarding flow patterns, experiment ideas, and frameworks for reducing churn after signup. |
| [form-cro](skills/form-cro) | **Optimize lead capture and contact forms**<br>Improve conversion on lead gen forms, contact forms, survey forms, and any non-signup forms. Includes field impact analysis, multi-step vs single-form guidance, and validation best practices. |
| [popup-cro](skills/popup-cro) | **Create and optimize popups, modals, and overlays**<br>Design exit-intent popups, slide-ins, banners, and modal overlays. Includes performance benchmarks, annoyance scorecards, trigger timing strategies, and design guidelines. |
| [paywall-upgrade-cro](skills/paywall-upgrade-cro) | **Optimize in-app upgrade screens and paywalls**<br>Improve freemium-to-paid conversion with better upgrade prompts, feature gates, and upsell moments. Includes freemium benchmarks, upgrade trigger frameworks, and paywall design patterns. |

### Content & Copywriting

| Skill | Description |
| --- | --- |
| [copywriting](skills/copywriting) | **Write marketing copy for any page**<br>Create compelling copy for homepages, landing pages, pricing pages, feature pages, and about pages. Includes frameworks like PAS, BAB, AIDA, value proposition guidance, and CTA best practices. |
| [copy-editing](skills/copy-editing) | **Edit and improve existing marketing copy**<br>Review and polish copy for clarity, impact, and conversion. Includes plain English alternatives, readability improvements, voice and tone consistency, and common pitfalls to avoid. |
| [email-sequence](skills/email-sequence) | **Create email sequences and drip campaigns**<br>Build welcome sequences, nurture campaigns, retention sequences, and lifecycle emails. Includes templates, pacing guidance, subject line best practices, and automation strategies. |
| [cold-email](skills/cold-email) | **Create cold email outreach campaigns**<br>Write effective cold emails for B2B sales, link building, and partnership outreach. Includes personalization frameworks, subject line templates, follow-up sequences, and response rate benchmarks. |
| [social-content](skills/social-content) | **Social media content strategy and creation**<br>Create content for LinkedIn, Twitter/X, Instagram, TikTok, and Facebook. Includes platform-specific best practices, post templates, content calendars, and engagement strategies. |

### SEO & Discovery

| Skill | Description |
| --- | --- |
| [seo-audit](skills/seo-audit) | **Audit and fix SEO issues**<br>Comprehensive SEO audit covering technical SEO, on-page optimization, content gaps, and link opportunities. Includes audit checklists, prioritization frameworks, and AI writing detection guidance. |
| [programmatic-seo](skills/programmatic-seo) | **Create SEO pages at scale using templates**<br>Build programmatic SEO pages like comparison pages, "best X" lists, and location pages. Includes playbooks, data sourcing strategies, template design, and scaling frameworks. |
| [competitor-alternatives](skills/competitor-alternatives) | **Create competitor comparison and alternative pages**<br>Build SEO-driven comparison pages that rank for "[competitor] alternative" and similar searches. Includes content architecture templates and differentiation strategies. |
| [schema-markup](skills/schema-markup) | **Add structured data for rich results**<br>Implement schema.org markup for FAQs, products, reviews, articles, and more. Includes JSON-LD examples, validation tools, and rich result impact tables. |

### Growth & Strategy

| Skill | Description |
| --- | --- |
| [marketing-ideas](skills/marketing-ideas) | **139+ proven SaaS marketing ideas**<br>Discover marketing tactics across channels and strategies. Includes ideas organized by category, ICE prioritization matrix, and execution guidance for each idea. |
| [marketing-psychology](skills/marketing-psychology) | **Apply psychological principles to marketing**<br>Use mental models, behavioral science, and cognitive biases in marketing. Includes persuasion frameworks, pricing psychology, and conversion psychology patterns. |
| [launch-strategy](skills/launch-strategy) | **Plan product launches and feature announcements**<br>Execute phased launches from alpha to full release. Includes the ORB framework (Owned/Rented/Borrowed channels), Product Hunt strategy, and ongoing launch momentum. |
| [pricing-strategy](skills/pricing-strategy) | **Pricing, packaging, and monetization strategy**<br>Design effective pricing tiers, choose value metrics, and research willingness-to-pay. Includes Van Westendorp method, tier structures, and pricing page best practices. |
| [free-tool-strategy](skills/free-tool-strategy) | **Plan marketing tools for lead generation**<br>Build free tools (calculators, generators, analyzers) for marketing and SEO. Includes tool types, validation scorecards, lead capture strategies, and MVP scoping. |
| [referral-program](skills/referral-program) | **Build referral and affiliate programs**<br>Design word-of-mouth and referral programs that drive growth. Includes program structures, incentive design, and program examples from successful companies. |

### Measurement & Paid

| Skill | Description |
| --- | --- |
| [analytics-tracking](skills/analytics-tracking) | **Set up analytics tracking and measurement**<br>Implement GA4, GTM, and event tracking for marketing and product. Includes event libraries, implementation guides, and tracking plan templates. |
| [ab-test-setup](skills/ab-test-setup) | **Plan, design, and implement A/B tests**<br>Create statistically valid experiments with proper hypothesis, sample size, and measurement. Includes test templates, sample size guides, and interpretation frameworks. |
| [paid-ads](skills/paid-ads) | **Paid advertising campaign strategy**<br>Run ads on Google Ads, Meta (Facebook/Instagram), LinkedIn, and Twitter/X. Includes campaign setup, audience targeting, ad copy templates, and optimization strategies. |

### Setup & Context

| Skill | Description |
| --- | --- |
| [product-marketing-context](skills/product-marketing-context) | **Define your product marketing context**<br>Create a central document about your product, audience, value proposition, and positioning. This context is used by all other skills to provide relevant recommendations. |
| [content-strategy](skills/content-strategy) | **Plan content strategy and topics**<br>Decide what content to create, how to organize it, and how to distribute it. Includes topic research, content frameworks, and editorial planning. |

## Installation

### Clone and Copy

```bash
git clone https://github.com/madearga/penjual.git kottler-skills
cp -r kottler-skills/skills/* ~/.config/agents/skills/
```

### Git Submodule

```bash
git submodule add https://github.com/madearga/penjual.git .claude/kottler-skills
```

## Usage

Once installed, simply ask Claude Code to help with marketing tasks:

```
"Help me optimize this landing page for conversions"
"Write homepage copy for my B2B SaaS"
"Set up GA4 tracking for trial signups"
"Create a 5-email welcome sequence"
"Build a pricing comparison page"
```

Claude will automatically recognize the task and apply the relevant skill's framework.

## Skill Categories

### Conversion Optimization (6 skills)
- `page-cro` - Any marketing page
- `signup-flow-cro` - Registration flows
- `onboarding-cro` - Post-signup activation
- `form-cro` - Lead capture forms
- `popup-cro` - Modals and overlays
- `paywall-upgrade-cro` - In-app upgrades

### Content & Copy (5 skills)
- `copywriting` - Marketing page copy
- `copy-editing` - Polish existing copy
- `email-sequence` - Automated email flows
- `cold-email` - Outreach campaigns
- `social-content` - Social media

### SEO & Discovery (4 skills)
- `seo-audit` - Technical and on-page SEO
- `programmatic-seo` - Scaled page generation
- `competitor-alternatives` - Comparison pages
- `schema-markup` - Structured data

### Growth & Strategy (6 skills)
- `marketing-ideas` - 139+ marketing tactics
- `marketing-psychology` - Mental models
- `launch-strategy` - Product launches
- `pricing-strategy` - Pricing and packaging
- `free-tool-strategy` - Lead gen tools
- `referral-program` - Referral programs

### Measurement & Paid (3 skills)
- `analytics-tracking` - Event tracking
- `ab-test-setup` - Experiment design
- `paid-ads` - Ad campaigns

### Setup & Context (2 skills)
- `product-marketing-context` - Product definition
- `content-strategy` - Content planning

## License

[MIT](LICENSE) - Use these however you want.
