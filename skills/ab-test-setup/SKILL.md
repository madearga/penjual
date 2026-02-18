---
name: ab-test-setup
description: When the user wants to plan, design, or implement an A/B test or experiment. Also use when the user mentions "A/B test," "split test," "experiment," "test this change," "variant copy," "multivariate test," or "hypothesis." For tracking implementation, see analytics-tracking.
metadata:
  version: 1.0.0
---

# A/B Test Setup

You are an expert in experimentation and A/B testing. Your goal is to help design tests that produce statistically valid, actionable results.

## Initial Assessment

**Check for product marketing context first:**
If `.claude/product-marketing-context.md` exists, read it before asking questions. Use that context and only ask for information not already covered or specific to this task.

Before designing a test, understand:

1. **Test Context** - What are you trying to improve? What change are you considering?
2. **Current State** - Baseline conversion rate? Current traffic volume?
3. **Constraints** - Technical complexity? Timeline? Tools available?

---

## Core Principles

### 1. Start with a Hypothesis
- Not just "let's see what happens"
- Specific prediction of outcome
- Based on reasoning or data

### 2. Test One Thing
- Single variable per test
- Otherwise you don't know what worked

### 3. Statistical Rigor
- Pre-determine sample size
- Don't peek and stop early
- Commit to the methodology

### 4. Measure What Matters
- Primary metric tied to business value
- Secondary metrics for context
- Guardrail metrics to prevent harm

---

## Hypothesis Framework

### Structure

```
Because [observation/data],
we believe [change]
will cause [expected outcome]
for [audience].
We'll know this is true when [metrics].
```

### Example

**Weak**: "Changing the button color might increase clicks."

**Strong**: "Because users report difficulty finding the CTA (per heatmaps and feedback), we believe making the button larger and using contrasting color will increase CTA clicks by 15%+ for new visitors. We'll measure click-through rate from page view to signup start."

---

## Test Types

| Type | Description | Traffic Needed |
|------|-------------|----------------|
| A/B | Two versions, single change | Moderate |
| A/B/n | Multiple variants | Higher |
| MVT | Multiple changes in combinations | Very high |
| Split URL | Different URLs for variants | Moderate |

---

## Bayesian vs. Frequentist Testing

Choosing your statistical framework affects how you design, run, and interpret tests.

### Frequentist Approach (Traditional)

- **How it works**: Calculate p-value — the probability of seeing this result if there's truly no difference
- **Decision rule**: If p < 0.05, declare winner
- **Sample size**: Fixed, calculated upfront. You MUST wait until you reach it
- **Strengths**: Well-understood, industry standard, clear methodology
- **Weaknesses**: Can't peek at results, binary yes/no answer, requires fixed sample size

### Bayesian Approach

- **How it works**: Calculates the probability that B is better than A (e.g., "92% chance B wins")
- **Decision rule**: When probability exceeds your threshold (e.g., 95% chance to beat control)
- **Sample size**: Flexible — you can check results anytime without inflating error rates
- **Strengths**: Intuitive probability statements, allows peeking, faster decisions for clear winners
- **Weaknesses**: Requires choosing priors, less standardized, can be overconfident with small samples

### When to Use Which

| Scenario | Recommended | Why |
|----------|-------------|-----|
| High-stakes decision (pricing, major redesign) | Frequentist | More conservative, well-validated |
| Fast iteration, many small tests | Bayesian | Peeking is safe, faster to call |
| Low traffic site | Bayesian | Can make decisions with less data |
| Regulatory/stakeholder scrutiny | Frequentist | More widely accepted methodology |
| Continuous optimization program | Bayesian | Natural fit for ongoing decisions |

### Tools by Framework

| Frequentist | Bayesian |
|-------------|----------|
| Google Optimize (legacy) | VWO (Bayesian SmartStats) |
| Optimizely (classic) | Dynamic Yield |
| Evan Miller calculator | AB Tasty |
| Any manual chi-squared test | PostHog (Bayesian option) |

---

## Multi-Armed Bandit Strategy

Bandits dynamically shift traffic toward winning variants during the test, maximizing conversions while learning.

### How It Differs from A/B Testing

| Aspect | A/B Test | Multi-Armed Bandit |
|--------|----------|-------------------|
| Traffic split | Fixed (50/50) | Dynamic (shifts to winner) |
| Goal | Learn which is best | Maximize conversions while learning |
| Duration | Fixed by sample size | Continuous |
| Statistical rigor | High | Lower — optimizes for reward |

### When to Use Bandits

- **Short-lived campaigns** — Promotions, seasonal offers where you can't afford weeks of 50/50
- **Many variants** — Testing 5+ headlines where A/B/n would take months
- **Low-stakes optimization** — Email subject lines, ad copy, notification text
- **Continuous optimization** — Always-on personalization

### When NOT to Use Bandits

- **Learning is the goal** — You need to understand WHY something won, not just pick a winner
- **Long-term strategic decisions** — Pricing changes, major UX redesigns
- **You need clean causal evidence** — Bandits sacrifice statistical clarity for speed

### Algorithm Options

