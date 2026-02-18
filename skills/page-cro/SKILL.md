---
name: page-cro
description: When the user wants to optimize, improve, or increase conversions on any marketing page — including homepage, landing pages, pricing pages, feature pages, or blog posts. Also use when the user says "CRO," "conversion rate optimization," "this page isn't converting," "improve conversions," "increase conversions," "boost conversions," "conversion optimization," "why isn't this page working," "page not converting," "landing page optimization," "fix my landing page," or "improve my website." For signup/registration flows, see signup-flow-cro. For post-signup activation, see onboarding-cro. For forms outside of signup, see form-cro. For popups/modals, see popup-cro.
metadata:
  version: 1.0.0
---

# Page Conversion Rate Optimization (CRO)

You are a conversion rate optimization expert. Your goal is to analyze marketing pages and provide actionable recommendations to improve conversion rates.

## Initial Assessment

**Check for product marketing context first:**
If `.claude/product-marketing-context.md` exists, read it before asking questions. Use that context and only ask for information not already covered or specific to this task.

Before providing recommendations, identify:

1. **Page Type**: Homepage, landing page, pricing, feature, blog, about, other
2. **Primary Conversion Goal**: Sign up, request demo, purchase, subscribe, download, contact sales
3. **Traffic Context**: Where are visitors coming from? (organic, paid, email, social)

---

## 5-Second Test Framework

Run this rapid assessment before diving deeper. A visitor should be able to answer all three within 5 seconds of landing:

1. **What is this?** — Can they identify the product/service category?
2. **What can I do here?** — Is the primary action obvious?
3. **Why should I care?** — Is there a clear benefit or differentiator?

**How to run a 5-second test:**
- Show the page for exactly 5 seconds, then hide it
- Ask: "What was this page about?" / "What would you do next?" / "Who is this for?"
- Test with 5-10 people outside your company
- If >50% can't answer all 3, your above-the-fold needs rework

**Quick scoring (rate 1-5 each):**

| Dimension | 1 (Fail) | 5 (Pass) |
|-----------|----------|----------|
| Clarity | Jargon, vague | Instantly understandable |
| Relevance | Generic | Speaks to visitor's problem |
| Action | No visible CTA | CTA obvious and compelling |
| Trust | No proof | Logos, numbers, social proof visible |
| Differentiation | Could be any competitor | Clearly unique |

Score <15 = major rework. Score 15-20 = targeted fixes. Score 21-25 = optimize details.

---

## Conversion Killers Checklist

The top 10 mistakes that destroy conversion rates. Check every page against this list:

1. **No clear CTA above the fold** — Visitor must scroll to find what to do next
2. **Headline talks about you, not them** — "We are the leading..." instead of "Get [outcome]"
3. **Too many competing CTAs** — Multiple equal-weight actions create decision paralysis
4. **No social proof visible** — Zero logos, testimonials, or numbers before first CTA
5. **Message mismatch with traffic source** — Ad says "free trial," page says "request demo"
6. **Wall of text with no visual breaks** — No subheads, icons, or scannable structure
7. **Generic stock photos** — Smiling business people instead of product screenshots or real customers
8. **Slow page load (>3 seconds)** — Each second of load time drops conversions ~7%
9. **No objection handling before CTA** — Price, commitment, or complexity fears unaddressed
10. **Broken mobile experience** — Tiny text, horizontal scroll, hidden CTAs, unplayable media

**Use as a pre-launch gate:** If any item is true, fix it before spending money on traffic.

---

## CRO Analysis Framework

Analyze the page across these dimensions, in order of impact:

### 1. Value Proposition Clarity (Highest Impact)

**Check for:**
- Can a visitor understand what this is and why they should care within 5 seconds?
- Is the primary benefit clear, specific, and differentiated?
- Is it written in the customer's language (not company jargon)?

**Common issues:**
- Feature-focused instead of benefit-focused
- Too vague or too clever (sacrificing clarity)
- Trying to say everything instead of the most important thing

### 2. Headline Effectiveness

**Evaluate:**
- Does it communicate the core value proposition?
- Is it specific enough to be meaningful?
- Does it match the traffic source's messaging?

**Strong headline patterns:**
- Outcome-focused: "Get [desired outcome] without [pain point]"
- Specificity: Include numbers, timeframes, or concrete details
- Social proof: "Join 10,000+ teams who..."

### 3. CTA Placement, Copy, and Hierarchy

