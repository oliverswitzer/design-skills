---
name: website-design
description: "Use when building a high-quality website, portfolio, or landing page with Claude Code — especially when it needs to look like a $5k–$10k agency build. Covers the full workflow: installing design skills, sourcing visual references, writing build prompts, implementing hero animations, and running structured review + polish passes. Also covers cursor/spotlight effects, page transitions, mobile polish, and copy quality. Not for app dashboards or product UI — use impeccable for those."
version: 1.0.0
author: Hermes Agent
license: MIT
metadata:
  hermes:
    tags: [website, portfolio, landing-page, animations, claude-code, design, references]
    related_skills: [impeccable, laws-of-ux, popular-web-designs]
---

# Website Design with Claude Code

Build agency-quality websites and portfolios with Claude Code. This skill encodes a proven 6-step workflow from [@monokern](https://x.com/monokern/status/2071246711222055363) that produces $10k-level results in ~2 hours — no coding experience required.

## When to Use

- Building a portfolio, personal site, or marketing/landing page from scratch
- Site looks "AI-generated" — generic fonts, flat layouts, boring hero
- Need animations: cursor effects, page transitions, scroll reveals
- Want to reference a visual style you've seen (Awwwards, Dribbble, Pinterest)
- Running a review/polish pass on an existing site

Don't use for: product dashboards, admin UIs, complex app shells → use **impeccable** for those.

---

## Overview

The core insight: **Claude's default design output is mediocre**. The workflow below fixes this by front-loading two design skills, sourcing real visual references, and running structured quality gates at the end.

Key principle: **show, don't describe**. Screenshot the exact sections you like from different sites and drop them into a `/reference` folder. Don't try to copy one site — borrow what works from each.

---

## Step 1: Install Design Skills (Claude Code Setup)

Do this once per machine, globally. Both skills need to be installed before the build prompt.

### Skill A: Frontend Design (Anthropic official)
Runs in the background — blocks overused fonts (Inter, etc.), pushes bolder layouts, improves copy quality.

```
Install this skill: github.com/anthropics/skills/tree/main/frontend-design
```
→ Paste into Claude Code. Allow changes when prompted. **Install globally.**

### Skill B: UI/UX Pro Max
57 interface styles, 95 color palettes, 56 font pairings. You invoke it directly at the start of each build.

```
Install this plugin using NPM: github.com/nextlevelbuilder/ui-ux-pro-max
```
→ Paste into Claude Code.

> **Set mode selector to Auto** so Claude works without asking permission at every step.

---

## Step 2: Source Visual References

**Never describe your dream site from scratch. Show Claude what you want.**

### Where to find references
- **Awwwards** — award-winning sites, searchable by style/industry
- **Dribbble** — good for UI details, typography, color
- **Pinterest** — good for layout patterns, especially when a section type is hard to find elsewhere
- **Behance** — portfolio and case study layouts

### How to screenshot correctly

Don't screenshot the full page. **Go section by section** and grab only the parts you like:

| Filename | What to capture |
|----------|----------------|
| `1.png`  | Hero section |
| `2.png`  | Section below hero (work/content preview) |
| `6.png`  | Footer + bottom of site |
| `11.png` | Individual project/detail page |
| `12.png` | Loading screen (if applicable) |

> Mix references from multiple sites. One reference for the hero, another for the portfolio grid, another for the footer. **Don't copy a single site exactly — borrow what works from each.**

### File structure

```
/your-project
  /reference
    1.png    ← hero
    2.png    ← below hero
    6.png    ← footer
    11.png   ← project page
    12.png   ← loading screen
```

---

## Step 3: Write the Build Prompt

**Always start your prompt with `/ui-ux-pro-max`** to activate the design skill.

### Template prompt structure

```
/ui-ux-pro-max

Build me a [portfolio/personal site/landing page] for [name/brand].

Here are my visual references (in /reference folder):
- 1.png: hero section style
- 2.png: work/content section
- 6.png: footer style
- 11.png: project detail page

My content: [describe your sections, pages, content]

Before you start building, ask me 4-6 questions about:
- Visual style and mood
- Font preferences
- Which sections/pages to include
- Animation level (subtle vs. dramatic)
- Content tone
- Any hard constraints
```

> **The "ask me 4-6 questions" line is the key.** Claude stops, asks clarifying questions, and your answers become the foundation for the entire build. Be specific — the more precise you are here, the less back-and-forth later.

After you answer, Claude spends ~5 minutes planning then ~10 minutes building. First output is already solid.

---

## Step 4: Hero Animations

**A plain static hero is boring.** Something needs to happen when the user moves their mouse. This is where good sites pull ahead.

### Spotlight / Flashlight Cursor Effect (proven pattern)

```
In the hero section, I want a flashlight/spotlight cursor effect.
Dark background. My photo/image is barely visible at default.
When the cursor moves over the section, it acts as a spotlight —
revealing a brighter, warm-lit version of the photo underneath
through a soft-edged circular mask that follows the cursor.
Radius 100-150px, soft feathered edges. Implement this.
```

**How it works technically:**
- Hero background is dark
- Layer 1: dim/desaturated version of your image (default visible)
- Layer 2: bright, warm version of the same image
- CSS mask (radial gradient following cursor position via JS) reveals Layer 2
- Mouse events update CSS custom properties `--cursor-x` and `--cursor-y`

Claude builds this in one pass from the prompt above.

### Other effective hero interactions
- **Parallax scroll** — elements move at different speeds as you scroll
- **Text reveal on scroll** — words/lines fade or slide in as they enter viewport
- **Magnetic hover** — nav items or buttons subtly attract the cursor
- **Grain/noise texture overlay** — subtle animated noise for a film/analog feel
- **Video background** — muted autoplay video with overlay text

---

## Step 5: Review Pass — Fix What Doesn't Work

Before the structured quality check, do a manual scroll-through and note everything that feels off.

### Common first-build issues

| Issue | Symptom | Fix prompt |
|-------|---------|------------|
| Abrupt page transitions | Routes change instantly | "Add smooth fade transition between routes (150-200ms)" |
| Laggy cursor effects | Spotlight lags behind mouse | "The flashlight effect has a delay — use `requestAnimationFrame` and remove any `transition` on the mask position" |
| Overflow / clipping | Elements cut off or overflow container | "Some elements are overflowing — audit all sections for overflow issues and fix" |
| Wrong fonts | More generic than the reference aesthetic | "The fonts don't match the [Il Capo / reference] feel — revisit the font pairing, avoid Inter" |

### Batch your fixes

**Send everything in one message, not one at a time:**

```
Here are several things that need fixing. Please address all of them:
1. [describe issue 1]
2. [describe issue 2]
3. [describe issue 3]
```

Sending one fix at a time causes drift — Claude re-interprets the design with each pass. One batched message = one coherent revision.

---

## Step 6: Polish Pass (Structured Quality Gate)

Once obvious bugs are fixed, run a structured quality check. Paste this into Claude:

```
Review this site against these criteria and be honest about what needs work:
- Typography (are we using overused AI fonts like Inter?)
- Color (is the palette restrained or all over the place?)
- Hierarchy (does text sizing guide the eye correctly?)
- Animation (smooth and intentional, or choppy and random?)
- Mobile (actually designed for phones, not just shrunk?)
- Copy (restrained and specific, or generic AI filler?)

Grade each point honestly.
```

Claude grades each item. **You decide which fixes to accept** — don't blindly apply everything. You know your site better than Claude does.

Collect the items you agree with and send them all in one fix prompt (same batching rule as Step 5).

---

## Iteration Mindset

The first build won't be perfect. That's normal. Some things that often need a second pass:
- Mobile layout (often just "shrunk" not properly redesigned)
- Specific animations that feel slightly off
- Copy that's too generic or too wordy

**From here: find one thing to improve every day and fix it.**

---

## Common Pitfalls

1. **Describing the site instead of showing references.** Claude's imagination defaults to generic. Screenshots short-circuit this. Always use a `/reference` folder.

2. **Skipping the clarifying questions step.** The "ask me 4-6 questions" line in your prompt is critical. Without it Claude makes assumptions that require expensive rework.

3. **Sending fix requests one at a time.** Each message resets Claude's mental model of the design. Batch all fixes in a single prompt.

4. **Accepting the polish pass results without judgment.** Claude is honest but not always right about your specific aesthetic. Override points you disagree with.

5. **Not invoking `/ui-ux-pro-max` at the start.** This activates the design skill's style system. Without it you get Claude's default generic output.

6. **Copying a single reference site exactly.** Results look derivative. Mix references — hero from one site, portfolio grid from another, footer from a third.

7. **Forgetting mobile.** Mobile is often an afterthought in the first build. Explicitly ask Claude to "design the mobile layout, not just shrink it" in your Step 5 batch.

8. **Spotlight effect jank.** If cursor effects lag, the culprit is almost always a CSS `transition` on the mask position or missing `requestAnimationFrame`. Specify the removal explicitly.

---

## Verification Checklist

- [ ] Both Claude Code skills installed globally (frontend-design + ui-ux-pro-max)
- [ ] Mode selector set to **Auto**
- [ ] `/reference` folder populated with section-specific screenshots from multiple sources
- [ ] Build prompt starts with `/ui-ux-pro-max` and includes the clarifying questions line
- [ ] Hero has an interactive element (cursor effect, parallax, reveal animation)
- [ ] Review pass issues batched into a single prompt (not sent one by one)
- [ ] Polish pass run with the 6-criteria quality check
- [ ] Mobile layout explicitly reviewed (not just shrunk)
- [ ] No Inter/generic AI fonts in final output
- [ ] Cursor effects verified at 60fps (no `transition` on mask position)