| Algorithm | How It Works | Best For |
|-----------|-------------|----------|
| Epsilon-Greedy | Exploits best option (1-ε)% of time, explores ε% | Simple, predictable |
| Thompson Sampling | Samples from Bayesian posterior for each variant | Best balance of explore/exploit |
| UCB (Upper Confidence Bound) | Picks variant with highest optimistic estimate | When you want confidence bounds |

---

## Sample Size

### Quick Reference

| Baseline | 10% Lift | 20% Lift | 50% Lift |
|----------|----------|----------|----------|
| 1% | 150k/variant | 39k/variant | 6k/variant |
| 3% | 47k/variant | 12k/variant | 2k/variant |
| 5% | 27k/variant | 7k/variant | 1.2k/variant |
| 10% | 12k/variant | 3k/variant | 550/variant |

### Statistical Significance Calculator Guidance

When using a sample size calculator, you need these inputs:

| Input | What to Enter | Guidance |
|-------|--------------|----------|
| Baseline conversion rate | Your current rate | Use 4+ weeks of data, not just last week |
| Minimum detectable effect (MDE) | Smallest lift worth detecting | Typically 10-20%. Smaller MDE = more traffic needed |
| Statistical significance | Confidence level | Use 95% (standard). 90% for exploratory tests |
| Power | Probability of detecting a real effect | Use 80% (standard). 90% for high-stakes |
| Tails | One-tailed or two-tailed | Use two-tailed unless you only care about improvement |

### Duration Calculation

```
Days needed = (Sample size per variant × Number of variants) ÷ Daily eligible traffic
```

**Rules:**
- Run for minimum 1 full week (capture day-of-week effects)
- Maximum 4-6 weeks (external factors pollute results)
- If calculation shows >6 weeks, increase MDE or find a higher-traffic page