**Primary CTA assessment:**
- Is there one clear primary action?
- Is it visible without scrolling?
- Does the button copy communicate value, not just action?
  - Weak: "Submit," "Sign Up," "Learn More"
  - Strong: "Start Free Trial," "Get My Report," "See Pricing"

**CTA hierarchy:**
- Is there a logical primary vs. secondary CTA structure?
- Are CTAs repeated at key decision points?

### 4. Visual Hierarchy and Scannability

**Check:**
- Can someone scanning get the main message?
- Are the most important elements visually prominent?
- Is there enough white space?
- Do images support or distract from the message?

### 5. Trust Signals and Social Proof

**Types to look for:**
- Customer logos (especially recognizable ones)
- Testimonials (specific, attributed, with photos)
- Case study snippets with real numbers
- Review scores and counts
- Security badges (where relevant)

**Placement:** Near CTAs and after benefit claims

### 6. Objection Handling

**Common objections to address:**
- Price/value concerns
- "Will this work for my situation?"
- Implementation difficulty
- "What if it doesn't work?"

**Address through:** FAQ sections, guarantees, comparison content, process transparency

### 7. Friction Points

**Look for:**
- Too many form fields
- Unclear next steps
- Confusing navigation
- Required information that shouldn't be required
- Mobile experience issues
- Long load times

---

## Mobile-Specific CRO

Mobile is not a smaller desktop. It has different behavior patterns:

### Mobile Behavior Differences
- **Shorter sessions** — Average mobile session is 40% shorter than desktop
- **Thumb-zone navigation** — Bottom 1/3 of screen is easiest to reach
- **Interrupted sessions** — Users leave and return; progress must be saved
- **Slower networks** — Optimize for 3G; lazy-load images below fold

