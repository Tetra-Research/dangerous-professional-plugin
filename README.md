# Dangerous Professional

[![validate](https://github.com/Tetra-Research/dangerous-professional-plugin/actions/workflows/validate.yml/badge.svg)](https://github.com/Tetra-Research/dangerous-professional-plugin/actions/workflows/validate.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)

A skill that helps you write firm, specific, rights-aware correspondence when dealing with institutions — banks, insurance companies, contractors, landlords, employers, government agencies, medical providers, collections agencies, or any bureaucracy.

Implements Patrick McKenzie's ([@patio11](https://x.com/patio11)) [Dangerous Professional](https://www.kalzumeus.com/2017/09/09/identity-theft-credit-reports/) framework as an interview-driven workflow that reads your documents, identifies your leverage, calibrates tone, and drafts a communication grounded in the institution's own records.

> "Memetically, being a Dangerous Professional means communicating in what might be a slightly adversarial context in a way which suggests that a bureaucracy take one's concerns seriously and escalate them to someone empowered to resolve them swiftly." — [@patio11](https://x.com/patio11/status/1162561822248992768)

## Install

One command, works across **Claude Code, Codex CLI, Cursor, Windsurf, Cline, Continue, Copilot, Gemini CLI, OpenCode, Goose, Amp, Roo, Trae, Warp**, and ~30 more agents:

```bash
npx skills add Tetra-Research/dangerous-professional-plugin
```

The installer auto-detects which agents you have installed and asks which to configure. Files land in your agent's native skill directory (`.claude/skills/`, `.cursor/skills/`, `.codex/skills/`, etc.).

### Common variations

```bash
# Install globally (user-level) instead of per-project
npx skills add Tetra-Research/dangerous-professional-plugin -g

# Target specific agents only
npx skills add Tetra-Research/dangerous-professional-plugin --agent claude-code cursor

# Install everywhere, no prompts
npx skills add Tetra-Research/dangerous-professional-plugin --all

# Update later
npx skills update dangerous-professional

# Remove
npx skills remove dangerous-professional
```

`npx skills` is the [vercel-labs/skills](https://github.com/vercel-labs/skills) CLI — the de facto package manager for agent skills.

## Usage

The skill triggers automatically when you describe a dispute with an institution. You can also invoke it explicitly:

**Claude Code:** `/dangerous-professional`
**Codex CLI:** `$dangerous-professional`
**Other agents:** invoke per your tool's skill convention

For best results, have your documents ready — contracts, invoices, denial letters, emails, reference numbers. The strongest Dangerous Professional move is citing the institution's own records back to them.

## What it does

The skill runs a 6-step workflow:

1. **Understand** — interviews you until the problem fits in one sentence
2. **Gather documents** — reads your contracts, invoices, denial letters, emails
3. **Map leverage** — identifies what the institution has already conceded in their own records
4. **Calibrate tone** — picks the right register (initial request → firm professional → escalation → final notice)
5. **Draft** — produces a communication grounded in their documents, not your feelings
6. **Review** — checks against known failure modes before presenting

It does not generate templates.

## Core principles

Drawn from McKenzie's published work:

- **Don't negotiate against yourself** — never pre-compromise
- **Specificity is power** — dates, amounts, names, reference numbers
- **Emotionlessness over anger** — cold competence is more threatening than rage
- **Paper trails are the weapon** — meticulous documentation IS the implicit threat
- **"Require" not "demand"** — word-level register choices signal which world you operate in
- **Strategic ambiguity** — "I will avail myself of remedies available under law"
- **Their documents are your evidence** — reference their records, not your narrative
- **Brevity signals professional** — 100–200 words, not 500

## Repo layout

```
skills/dangerous-professional/
  SKILL.md           # Workflow and step-by-step instructions
  references/
    principles.md    # The 10 core principles
    tone-guide.md    # Word-level register table + DP incantations
    escalation.md    # Industry-specific regulators and complaint paths
    examples.md      # Annotated patio11 examples
    gotchas.md       # Failure modes to check drafts against
  agents/
    openai.yaml      # Codex UI metadata
```

## Attribution

This is a community packaging of the strategic communication framework developed by [Patrick McKenzie](https://www.kalzumeus.com/) ([@patio11](https://x.com/patio11)) across his extensive writing, particularly:

- [Identity Theft, Credit Reports, and You](https://www.kalzumeus.com/2017/09/09/identity-theft-credit-reports/) (2017)
- [Salary Negotiation: Make More Money, Be More Valued](https://www.kalzumeus.com/2012/01/23/salary-negotiation/) (2012)
- [Talking About Money](https://www.kalzumeus.com/2015/05/01/talking-about-money/) (2015)
- His ongoing Twitter threads on the Dangerous Professional concept

No affiliation with Patrick McKenzie or Stripe.

## Contributing

Issues and PRs welcome. The highest-value contributions are:

- New entries in `references/gotchas.md` from real failure modes you've encountered
- Additional annotated examples in `references/examples.md`
- Escalation path updates in `references/escalation.md` (regulatory contacts change)

## License

MIT — see [LICENSE](./LICENSE).
