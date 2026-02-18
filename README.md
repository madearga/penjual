# Kottler Skills for Claude Code

A collection of AI agent skills focused on marketing tasks for technical marketers and founders.

## What are Skills?

Skills are markdown files that give AI agents specialized knowledge and workflows for specific tasks. When you add these to your project, Claude Code can recognize when you're working on a marketing task and apply the right frameworks and best practices.

## Available Skills

| Skill | Description |
| --- | --- |
| [ab-test-setup](skills/ab-test-setup) | Plan, design, or implement an A/B test |
| [analytics-tracking](skills/analytics-tracking) | Set up analytics tracking and measurement |
| [competitor-alternatives](skills/competitor-alternatives) | Create competitor comparison pages |
| [content-strategy](skills/content-strategy) | Plan content strategy and topics |
| [copy-editing](skills/copy-editing) | Edit and improve existing marketing copy |
| [copywriting](skills/copywriting) | Write marketing copy for any page |
| [cold-email](skills/cold-email) | Create cold email outreach campaigns |
| [email-sequence](skills/email-sequence) | Create email sequences and drip campaigns |
| [form-cro](skills/form-cro) | Optimize lead capture forms |
| [free-tool-strategy](skills/free-tool-strategy) | Plan marketing tools for lead gen |
| [launch-strategy](skills/launch-strategy) | Plan product launches and announcements |
| [marketing-ideas](skills/marketing-ideas) | 139+ proven SaaS marketing ideas |
| [marketing-psychology](skills/marketing-psychology) | Apply psychology to marketing |
| [onboarding-cro](skills/onboarding-cro) | Optimize post-signup activation |
| [page-cro](skills/page-cro) | Optimize any marketing page |
| [paid-ads](skills/paid-ads) | Paid advertising campaign strategy |
| [paywall-upgrade-cro](skills/paywall-upgrade-cro) | Optimize in-app upgrade screens |
| [popup-cro](skills/popup-cro) | Create and optimize popups |
| [pricing-strategy](skills/pricing-strategy) | Pricing and monetization strategy |
| [product-marketing-context](skills/product-marketing-context) | Define your product marketing context |
| [programmatic-seo](skills/programmatic-seo) | Create SEO pages at scale |
| [referral-program](skills/referral-program) | Build referral programs |
| [schema-markup](skills/schema-markup) | Add structured data for rich results |
| [seo-audit](skills/seo-audit) | Audit and fix SEO issues |
| [signup-flow-cro](skills/signup-flow-cro) | Optimize registration flows |
| [social-content](skills/social-content) | Social media content strategy |

## Installation

### Clone and Copy

```bash
git clone https://github.com/madearga/penjual.git
cp -r penjual/skills/* ~/.config/agents/skills/
```

### Git Submodule

```bash
git submodule add https://github.com/madearga/penjual.git .claude/kottler-skills
```

## Usage

Once installed, ask Claude Code to help with marketing tasks:

```
"Help me optimize this landing page"
"Write homepage copy for my SaaS"
"Set up GA4 tracking for signups"
"Create a 5-email welcome sequence"
```

## License

[MIT](LICENSE) - Use these however you want.
