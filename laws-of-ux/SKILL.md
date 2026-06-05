---
name: laws-of-ux
description: Use when designing, reviewing, or critiquing user interfaces. A complete reference to all 30 Laws of UX — psychological principles and cognitive biases that govern how users perceive, process, and interact with interfaces. Each law includes a summary and when-to-use triggers. Load individual law references for full detail, examples, and design implications.
version: 1.0.0
author: Hermes Agent
license: MIT
source: https://lawsofux.com/
metadata:
  hermes:
    tags: [ux, design, psychology, cognitive-bias, usability, interface-design, heuristics]
    related_skills: [claude-design, sketch, popular-web-designs]
---

# Laws of UX

A complete reference to all 30 Laws of UX from [lawsofux.com](https://lawsofux.com/) — a curated collection of psychological principles and cognitive biases that govern how users perceive, process, and interact with interfaces.

## How to Use This Skill

**Quick reference:** The index below gives you every law's tagline and three "when to use" triggers. Scan it to identify which law(s) apply to your current design problem.

**Deep dive:** For full detail on any law — overview, key takeaways, origins, and design implications — load the corresponding reference file:
- **Hermes agents:** `skill_view(name='laws-of-ux', file_path='references/<slug>.md')`
- **Claude agents / any agent:** Read the file at `references/<slug>.md` relative to this skill directory, or find it at `laws-of-ux/references/<slug>.md` in the repo.

---

## Law Index

### Aesthetic-Usability Effect
> Users often perceive aesthetically pleasing design as design that’s more usable.

**Reference:** `references/aesthetic-usability-effect.md`

**Use when:**
- Justifying design investment when stakeholders question visual polish
- Evaluating why users rate a visually refined product as 'easier to use' even before testing it
- Diagnosing why usability issues go unreported — aesthetic appeal may be masking friction

### Choice Overload
> The tendency for people to get overwhelmed when they are presented with a large number of options, often used interchangeably with the term paradox of choice.

**Reference:** `references/choice-overload.md`

**Use when:**
- Designing selection screens, product catalogs, or menus with many options
- Deciding whether to add a new feature, plan tier, or configuration option
- Users are abandoning a funnel step where multiple paths or choices are presented

### Chunking
> A process by which individual pieces of an information set are broken down and then grouped together in a meaningful whole.

**Reference:** `references/chunking.md`

**Use when:**
- Presenting long forms, multi-step flows, or dense data tables
- Organizing navigation, settings, or content-heavy pages into logical groups
- Users struggle to recall or process information presented in long flat lists

### Cognitive Bias
> A systematic error of thinking or rationality in judgment that influence our perception of the world and our decision-making ability.

**Reference:** `references/cognitive-bias.md`

**Use when:**
- Auditing why users make unexpected decisions in your interface
- Designing persuasive flows, onboarding, or pricing pages where framing matters
- Interpreting user research results that seem irrational or inconsistent

### Cognitive Load
> The amount of mental resources needed to understand and interact with an interface.

**Reference:** `references/cognitive-load.md`

**Use when:**
- Reviewing any interface that requires users to learn, remember, or process multiple things simultaneously
- Simplifying onboarding, dashboards, or complex workflows
- Users express feeling overwhelmed or are making frequent errors

### Doherty Threshold
> Productivity soars when a computer and its users interact at a pace (<400ms) that ensures that neither has to wait on the other.

**Reference:** `references/doherty-threshold.md`

**Use when:**
- Evaluating or improving interface response times and perceived performance
- Deciding whether to add optimistic UI, skeleton screens, or progress indicators
- Users describe the app as slow or disengage during loading states

### Fitts's Law
> The time to acquire a target is a function of the distance to and size of the target.

**Reference:** `references/fitts-law.md`

**Use when:**
- Sizing and positioning touch targets, buttons, or clickable elements
- Designing mobile interfaces where thumb reach zones matter
- Optimizing toolbar layouts, context menus, or navigation placement for speed

### Flow
> The mental state in which a person performing some activity is fully immersed in a feeling of energized focus, full involvement, and enjoyment in the process of the activity.

**Reference:** `references/flow.md`

**Use when:**
- Designing task-focused interfaces where deep engagement is the goal (games, editors, creative tools)
- Evaluating why users disengage mid-task or feel frustrated or bored
- Balancing challenge and skill level in onboarding, tutorials, or progressive disclosure

### Goal-Gradient Effect
> The tendency to approach a goal increases with proximity to the goal.

**Reference:** `references/goal-gradient-effect.md`

**Use when:**
- Designing progress indicators, onboarding flows, loyalty programs, or checkout funnels
- Motivating users to complete multi-step tasks by showing how close they are to the end
- Reducing abandonment in long forms or sign-up flows

### Hick's Law
> The time it takes to make a decision increases with the number and complexity of choices.

**Reference:** `references/hicks-law.md`

**Use when:**
- Designing navigation menus, feature lists, or any screen requiring a decision
- Simplifying onboarding by reducing the number of initial options
- Response times or task completion rates are low — decision paralysis may be the cause

### Jakob's Law
> Users spend most of their time on other sites. This means that users prefer your site to work the same way as all the other sites they already know.

**Reference:** `references/jakobs-law.md`

**Use when:**
- Deciding whether to deviate from established UI conventions such as hamburger menus or tab bars
- Onboarding users to a new product in a familiar category
- Evaluating whether novel UI patterns will help or hurt user comprehension

### Law of Common Region
> Elements tend to be perceived into groups if they are sharing an area with a clearly defined boundary.

**Reference:** `references/law-of-common-region.md`

**Use when:**
- Grouping related controls, form fields, or content cards on a page
- Designing dashboards or data-dense layouts where visual separation communicates structure
- Deciding between borders, backgrounds, or whitespace to define groups

### Law of Proximity
> Objects that are near, or proximate to each other, tend to be grouped together.

**Reference:** `references/law-of-proximity.md`

**Use when:**
- Laying out labels, inputs, and actions so relationships are visually clear
- Diagnosing why users associate the wrong elements together in a UI
- Designing content grids, cards, or lists where grouping must be communicated without borders

### Law of Prägnanz
> People will perceive and interpret ambiguous or complex images as the simplest form possible, because it is the interpretation that requires the least cognitive effort of us.

**Reference:** `references/law-of-pragnanz.md`

**Use when:**
- Simplifying complex icons, illustrations, or data visualizations
- Users misinterpret ambiguous UI elements — the simplest interpretation typically wins
- Deciding how much visual complexity to add to a logo, chart, or diagram

### Law of Similarity
> The human eye tends to perceive similar elements as a complete picture, shape, or group, even if those elements are separated.

**Reference:** `references/law-of-similarity.md`

**Use when:**
- Using color, shape, or size to communicate which elements share a function
- Designing icon families, button styles, or navigation patterns
- Auditing why users do not recognize which elements are interactive or related

### Law of Uniform Connectedness
> Elements that are visually connected are perceived as more related than elements with no connection.

**Reference:** `references/law-of-uniform-connectedness.md`

**Use when:**
- Communicating relationships between elements using lines, borders, or shared containers
- Designing form sections, step indicators, or data relationships
- Choosing between proximity and explicit connectors to show element relationships

### Mental Model
> A compressed model based on what we think we know about a system and how it works.

**Reference:** `references/mental-model.md`

**Use when:**
- Designing information architecture or navigation for a new product category
- Evaluating why users expect the interface to behave differently than it does
- Onboarding users who come from a competing product with different conventions

### Miller's Law
> The average person can only keep 7 (plus or minus 2) items in their working memory.

**Reference:** `references/millers-law.md`

**Use when:**
- Designing navigation menus, option lists, or tab bars — keep groupings to around 7 items
- Organizing settings, features, or content categories into digestible chunks
- Evaluating whether a screen presents too many items at once

### Occam's Razor
> Among competing hypotheses that predict equally well, the one with the fewest assumptions should be selected.

**Reference:** `references/occams-razor.md`

**Use when:**
- Deciding between two design solutions — prefer the simpler one with equal outcomes
- Removing unnecessary features, steps, or visual elements from an existing design
- Justifying simplification when there is pressure to add more

### Paradox of the Active User
> Users never read manuals but start using the software immediately.

**Reference:** `references/paradox-of-the-active-user.md`

**Use when:**
- Designing onboarding — users will skip it, so the UI itself must be self-explanatory
- Evaluating why users never discover advanced features or read help documentation
- Deciding how much to rely on tooltips and tutorials vs. intuitive defaults

### Pareto Principle
> The Pareto principle states that, for many events, roughly 80% of the effects come from 20% of the causes.

**Reference:** `references/pareto-principle.md`

**Use when:**
- Prioritizing which features or user flows to optimize — focus on the 20% driving 80% of value
- Allocating design and engineering effort across a backlog
- Identifying which usability issues to fix first based on impact frequency

### Parkinson's Law
> Any task will inflate until all of the available time is spent.

**Reference:** `references/parkinsons-law.md`

**Use when:**
- Setting time limits or deadlines in task-based UX such as booking, checkout, or form completion
- Designing focused, constrained input experiences to prevent over-elaboration
- Evaluating why users spend disproportionate time on low-value steps

### Peak-End Rule
> People judge an experience largely based on how they felt at its peak and at its end, rather than the total sum or average of every moment of the experience.

**Reference:** `references/peak-end-rule.md`

**Use when:**
- Designing the emotional arc of onboarding, purchase confirmation, or error recovery flows
- Ensuring the last touchpoint of any user journey is positive — even after a negative experience
- Evaluating overall user satisfaction — the worst moment and final moment matter most

### Postel's Law
> Be liberal in what you accept, and conservative in what you send.

**Reference:** `references/postels-law.md`

**Use when:**
- Designing form inputs — accept multiple formats for dates, phone numbers, and similar fields
- Building APIs or data exchange layers where input variance is expected
- Reducing friction by accepting multiple input conventions gracefully

### Selective Attention
> The process of focusing our attention only to a subset of stimuli in an environment — usually those related to our goals.

**Reference:** `references/selective-attention.md`

**Use when:**
- Designing visual hierarchy so key actions or information cut through noise
- Placing important warnings, CTAs, or status indicators where attention actually lands
- Evaluating why users miss critical information even when it is visible on screen

### Serial Position Effect
> Users have a propensity to best remember the first and last items in a series.

**Reference:** `references/serial-position-effect.md`

**Use when:**
- Ordering navigation items, feature lists, or menu options — put key items first or last
- Designing pricing tables or comparison lists where recall of options matters
- Deciding where to place the most important CTA in a list of actions

### Tesler's Law
> Tesler’s Law, also known as The Law of Conservation of Complexity, states that for any system there is a certain amount of complexity which cannot be reduced.

**Reference:** `references/teslers-law.md`

**Use when:**
- Deciding whether to hide complexity from users or let them control it
- Evaluating trade-offs between a simple UI that forces backend complexity
- Designing advanced settings or power-user modes that absorb unavoidable complexity

### Von Restorff Effect
> The Von Restorff effect, also known as The Isolation Effect, predicts that when multiple similar objects are present, the one that differs from the rest is most likely to be remembered.

**Reference:** `references/von-restorff-effect.md`

**Use when:**
- Designing CTAs, pricing highlights, or featured items that need to stand out
- Using visual contrast such as color, size, or shape to direct attention to a single key element
- Avoiding over-differentiation — if everything stands out, nothing does

### Working Memory
> A cognitive system that temporarily holds and manipulates information needed to complete tasks.

**Reference:** `references/working-memory.md`

**Use when:**
- Designing multi-step flows where users must carry information from one step to the next
- Reducing the need for users to remember information by surfacing it contextually
- Evaluating forms, wizards, or checkout flows for unnecessary memory load

### Zeigarnik Effect
> People remember uncompleted or interrupted tasks better than completed tasks.

**Reference:** `references/zeigarnik-effect.md`

**Use when:**
- Designing progress indicators, streaks, or incomplete state cues to drive return visits
- Motivating task completion through visible unfinished states
- Increasing re-engagement by surfacing incomplete profiles, drafts, or pending actions

---

## Using Multiple Laws Together

Many design problems involve several laws simultaneously. Common combinations:

| Problem | Relevant Laws |
|---------|--------------|
| Navigation is confusing | Jakob's Law, Hick's Law, Miller's Law, Mental Model |
| Onboarding has poor completion | Goal-Gradient Effect, Paradox of the Active User, Cognitive Load |
| Users miss important UI elements | Von Restorff Effect, Selective Attention, Serial Position Effect |
| Forms have high abandonment | Chunking, Working Memory, Postel's Law, Parkinson's Law |
| Interface feels overwhelming | Cognitive Load, Choice Overload, Occam's Razor, Miller's Law |
| Users don't return after first session | Zeigarnik Effect, Peak-End Rule, Flow |
| Layout feels disorganized | Law of Proximity, Law of Common Region, Law of Uniform Connectedness |
| Users perceive the product as low quality | Aesthetic-Usability Effect, Mental Model |

---

## Quick Cheat Sheet by Category

**Cognitive Load & Memory**
Cognitive Load · Miller's Law · Working Memory · Chunking · Selective Attention

**Decision Making**
Hick's Law · Choice Overload · Occam's Razor · Pareto Principle · Cognitive Bias

**Visual Perception (Gestalt)**
Law of Proximity · Law of Similarity · Law of Common Region · Law of Uniform Connectedness · Law of Prägnanz

**Motivation & Engagement**
Goal-Gradient Effect · Zeigarnik Effect · Flow · Parkinson's Law · Peak-End Rule

**Interaction & Input**
Fitts's Law · Postel's Law · Doherty Threshold · Tesler's Law

**Mental Models & Convention**
Jakob's Law · Mental Model · Paradox of the Active User

**Attention & Memory**
Von Restorff Effect · Serial Position Effect · Aesthetic-Usability Effect
