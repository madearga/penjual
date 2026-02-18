---
name: email-sequence
description: When the user wants to create or optimize an email sequence, drip campaign, automated email flow, or lifecycle email program. Also use when the user mentions "email sequence," "drip campaign," "nurture sequence," "onboarding emails," "welcome sequence," "re-engagement emails," "email automation," or "lifecycle emails." For in-app onboarding, see onboarding-cro.
metadata:
  version: 1.0.0
---

# Email Sequence Design

You are an expert in email marketing and automation. Your goal is to create email sequences that nurture relationships, drive action, and move people toward conversion.

## Initial Assessment

**Check for product marketing context first:**
If `.claude/product-marketing-context.md` exists, read it before asking questions. Use that context and only ask for information not already covered or specific to this task.

Before creating a sequence, understand:

1. **Sequence Type**
   - Welcome/onboarding sequence
   - Lead nurture sequence
   - Re-engagement sequence
   - Post-purchase sequence
   - Event-based sequence
   - Educational sequence
   - Sales sequence

2. **Audience Context**
   - Who are they?
   - What triggered them into this sequence?
   - What do they already know/believe?
   - What's their current relationship with you?

3. **Goals**
   - Primary conversion goal
   - Relationship-building goals
   - Segmentation goals
   - What defines success?

---

## Core Principles

### 1. One Email, One Job
- Each email has one primary purpose
- One main CTA per email
- Don't try to do everything

### 2. Value Before Ask
- Lead with usefulness
- Build trust through content
- Earn the right to sell

### 3. Relevance Over Volume
- Fewer, better emails win
- Segment for relevance
- Quality > frequency

### 4. Clear Path Forward
- Every email moves them somewhere
- Links should do something useful
- Make next steps obvious

---

## Email Sequence Strategy

### Sequence Length
- Welcome: 3-7 emails
- Lead nurture: 5-10 emails
- Onboarding: 5-10 emails
- Re-engagement: 3-5 emails

Depends on:
- Sales cycle length
- Product complexity
- Relationship stage

### Timing/Delays
- Welcome email: Immediately
- Early sequence: 1-2 days apart
- Nurture: 2-4 days apart
- Long-term: Weekly or bi-weekly

Consider:
- B2B: Avoid weekends
- B2C: Test weekends
- Time zones: Send at local time

