# design-skills

A collection of design-focused skills for AI agents — both [Hermes Agent](https://github.com/NousResearch/hermes-agent) and plain Claude/GPT agents.

Skills are structured as self-contained markdown with YAML frontmatter. They work in two modes:

- **Hermes agents** — install as a skills tap (`hermes skills tap add github.com/switz/design-skills`) and load with `skill_view()`
- **Claude / any agent** — read the `SKILL.md` and `references/` files directly as markdown

---

## Skills

### [`laws-of-ux`](./laws-of-ux/)

A complete reference to all 30 Laws of UX from [lawsofux.com](https://lawsofux.com/).

Each law includes:
- A tagline (the core principle in one sentence)
- Three "when to use" triggers so you know exactly when it applies
- A detailed reference file with overview, key takeaways, and design implications

**Progressive loading:** The main `SKILL.md` is a scannable index (~16KB). Load individual `references/<law>.md` files only when you need the full detail on a specific law.

#### Usage — Hermes Agents

```bash
# Install this repo as a tap
hermes skills tap add github.com/switz/design-skills

# Then load the skill in a session
/skill laws-of-ux
```

Or via `skill_view` in tool calls:
```python
# Load the index
skill_view(name='laws-of-ux')

# Load a specific law's full reference
skill_view(name='laws-of-ux', file_path='references/hicks-law.md')
```

#### Usage — Claude / Any Agent

Read the files directly:
```
laws-of-ux/SKILL.md              ← scan this first (index of all 30 laws)
laws-of-ux/references/<slug>.md  ← deep dive on any specific law
```

Available reference slugs:
`aesthetic-usability-effect` · `choice-overload` · `chunking` · `cognitive-bias` · `cognitive-load` · `doherty-threshold` · `fitts-law` · `flow` · `goal-gradient-effect` · `hicks-law` · `jakobs-law` · `law-of-common-region` · `law-of-proximity` · `law-of-pragnanz` · `law-of-similarity` · `law-of-uniform-connectedness` · `mental-model` · `millers-law` · `occams-razor` · `paradox-of-the-active-user` · `pareto-principle` · `parkinsons-law` · `peak-end-rule` · `postels-law` · `selective-attention` · `serial-position-effect` · `teslers-law` · `von-restorff-effect` · `working-memory` · `zeigarnik-effect`

---

## Structure

```
design-skills/
└── laws-of-ux/
    ├── SKILL.md              # Index: all 30 laws with taglines + when-to-use
    └── references/
        ├── hicks-law.md
        ├── millers-law.md
        └── ... (30 files total)
```

## License

Content derived from [lawsofux.com](https://lawsofux.com/) by Jon Yablonski, used under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) license.