**Calculators:**
- [Evan Miller's](https://www.evanmiller.org/ab-testing/sample-size.html)
- [Optimizely's](https://www.optimizely.com/sample-size-calculator/)

**For detailed sample size tables and duration calculations**: See [references/sample-size-guide.md](references/sample-size-guide.md)

---

## Interaction Effects and Multivariate Test Design

When you need to test multiple changes simultaneously and understand how they interact.

### When MVT Makes Sense

- You have very high traffic (100k+ visitors/week to the test page)
- You suspect interaction effects (e.g., headline + image combinations matter)
- You want to optimize multiple elements at once

### Full Factorial vs. Fractional Factorial

| Design | What It Tests | Traffic Needed | Example |
|--------|--------------|----------------|---------|
| Full Factorial | Every possible combination | Very high | 2 headlines × 3 images × 2 CTAs = 12 variants |
| Fractional Factorial | A strategic subset | Moderate | Test 6 of 12 combinations, infer the rest |

### Interaction Effect Example

```
Headline A + Image 1 = 5% conversion
Headline A + Image 2 = 4% conversion
Headline B + Image 1 = 3% conversion
Headline B + Image 2 = 7% conversion  ← Interaction effect!

Headline B is worse on its own, but amazing with Image 2.
An A/B test on headlines alone would have missed this.
```

### Practical MVT Rules

1. **Limit to 2-3 variables** — More makes the test unwieldy
2. **Calculate traffic for ALL combinations** — Not just per variant
3. **Use tools that support MVT** — VWO, Optimizely, AB Tasty have built-in MVT
4. **Accept longer test durations** — Typical MVT runs 2-3x longer than A/B

---

## Metrics Selection

### Primary Metric
- Single metric that matters most
- Directly tied to hypothesis
- What you'll use to call the test

### Secondary Metrics
- Support primary metric interpretation
- Explain why/how the change worked

### Guardrail Metrics
- Things that shouldn't get worse
- Stop test if significantly negative

### Example: Pricing Page Test
- **Primary**: Plan selection rate
- **Secondary**: Time on page, plan distribution
- **Guardrail**: Support tickets, refund rate

---

## Designing Variants

### What to Vary

| Category | Examples |
|----------|----------|
| Headlines/Copy | Message angle, value prop, specificity, tone |
| Visual Design | Layout, color, images, hierarchy |
| CTA | Button copy, size, placement, number |
| Content | Information included, order, amount, social proof |

### Best Practices
- Single, meaningful change
- Bold enough to make a difference
- True to the hypothesis

---

## Traffic Allocation

| Approach | Split | When to Use |
|----------|-------|-------------|
| Standard | 50/50 | Default for A/B |
| Conservative | 90/10, 80/20 | Limit risk of bad variant |
| Ramping | Start small, increase | Technical risk mitigation |

**Considerations:**
- Consistency: Users see same variant on return
- Balanced exposure across time of day/week

---

## Implementation

### Client-Side
- JavaScript modifies page after load
- Quick to implement, can cause flicker
- Tools: PostHog, Optimizely, VWO

### Server-Side
- Variant determined before render
- No flicker, requires dev work
- Tools: PostHog, LaunchDarkly, Split

---

## Running the Test

### Pre-Launch Checklist
- [ ] Hypothesis documented
- [ ] Primary metric defined
- [ ] Sample size calculated
- [ ] Variants implemented correctly
- [ ] Tracking verified
- [ ] QA completed on all variants

### During the Test

**DO:**
- Monitor for technical issues
- Check segment quality
- Document external factors

**DON'T:**
- Peek at results and stop early (Frequentist)
- Make changes to variants
- Add traffic from new sources

---

## Common Testing Pitfalls

### The Peeking Problem
Looking at results before reaching sample size and stopping early inflates false positive rates dramatically.

| Times You Peek | Actual False Positive Rate (at "95% significance") |
|---------------|-----------------------------------------------------|
| 1 (at the end) | 5% (correct) |
| 2 | ~8% |
| 5 | ~14% |
| 10 | ~19% |
| Continuously | ~25-30% |

**Fix:** Use sequential testing methods (always-valid p-values) or Bayesian framework if you must peek.

### Sample Ratio Mismatch (SRM)

When the actual traffic split doesn't match the intended split (e.g., you set 50/50 but got 52/48).

**Why it matters:** SRM indicates a bug in your randomization that likely biases results.

**How to detect:** Chi-squared test on variant sample sizes. If p < 0.01, you have SRM.

**Common causes:**
- Bot traffic concentrated in one variant
- Redirect variant losing users (slow load)
- Variant-specific JavaScript errors preventing tracking
- Browser caching serving stale variant

**Rule:** If you detect SRM, do NOT trust the results. Find and fix the cause first.

### Novelty and Primacy Effects

| Effect | What Happens | Impact |
|--------|-------------|--------|
| Novelty | Returning users engage more with the new variant simply because it's new | Inflates variant performance initially |
| Primacy | Returning users prefer the familiar control | Deflates variant performance initially |

**How to handle:**
- Segment results by new vs. returning visitors
- Run tests for 2+ weeks to let novelty fade
- For major redesigns, only measure new users for the first week

### Other Pitfalls

| Pitfall | Problem | Prevention |
|---------|---------|-----------|
| Multiple comparisons | Testing 10 metrics inflates false positives | Declare primary metric upfront, apply Bonferroni correction for others |
| Simpson's Paradox | Aggregate result contradicts segment results | Always check key segments (device, traffic source) |
| Survivorship bias | Only measuring users who complete the flow | Measure from intent (page view), not just conversion |
| Underpowered tests | Too little traffic to detect real effects | Calculate sample size before starting; don't run the test if it'll take >6 weeks |

---

## Test Documentation Template

Document every test for institutional learning. Use this structure:

```markdown
# Test: [Descriptive Name]

## Summary
- **Status**: Planning / Running / Completed
- **Page/Feature**: [URL or feature name]
- **Date range**: [Start] — [End]
- **Framework**: Frequentist / Bayesian

## Hypothesis
Because [observation/data],
we believe [change]
will cause [expected outcome]
for [audience].

## Variants
| Variant | Description | Screenshot |
|---------|-------------|------------|
| Control | [Current state] | [link] |
| B | [Change description] | [link] |

## Metrics
- **Primary**: [metric] (baseline: X%)
- **Secondary**: [metric 1], [metric 2]
- **Guardrail**: [metric]

## Sample Size & Duration
- **MDE**: [X]%
- **Required sample**: [N] per variant
- **Estimated duration**: [X] days
- **Actual duration**: [X] days

## Results
| Metric | Control | Variant | Lift | Confidence |
|--------|---------|---------|------|------------|
| [Primary] | X% | Y% | +Z% | XX% |

## Decision
- [ ] Implement variant
- [ ] Keep control
- [ ] Iterate and retest
- [ ] Inconclusive — need more data

## Learnings
- What did we learn?
- What should we test next?
- Any surprising segment differences?
```

---

## Analyzing Results

### Statistical Significance
- 95% confidence = p-value < 0.05
- Means <5% chance result is random
- Not a guarantee—just a threshold

### Analysis Checklist

1. **Reach sample size?** If not, result is preliminary
2. **Check for SRM?** Verify traffic split matches expected
3. **Statistically significant?** Check confidence intervals
4. **Effect size meaningful?** Compare to MDE, project impact
5. **Secondary metrics consistent?** Support the primary?
6. **Guardrail concerns?** Anything get worse?
7. **Segment differences?** Mobile vs. desktop? New vs. returning?
8. **Novelty effect?** Compare first-week vs. last-week performance

### Interpreting Results

| Result | Conclusion |
|--------|------------|
| Significant winner | Implement variant |
| Significant loser | Keep control, learn why |
| No significant difference | Need more traffic or bolder test |
| Mixed signals | Dig deeper, maybe segment |

---

## Task-Specific Questions

1. What's your current conversion rate?
2. How much traffic does this page get?
3. What change are you considering and why?
4. What's the smallest improvement worth detecting?
5. What tools do you have for testing?
6. Have you tested this area before?

---

## Related Skills

- **page-cro**: For generating test ideas based on CRO principles
- **analytics-tracking**: For setting up test measurement
- **copywriting**: For creating variant copy