### Subject Line Strategy
- Clear > Clever
- Specific > Vague
- Benefit or curiosity-driven
- 40-60 characters ideal
- Test emoji (they're polarizing)

**Patterns that work:**
- Question: "Still struggling with X?"
- How-to: "How to [achieve outcome] in [timeframe]"
- Number: "3 ways to [benefit]"
- Direct: "[First name], your [thing] is ready"
- Story tease: "The mistake I made with [topic]"

### Preview Text
- Extends the subject line
- ~90-140 characters
- Don't repeat subject line
- Complete the thought or add intrigue

---

## Sequence Types Overview

### Welcome Sequence (Post-Signup)
**Length**: 5-7 emails over 12-14 days
**Goal**: Activate, build trust, convert

Key emails:
1. Welcome + deliver promised value (immediate)
2. Quick win (day 1-2)
3. Story/Why (day 3-4)
4. Social proof (day 5-6)
5. Overcome objection (day 7-8)
6. Core feature highlight (day 9-11)
7. Conversion (day 12-14)

### Lead Nurture Sequence (Pre-Sale)
**Length**: 6-8 emails over 2-3 weeks
**Goal**: Build trust, demonstrate expertise, convert

Key emails:
1. Deliver lead magnet + intro (immediate)
2. Expand on topic (day 2-3)
3. Problem deep-dive (day 4-5)
4. Solution framework (day 6-8)
5. Case study (day 9-11)
6. Differentiation (day 12-14)
7. Objection handler (day 15-18)
8. Direct offer (day 19-21)

### Re-Engagement Sequence
**Length**: 3-4 emails over 2 weeks
**Trigger**: 30-60 days of inactivity
**Goal**: Win back or clean list

Key emails:
1. Check-in (genuine concern)
2. Value reminder (what's new)
3. Incentive (special offer)
4. Last chance (stay or unsubscribe)

### Onboarding Sequence (Product Users)
**Length**: 5-7 emails over 14 days
**Goal**: Activate, drive to aha moment, upgrade
**Note**: Coordinate with in-app onboarding—email supports, doesn't duplicate

Key emails:
1. Welcome + first step (immediate)
2. Getting started help (day 1)
3. Feature highlight (day 2-3)
4. Success story (day 4-5)
5. Check-in (day 7)
6. Advanced tip (day 10-12)
7. Upgrade/expand (day 14+)

**For detailed templates**: See [references/sequence-templates.md](references/sequence-templates.md)

---

## Email Types by Category

| Category | Email Types |
|----------|------------|
| **Onboarding** | New users series, new customers series, step reminders, user invites |
| **Retention** | Upgrade to paid, plan upgrade, review requests, proactive support, usage reports, NPS, referral |
| **Billing** | Switch to annual, failed payment recovery, cancellation survey, renewal reminders |
| **Usage** | Daily/weekly/monthly summaries, event notifications, milestone celebrations |
| **Win-Back** | Expired trials, cancelled customers |
| **Campaign** | Newsletter, seasonal promos, product updates, industry news, pricing updates |

**For detailed email type reference**: See [references/email-types.md](references/email-types.md)

---

## Email Copy Guidelines

### Structure
1. **Hook**: First line grabs attention
2. **Context**: Why this matters to them
3. **Value**: The useful content
4. **CTA**: What to do next
5. **Sign-off**: Human, warm close

### Formatting
- Short paragraphs (1-3 sentences)
- White space between sections
- Bullet points for scanability
- Bold for emphasis (sparingly)
- Mobile-first (most read on phone)

### Tone
- Conversational, not formal
- First-person (I/we) and second-person (you)
- Active voice
- Read it out loud—does it sound human?

### Length
- 50-125 words for transactional
- 150-300 words for educational
- 300-500 words for story-driven

### CTA Guidelines
- Buttons for primary actions
- Links for secondary actions
- One clear primary CTA per email
- Button text: Action + outcome

**For detailed copy, personalization, and testing guidelines**: See [references/copy-guidelines.md](references/copy-guidelines.md)

---

## Output Format

### Sequence Overview
```
Sequence Name: [Name]
Trigger: [What starts the sequence]
Goal: [Primary conversion goal]
Length: [Number of emails]
Timing: [Delay between emails]
Exit Conditions: [When they leave the sequence]
```

### For Each Email
```
Email [#]: [Name/Purpose]
Send: [Timing]
Subject: [Subject line]
Preview: [Preview text]
Body: [Full copy]
CTA: [Button text] → [Link destination]
Segment/Conditions: [If applicable]
```

### Metrics Plan
What to measure and benchmarks

---

## Task-Specific Questions

1. What triggers entry to this sequence?
2. What's the primary goal/conversion action?
3. What do they already know about you?
4. What other emails are they receiving?
5. What's your current email performance?

---

## Tool Integrations

For implementation, see the [tools registry](../../tools/REGISTRY.md). Key email tools:

| Tool | Best For | MCP | Guide |
|------|----------|:---:|-------|
| **Customer.io** | Behavior-based automation | - | [customer-io.md](../../tools/integrations/customer-io.md) |
| **Mailchimp** | SMB email marketing | ✓ | [mailchimp.md](../../tools/integrations/mailchimp.md) |
| **Resend** | Developer-friendly transactional | ✓ | [resend.md](../../tools/integrations/resend.md) |
| **SendGrid** | Transactional email at scale | - | [sendgrid.md](../../tools/integrations/sendgrid.md) |
| **Kit** | Creator/newsletter focused | - | [kit.md](../../tools/integrations/kit.md) |

---

## Behavioral Trigger Mapping

Map user actions (or inaction) to automated email responses. Every trigger should have a clear intent and a defined delay.

### Action-Based Triggers

| User Action | Email Response | Delay | Goal |
|------------|---------------|-------|------|
| Signs up but doesn't activate | "Need help getting started?" | 24 hours | Drive first action |
| Completes onboarding | "You're set up! Here's what to try next" | 1 hour | Accelerate to aha moment |
| Uses key feature for first time | "Nice — here's how to get more out of [feature]" | 2 hours | Deepen engagement |
| Invites a team member | "Great call — here's how teams use [Product] together" | 1 hour | Expand adoption |
| Hits usage limit | "You're growing! Here's how to unlock more" | Immediate | Upgrade |
| Hasn't logged in for 7 days | "We noticed you've been away — anything we can help with?" | 7 days inactive | Re-engage |
| Visits pricing page | "Questions about pricing? Here's a quick breakdown" | 1 hour | Convert |
| Starts trial, 3 days left | "Your trial ends in 3 days — here's what you'll lose" | 3 days before expiry | Urgency |
| Cancels subscription | "We're sorry to see you go — quick question?" | Immediate | Win-back / feedback |
| Submits support ticket | "We got your message — here's what to expect" | Immediate | Set expectations |

### Inaction-Based Triggers

| Inaction | Email Response | Delay | Goal |
|----------|---------------|-------|------|
| Signed up, never logged in | "Your account is waiting — log in to get started" | 48 hours | Activation |
| Created account, no project | "Create your first [thing] in 2 minutes" | 3 days | First value |
| Active user, never upgraded | "You're on the free plan — here's what you're missing" | 14 days | Upgrade |
| Downloaded resource, no reply | "Did [resource] help? Here's the next step" | 5 days | Nurture |

### Trigger Design Rules
1. Every trigger needs a **cool-down period** — don't re-fire the same trigger within 7-14 days
2. Set **mutual exclusions** — if they're in an onboarding sequence, don't also fire a re-engagement sequence
3. Define **exit conditions** — what removes them from the triggered flow (e.g., they complete the action, they upgrade, they unsubscribe)
4. Cap at **1 automated email per day** per user across all triggers

---

## Segmentation Strategy by Engagement Level

Not all subscribers deserve the same emails. Segment by engagement to improve deliverability and relevance.

### Engagement Tiers

| Tier | Definition | Email Strategy |
|------|-----------|---------------|
| **Hot** | Opened/clicked in last 7 days | Full send frequency. Test new content. Include promotional asks. |
| **Warm** | Opened/clicked in last 30 days | Standard frequency. Lead with value. Soft CTAs. |
| **Cool** | Opened in last 60 days, no clicks | Reduce frequency (1x/week max). High-value content only. Re-engage. |
| **Cold** | No opens in 60-90 days | Re-engagement sequence only. 3-4 emails, then suppress. |
| **Dead** | No opens in 90+ days | Remove from active lists. Final sunset email, then suppress. |

### Segmentation Signals Beyond Opens
- **Product usage:** Daily active vs. weekly vs. monthly vs. churned
- **Purchase history:** Never bought, one-time buyer, repeat buyer, high-value
- **Content preferences:** Which links they click, which topics they engage with
- **Lifecycle stage:** Trial, onboarding, active, at-risk, churned
- **Source:** How they joined your list (organic, paid, referral, event)

### List Hygiene Schedule
- **Weekly:** Remove hard bounces
- **Monthly:** Suppress soft bounces (3+ consecutive)
- **Quarterly:** Run re-engagement sequence for Cold tier, suppress non-responders
- **Bi-annually:** Full list audit — remove Dead tier, verify data quality

---

## Email Deliverability Checklist

Poor deliverability silently kills your email program. Run this checklist before launching any sequence.

### Infrastructure
- [ ] SPF record configured for all sending domains
- [ ] DKIM signing enabled and verified
- [ ] DMARC policy set (at minimum `p=none` with reporting)
- [ ] Custom return-path domain configured
- [ ] Dedicated IP (if sending 50k+/month) or reputable shared IP
- [ ] Feedback loops registered with major ISPs (Gmail, Yahoo, Outlook)

### List Quality
- [ ] All contacts opted in (no purchased lists — ever)
- [ ] Double opt-in enabled for new signups
- [ ] Hard bounces removed after first occurrence
- [ ] Soft bounces suppressed after 3 consecutive failures
- [ ] Role-based addresses removed (info@, admin@, sales@)
- [ ] Spam traps checked (use a verification service before importing)

### Content
- [ ] Text-to-image ratio is healthy (at least 60% text)
- [ ] No broken links or images
- [ ] Unsubscribe link is visible and works
- [ ] Physical mailing address included
- [ ] Subject line tested against spam filters
- [ ] Preheader text is intentional (not auto-generated from body)
- [ ] Personalization tokens have fallback values (no "Hi {{FirstName}}" showing)

### Sending Practices
- [ ] Consistent sending schedule (ISPs reward predictability)
- [ ] Volume doesn't spike more than 2x week-over-week
- [ ] Suppression lists are checked before every send
- [ ] Test emails sent to seed accounts across Gmail, Outlook, Yahoo
- [ ] Engagement metrics monitored within 24 hours of each send

---

## Dynamic Content & Personalization Tokens

Move beyond "Hi {{FirstName}}." Meaningful personalization drives 2-3x higher engagement.

### Personalization Hierarchy (Low → High Impact)

| Level | Token | Example | Impact |
|-------|-------|---------|--------|
| **Basic** | First name, company | "Hi Sarah" | Low — expected, not impressive |
| **Contextual** | Plan type, signup source | "As a Pro plan user, you can..." | Medium — shows awareness |
| **Behavioral** | Last action, feature used | "Since you started using [feature]..." | High — feels tailored |
| **Predictive** | Recommended next step | "Teams like yours typically try [X] next" | Highest — feels like a personal advisor |

### Dynamic Content Blocks

Use conditional content blocks to show different sections based on user attributes:

```
IF user.plan = "free" THEN
  Show: upgrade benefits block
ELSE IF user.plan = "pro" THEN
  Show: advanced tips block
ELSE
  Show: enterprise case study block
END
```

### Tokens That Matter

| Token | Use Case | Fallback |
|-------|----------|----------|
| `{{first_name}}` | Greeting | "there" or omit greeting |
| `{{company_name}}` | Relevance signal | "your team" |
| `{{plan_name}}` | Contextual offers | "your current plan" |
| `{{days_since_signup}}` | Urgency/progress | omit |
| `{{last_feature_used}}` | Behavioral relevance | "your recent activity" |
| `{{trial_days_remaining}}` | Urgency | omit if not in trial |
| `{{teammate_count}}` | Social proof / expansion | "your team" |

### Personalization Rules
1. Every token must have a fallback — broken personalization is worse than none
2. Don't personalize for the sake of it — only when it adds relevance
3. Test with edge cases: What if first name is blank? What if they have no activity?
4. Behavioral tokens > demographic tokens for engagement

---

## Win-Back Sequence

For users who cancelled, churned, or let their trial expire without converting.

### Timing
- **Email 1:** Day 1 after churn/expiry
- **Email 2:** Day 4
- **Email 3:** Day 10
- **Email 4:** Day 21
- **Email 5 (final):** Day 45

### Email 1: The Empathy Check-In (Day 1)
**Angle:** Genuine concern, no pitch
**Subject:** "Quick question about your experience"
**Approach:** Acknowledge they left. Ask one simple question about why. Make it easy to reply (not a survey link). Show you care about the answer.
**CTA:** Reply to this email

### Email 2: The Value Reminder (Day 4)
**Angle:** What they're missing, framed as loss
**Subject:** "What happens to your [data/projects/progress]"
**Approach:** Remind them of the specific value they built (projects created, data saved, time saved). Frame it as loss, not as a pitch to return. Mention any new features shipped since they left.
**CTA:** Log back in / Reactivate

### Email 3: The Social Proof Nudge (Day 10)
**Angle:** Others came back and here's what happened
**Subject:** "[Customer name] almost left too"
**Approach:** Tell a brief story of someone who churned and came back. What changed? What results did they see? Make it specific and relatable to the recipient's use case.
**CTA:** See what's new / Restart your account

### Email 4: The Incentive (Day 21)
**Angle:** Special offer to reduce friction
**Subject:** "A reason to come back"
**Approach:** Offer something concrete: 30% off for 3 months, extended trial, free migration help, complimentary onboarding call. Time-limit the offer (7-14 days). Only use if Emails 1-3 didn't convert.
**CTA:** Claim your offer

### Email 5: The Clean Break (Day 45)
**Angle:** Final touch, no pressure
**Subject:** "Closing the loop"
**Approach:** Let them know this is the last email. No hard sell. Leave the door open. Mention that their data is safe for X more days if applicable. Wish them well genuinely.
**CTA:** Come back anytime / Unsubscribe

### Win-Back Rules
- Suppress from all other marketing sequences during win-back
- If they re-activate, move immediately to a "welcome back" onboarding flow
- Track which email converted them — this tells you the real objection
- Never send more than 5 win-back emails. Respect the goodbye.

---

## Related Skills

- **onboarding-cro**: For in-app onboarding (email supports this)
- **copywriting**: For landing pages emails link to
- **ab-test-setup**: For testing email elements
- **popup-cro**: For email capture popups
- **cold-email**: For outbound sales sequences
- **copy-editing**: For polishing email copy
