# Agent Guidelines

## Design Skills

This project uses the shared design skills from the `design-skills` repo.
Hermes agents should load the following skills at the start of any design-related task:

- **`laws-of-ux`** — 30 Laws of UX (Fitts's, Hick's, Jakob's, Von Restorff, etc.) with tags
  for screen-review, visual-hierarchy, interaction-design, onboarding, and more.
  Load this when: reviewing UI, making design decisions, critiquing flows, or writing UX copy.

- **`impeccable`** — Full frontend design skill: visual hierarchy, color, typography, spacing,
  motion, micro-interactions, responsive behavior, accessibility, design tokens.
  Load this when: building or iterating on any UI component, page, or design system.

## Workflow

1. Before any UI/UX work, load `laws-of-ux` and `impeccable` via `skill_view`.
2. Apply relevant Laws of UX when making design decisions — cite the law by name.
3. Use `impeccable` guidance for all visual/frontend implementation.
4. When in doubt on a design decision, run a UX critique against applicable laws first.

## Stack & Conventions

<!-- Fill in per-project: framework, component library, design tokens location, etc. -->