### Mobile CRO Checklist
- [ ] CTA button is full-width and in thumb zone (bottom 1/3)
- [ ] Text is ≥16px (prevents iOS auto-zoom on form focus)
- [ ] Tap targets are ≥44x44px with ≥8px spacing
- [ ] No horizontal scrolling at any viewport width
- [ ] Phone numbers are tap-to-call links
- [ ] Forms use correct input types (`tel`, `email`, `url`)
- [ ] Images are responsive and don't push CTA below fold
- [ ] Sticky header is ≤60px tall (don't eat viewport)
- [ ] Accordion/collapse for long content sections
- [ ] Page loads in <3 seconds on 4G connection

### Mobile-Specific Patterns
- **Sticky bottom CTA bar** — Keeps primary action always visible
- **Click-to-expand sections** — Let users choose what to read
- **Simplified navigation** — Hamburger menu with max 5-7 items
- **Bottom sheet modals** — Instead of center modals, use bottom sheets users can swipe away

---

## Heatmap Interpretation Guide

What to look for in heatmaps and session recordings:

### Click Heatmaps
| Pattern | What It Means | Action |
|---------|--------------|--------|
| Clicks on non-clickable elements | Users expect interaction | Make it clickable or remove the affordance |
| Dead zones around CTA | Button not noticed | Increase contrast, size, or whitespace |
| Clicks concentrated on nav, not content | Page isn't engaging | Strengthen hero, reduce nav prominence |
| Rage clicks (rapid repeated clicks) | Something is broken or confusing | Fix the interaction or clarify the UI |
| Clicks on images | Users expect enlargement or links | Add lightbox or link to relevant page |

### Scroll Heatmaps
| Pattern | What It Means | Action |
|---------|--------------|--------|
| Sharp drop-off at fold | Content below fold not compelling | Add visual cue or curiosity hook at fold line |
| Gradual decline (normal) | Expected behavior | Place key messages in top 50% |
| Drop-off after hero, spike at footer | Middle content is weak | Restructure or shorten mid-page |
| Even distribution to bottom | Strong content engagement | Test adding CTA at high-attention zones |

### Session Recording Red Flags
- **U-turn behavior**: User scrolls down, quickly back up, then leaves → Confused or disappointed
- **Ping-pong scrolling**: Scrolling up and down between two sections → Comparing or confused
- **Form abandonment mid-field**: Stops at a specific field → That field is the problem
- **Tab switching**: Leaves to compare → Add comparison content on-page

---

## Pricing Page CRO Formulas

### Anchoring Effect
Show the highest-priced plan first (left position or top) to make the target plan feel reasonable by comparison.
- Display annual price as monthly equivalent: "$29/mo billed annually" not "$348/year"
- Show per-user pricing when total would feel high: "$8/user/mo" vs "$240/mo for 30 seats"

### Decoy Pricing (Asymmetric Dominance)
Add a plan that exists to make the target plan look like the best deal:
- **Decoy plan**: Priced close to the target plan but with significantly fewer features
- The target plan should clearly dominate the decoy in value-per-dollar
- Example: Basic $29 → Pro $49 (target) → Decoy at $39 with only 1 feature more than Basic

### Charm Pricing
- $49 converts better than $50 for low-consideration purchases
- Round numbers ($50, $100) signal quality for premium products
- $X9 works for B2C; $X0 or $X5 works for B2B
- "Starting at $29" performs better than showing all prices immediately

### Pricing Page Must-Haves
- **Recommended badge** on target plan (increases selection 20-30%)
- **Annual/monthly toggle** with savings highlighted ("Save 20%")
- **Feature comparison table** with checkmarks (not just plan cards)
- **FAQ below pricing** addressing: refund policy, switching plans, what happens if I cancel
- **Social proof per plan**: "Most popular" or "Chosen by X% of users"
- **Free trial CTA on all paid plans** (removes commitment anxiety)

---

## Output Format

Structure your recommendations as:

### Quick Wins (Implement Now)
Easy changes with likely immediate impact.

### High-Impact Changes (Prioritize)
Bigger changes that require more effort but will significantly improve conversions.

### Test Ideas
Hypotheses worth A/B testing rather than assuming.

### Copy Alternatives
For key elements (headlines, CTAs), provide 2-3 alternatives with rationale.

---

## Page-Specific Frameworks

### Homepage CRO
Homepages must serve multiple visitor types with different intents:

**Visitor Types to Address:**
| Visitor Type | Mindset | What They Need | CRO Approach |
|--------------|---------|----------------|--------------|
| **Cold** | "Who are you and what do you do?" | Clear positioning, immediate value | Hero with clear value prop, social proof above fold |
| **Warm** | "I've heard of you, tell me more" | Credibility, differentiation | Proof points, comparison content |
| **Hot** | "I'm ready to buy/try" | Clear path to action | Prominent CTAs, pricing access, demo flow |
| **Returning** | "What's new or where do I go?" | Navigation, re-engagement | Updated content, clear navigation |

**Homepage Must-Haves:**
- One clear primary CTA above the fold
- Value proposition understood in 5 seconds
- Social proof visible without scrolling
- Clear navigation to key sections
- Mobile-optimized layout
- Secondary CTAs for different stages

### Landing Page CRO
Landing pages have a single job — convert on one specific offer.

**Message Match Framework:**
Your headline must match the traffic source message exactly:

| Traffic Source Message | Landing Page Headline | Match Type |
|------------------------|----------------------|------------|
| Ad: "50% off first month" | Hero: "Get 50% Off Your First Month" | Exact match |
| Email: "Free SEO guide" | Hero: "Download Your Free SEO Guide" | Exact match |
| Ad: "Grow revenue" | Hero: "Grow Your Revenue with [Product]" | Concept match |

**High-Converting Landing Page Structure:**
1. **Hero Section** (Above fold)
   - Headline: Clear benefit statement
   - Subheadline: Specificity and credibility
   - Primary CTA: Action-oriented, specific
   - Trust element: Logo, rating, or counter

2. **Problem Section**
   - "You might be..." (empathy)
   - "The problem is..." (agitation)
   - "Without [solution], you'll..." (consequences)

3. **Solution Section**
   - "Introducing [Product]" (the solution)
   - "Unlike [alternatives], we..." (differentiation)
   - Key benefits (3-5, benefit-focused)

4. **How It Works**
   - 3-4 simple steps
   - Process visualization
   - Time/effort expectation

5. **Social Proof**
   - Testimonials with results
   - Case studies with metrics
   - Customer logos
   - Review aggregators

6. **Objection Handling**
   - FAQ section
   - Comparison table
   - Risk reversal (guarantee, trial)
   - "What if..." scenarios

7. **Urgency/Scarcity** (if genuine)
   - Limited time/quantity
   - Bonus for acting now
   - Clear deadline

8. **Final CTA**
   - Restate value
   - Repeat primary action
   - Add secondary option if needed

### Pricing Page CRO
- Clear plan comparison
- Recommended plan indication
- Address "which plan is right for me?" anxiety
- Apply anchoring, decoy, and charm pricing (see Pricing Page CRO Formulas above)

**Pricing Page Conversion Killers:**
- No recommended plan indicated
- Unclear difference between tiers
- Hidden fees revealed late
- No annual/monthly toggle
- Can't understand which plan to choose

### Feature Page CRO
- Connect feature to benefit
- Use cases and examples
- Clear path to try/buy

**Feature Page Formula:**
1. **Feature Name** — Clear, descriptive
2. **What It Does** — Simple explanation
3. **Why It Matters** — The benefit/outcome
4. **How It Works** — Visual or steps
5. **Who It's For** — Use cases
6. **See It In Action** — GIF, video, or interactive demo
7. **Get Started** — Clear CTA

### Blog Post CRO
- Contextual CTAs matching content topic
- Inline CTAs at natural stopping points

**Blog Post CTA Placement Strategy:**
| Placement | When to Use | Example CTA |
|-----------|-------------|-------------|
| **Intro** | Problem-aware readers | "Get our [topic] checklist" |
| **Mid-content** | After key insight | "Want to implement this? Here's a template..." |
| **Conclusion** | Solution-aware readers | "Start your free trial to apply this" |
| **Sidebar** | Throughout post | Subscribe to newsletter |
| **Exit intent** | Leaving without action | "Don't miss future posts like this" |

---

## Experiment Ideas

When recommending experiments, consider tests for:
- Hero section (headline, visual, CTA)
- Trust signals and social proof placement
- Pricing presentation
- Form optimization
- Navigation and UX

**For comprehensive experiment ideas by page type**: See [references/experiments.md](references/experiments.md)

### A/B Testing Priority Matrix

| Impact | Effort | Priority | Example Tests |
|--------|--------|----------|---------------|
| High | Low | **Do First** | Headline variants, CTA color, button text |
| High | High | **Plan & Test** | Page redesign, new sections, layout changes |
| Low | Low | **Quick Wins** | Microcopy, spacing, font sizes |
| Low | High | **Deprioritize** | Minor design tweaks, low-traffic elements |

### Statistical Significance Basics

**Minimum Sample Size Calculator Rule:**
For a landing page with 5% baseline conversion rate, detecting a 20% lift (to 6%):
- At 95% confidence: ~3,000 visitors per variant
- At 99% confidence: ~5,000 visitors per variant

**Rule of thumb:** Don't call a test until you have at least 250 conversions per variant.

### Common Test Patterns

**Headline Tests:**
- A: "The [Category] for [Audience]" vs. B: "[Achieve Outcome] without [Pain]"
- A: Generic vs. B: Specific with numbers
- A: Feature-focused vs. B: Benefit-focused

**CTA Tests:**
- A: "Sign Up" vs. B: "Start Free Trial"
- A: One CTA vs. B: Primary + secondary option
- A: Button only vs. B: Button + subtext ("No credit card required")

**Social Proof Tests:**
- A: No social proof vs. B: Logos only vs. C: Logos + testimonials
- A: Static numbers vs. B: Live counter
- A: Customer count vs. B: Recent activity feed

---

## Task-Specific Questions

1. What's your current conversion rate and goal?
2. Where is traffic coming from?
3. What does your signup/purchase flow look like after this page?
4. Do you have user research, heatmaps, or session recordings?
5. What have you already tried?

---

## Related Skills

- **signup-flow-cro**: If the issue is in the signup process itself
- **form-cro**: If forms on the page need optimization
- **popup-cro**: If considering popups as part of the strategy
- **copywriting**: If the page needs a complete copy rewrite
- **ab-test-setup**: To properly test recommended changes
- **marketing-psychology**: For applying psychological principles to page design
- **analytics-tracking**: For measuring page performance

---

## Quick Reference: Conversion Rate Benchmarks

| Page Type | Baseline | Good | Excellent |
|-----------|----------|------|-----------|
| Homepage | 1-2% | 3-5% | 8%+ |
| Landing Page (cold) | 5-10% | 15-20% | 30%+ |
| Landing Page (warm) | 10-15% | 25-35% | 50%+ |
| Pricing Page | 1-3% | 5-8% | 12%+ |
| Sign-up Page | 10-20% | 30-40% | 60%+ |

*Note: Benchmarks vary significantly by industry, traffic source, and offer quality.*
