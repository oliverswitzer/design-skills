# design-skills

A collection of design-focused skills for AI agents — both [Hermes Agent](https://github.com/NousResearch/hermes-agent) and plain Claude/GPT agents.

Skills are structured as self-contained markdown with YAML frontmatter. They work in two modes:

- **Hermes agents** — install as a skills tap (`hermes skills tap add github.com/oliverswitzer/design-skills`) and load with `skill_view()`
- **Claude / any agent** — read the `SKILL.md` and `references/` files directly as markdown

---

## Skills

### [`laws-of-ux`](./laws-of-ux/)

A complete reference to all 30 Laws of UX from [lawsofux.com](https://lawsofux.com/).

Each law includes:
- A tagline (the core principle in one sentence)
- A primary + secondary workflow tag (`screen-review`, `visual-hierarchy`, `interaction-design`, `information-architecture`, `user-research`, `onboarding`, `motivation`, `decision-making`)
- Three "when to use" triggers
- A detailed reference file with overview, key takeaways, and design implications

**Progressive loading:** The main `SKILL.md` is a scannable index. Load individual `references/<law>.md` files only when you need full detail on a specific law.

#### Usage — Hermes Agents

```bash
hermes skills tap add github.com/oliverswitzer/design-skills
/skill laws-of-ux

# Deep dive on a specific law
skill_view(name='laws-of-ux', file_path='references/hicks-law.md')
```

#### Usage — Claude / Any Agent

```
laws-of-ux/SKILL.md              ← scan this first (index of all 30 laws)
laws-of-ux/references/<slug>.md  ← deep dive on any specific law
```

---

### [`impeccable`](./impeccable/)

Vendored skill files from [Impeccable](https://github.com/pbakaus/impeccable) (by Paul Bakaus) — a 23-command design system for AI coding agents covering typography, layout, color, motion, and more.

These files are committed at a pinned upstream SHA and should be periodically refreshed (see below). The full Impeccable skill is Apache 2.0 licensed.

**Commands include:** `/typeset` · `/layout` · `/colorize` · `/animate` · `/audit` · `/critique` · `/polish` · `/harden` · `/clarify` · `/distill` · `/bolder` · `/quieter` · `/live` · and more.

#### Usage — Claude / Any Agent

```
impeccable/skill/SKILL.md         ← root skill prompt + setup instructions
impeccable/references/<cmd>.md    ← per-command reference (e.g. references/typeset.md)
```

#### Keeping Impeccable up to date

Impeccable is updated frequently. To sync to the latest upstream:

```bash
./scripts/update-impeccable.sh
git add impeccable/ && git commit -m "chore: sync impeccable to <sha>"
git push
```

Current pinned SHA: stored in `impeccable/.impeccable-sha`

---

## Repository Structure

```
design-skills/
├── laws-of-ux/
│   ├── SKILL.md                  # Index: all 30 laws with taglines, tags + when-to-use
│   └── references/               # 30 individual law reference files
│       ├── hicks-law.md
│       ├── millers-law.md
│       └── ... (30 files total)
├── impeccable/
│   ├── skill/
│   │   └── SKILL.md              # Impeccable root skill prompt
│   ├── references/               # 27 per-command reference files
│   │   ├── typeset.md
│   │   ├── audit.md
│   │   └── ... (27 files total)
│   └── .impeccable-sha           # Pinned upstream commit SHA
└── scripts/
    └── update-impeccable.sh      # Run to sync Impeccable to latest upstream
```

---

## License

- `laws-of-ux/` — Content derived from [lawsofux.com](https://lawsofux.com/) by Jon Yablonski, used under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- `impeccable/` — From [pbakaus/impeccable](https://github.com/pbakaus/impeccable) by Paul Bakaus, [Apache 2.0](https://github.com/pbakaus/impeccable/blob/main/LICENSE)
