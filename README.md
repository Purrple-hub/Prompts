# Prompts

> A stupidly large, surprisingly useful collection of battle-tested AI prompts. Organized, containerized, human.

This started as my personal stash — every time I found a trick that actually worked (and wasn't just AI slop), I dropped it here. It grew. Then it grew stupidly. Now it's 72 prompts, 8 categories + 12 advanced `<>`-delimited coding monsters, and a Dockerfile because why not.

To be honest, some of these still surprise me. They work better than they should.

---

## Quick Start

**Browse locally:**
```bash
git clone https://github.com/your-handle/Prompts
cd Prompts
ls Prompts/coding   # pick one, copy paste into ChatGPT/Claude/Copilot
```

**With Docker (lazy web server):**
```bash
docker build -t prompts .
docker run -p 3000:80 prompts
# open http://localhost:3000 — browse all prompts like files
```

**With compose:**
```bash
docker compose up          # nginx on :3000
docker compose --profile dev up  # + python dev server on :8000 with live volume
```

No build step. No npm. It's nginx serving markdown as text. The laziest correct thing.

---

## Folder Structure

```
Prompts/
├── coding/           # 12 + 12 advanced — where bugs go to die
│   └── advanced/     # 12 — <>-delimited, coding-specific, polished monsters
├── research/         # 8  — skeptical, not summarizing
├── writing/          # 8  — from humanizer to SEO
├── security/         # 3  — Warden + friends
├── meta/             # 5  — prompts that build prompts
├── business/         # 8  — decisions, meetings, money
├── creative/         # 7  — stories, memes, games
└── productivity/     # 9  — learn, plan, live
```

72 prompts total (+1 index). Everything is `*.md` so you can grep it: `grep -r "STRIDE" Prompts/` or `grep -r "<CODE>" Prompts/coding/advanced`.

---

## Full Catalog

### 💻 Coding (12 + 12 Advanced `<>`)

| File | Purpose |
|------|---------|
| `coding/Coding-Agent.md` | Zero-compromise code synthesis — infers 70% of missing reqs, outputs production-hardened blocks |
| `coding/Code-Review-Pro.md` | Senior review that finds the breaking assumption, laziest fix, `file:line` refs |
| `coding/Opencode-Debugger.md` | Three-agent forensic debugger — static + dynamic + arch |
| `coding/Opencode-Tester.md` | Zero-trust verdict engine — fuzzes until it breaks |
| `coding/Explain-Code.md` | Make spaghetti readable in 60s + name the 2am trap |
| `coding/Refactor-Pro.md` | Delete code. Boring > clever. `ponytail:` ceilings |
| `coding/API-Designer.md` | OpenAPI 3.1 that won't need a v2 apology |
| `coding/SQL-Expert.md` | Query + index + planner story |
| `coding/Regex-Wizard.md` | English → tested regex + ReDoS check |
| `coding/Commit-Message.md` | Conventional Commits that `git blame` loves |
| `coding/Docs-Generator.md` | README + JSDoc + curl example from code |
| `coding/Test-Generator.md` | One assert per test, edge-first |

#### 🔥 Coding Advanced — `<>` delimiters, coding-specific voodoo (12)

| File | Purpose | Weird Keywords |
|------|---------|----------------|
| `coding/advanced/Code-Review-Ultra.md` | Staff review that finds the 3am page, invariant → outlier → third axis | `<CODE>`, `<CONTEXT>`, `<STANDARDS>`, `<FOCUS>` |
| `coding/advanced/Debug-Forensics.md` | Stack trace → first lie, grep all callers, minimal diff | `<ERROR_LOG>`, `<STACK_TRACE>`, `<CODE>`, `<REPRO_STEPS>`, `<ENV>`, `<EXPECTED>`, `<ACTUAL>` |
| `coding/advanced/Perf-Optimizer.md` | Hot path → profile → ladder (YAGNI → stdlib → algo) | `<HOT_PATH>`, `<CODE>`, `<PROFILE_DATA>`, `<CONSTRAINTS>`, `<TARGET>` |
| `coding/advanced/Concurrency-Reviewer.md` | Interleaving that breaks it + one-line fix | `<CODE>`, `<THREAD_MODEL>`, `<SHARED_STATE>`, `<LOAD>` |
| `coding/advanced/Memory-Leak-Hunter.md` | Retainer chain → OOM, eviction patch | `<CODE>`, `<HEAP_DUMP>`, `<ALLOCATION_PATTERN>`, `<RUNTIME>` |
| `coding/advanced/API-Break-Detector.md` | v1→v2 diff, semver, blast radius | `<OLD_SPEC>`, `<NEW_SPEC>`, `<CLIENTS>`, `<MIGRATION>` |
| `coding/advanced/Type-System-Wizard.md` | Make compiler your QA, `any` → `unknown` | `<CODE>`, `<TYPE_ERROR>`, `<EXPECTED_TYPE>`, `<CONSTRAINTS>` |
| `coding/advanced/Arch-Decision-Record.md` | ADR that kills 10 meetings, reversible by design | `<CONTEXT>`, `<OPTIONS>`, `<TRADEOFFS>`, `<CONSTRAINTS>` |
| `coding/advanced/Build-Breaker-Fixer.md` | Red CI → first error, repro, pin | `<BUILD_LOG>`, `<CONFIG>`, `<DEPENDENCIES>`, `<ENV>` |
| `coding/advanced/Prompt-Injection-Scanner.md` | Scan System prompt trust boundary ethically | `<PROMPT>`, `<INJECTION_PAYLOADS>`, `<TRUST_BOUNDARY>` |
| `coding/advanced/SQL-Explain-Plan.md` | EXPLAIN ANALYZE → index + rewrite | `<SCHEMA>`, `<QUERY>`, `<EXPLAIN>`, `<SCALE>` |
| `coding/advanced/Regex-ReDoS-Scanner.md` | ReDoS hunter, safe rewrite + bench | `<REGEX>`, `<FLAVOR>`, `<SAMPLES>`, `<CONTEXT>` |

### 🔬 Research (8)

| File | Purpose |
|------|---------|
| `research/Research.md` | Skeptical interrogator — fragile assumption, outlier, third axis |
| `research/Web-Explanator.md` | Fetch → strip boilerplate → plain English + 4-part interrogation |
| `research/Insight-Extractor-Pro.md` | Web research + 4-part, finds what’s missing, ends with real question |
| `research/Fact-Checker.md` | Claim → verdict (True→False) with receipts |
| `research/Paper-Summarizer.md` | 20-page PDF → 4 paragraphs + hole |
| `research/Competitive-Analysis.md` | Map board → find gap → third axis |
| `research/Trend-Spotter.md` | Hype vs S-curve, with a $100 bet |
| `research/Deep-Dive.md` | 4 layers deep, still asks “but why?” |

### ✍️ Writing (8)

| File | Purpose |
|------|---------|
| `writing/Humanizer-Pro.md` | Brutal rewrite — System/User split, no bullets, keeps facts |
| `writing/Rewrite.md` | Make AI slop sound human — whiplash sentences, kill passive |
| `writing/Email-Crafter.md` | First line = ask, 120 words, one CTA |
| `writing/Story-Weaver.md` | Want / obstacle / stakes, no purple prose |
| `writing/Twitter-Ghost.md` | Threads that don't sound like LinkedIn-by-AI |
| `writing/LinkedIn-Writer.md` | One story, one lesson, no cringe |
| `writing/SEO-Writer.md` | Human-first SEO that ranks by being last click |
| `writing/Script-Writer.md` | YouTube/TikTok script with `[VISUAL]` + `VO:` cues |

### 🔒 Security (3)

| File | Purpose |
|------|---------|
| `security/Warden.md` | STRIDE+A forensic auditor — LLM vs static, 4.88M breach cost |
| `security/Pentest-Pro.md` | Recon → threat → chain lows into high |
| `security/Privacy-Auditor.md` | PII inventory → leak path → minimize/pseudonymize/TTL |

### 🧠 Meta (5)

| File | Purpose |
|------|---------|
| `meta/Prompt-Architect.md` | Vague idea → bulletproof System + User prompt |
| `meta/Starter-Advanced.md` | DeepSeek-optimized deep-context + research analyst |
| `meta/Prompt-Optimizer.md` | 70% → 95% — diagnose, patch, shrink, test |
| `meta/Persona-Builder.md` | Persona = constraints + contradictions, with drift guard |
| `meta/Jailbreak-Tester.md` | Ethical red-team — injection vectors + patch |

### 💼 Business (8)

| File | Purpose |
|------|---------|
| `business/Startup-Advisor.md` | Distribution > product, the hard question early |
| `business/Product-Manager.md` | Bet → RICE → slice 20% → kill list |
| `business/Meeting-Summarizer.md` | 60-min ramble → 6 lines: TL;DR, decisions, actions |
| `business/Decision-Maker.md` | Bet + regret + revert trigger |
| `business/Negotiation-Expert.md` | BATNA, anchor, concession plan with exact phrasing |
| `business/Debate-Lord.md` | Steelman → tap assumption → third way |
| `business/Finance-Bro.md` | Math not vibes, one table, one next step |
| `business/Legal-Simplifier.md` | TOS → “here’s what they can do to you” |

### 🎨 Creative (7)

| File | Purpose |
|------|---------|
| `creative/Brainstorm-Buddy.md` | 10 ideas → map → boring winner vs weird bet |
| `creative/Poet-Pro.md` | Image not label, end on image not moral |
| `creative/Image-Prompt-Architect.md` | MJ/SDXL/Flux prompt — subject, light, lens, refs |
| `creative/Game-Designer.md` | Core loop → progression → tension → juice |
| `creative/Roast-My-Idea.md` | Brutal roast, then the one path where it works |
| `creative/Therapist-Pro.md` | Reflective listener (not a therapist) — one question at a time |
| `creative/Meme-Lord.md` | Format → tension → 8-word cap + remix |

### ⚡ Productivity (9)

| File | Purpose |
|------|---------|
| `productivity/Learning-Tutor.md` | One model, one 10-line example, one trap, one recall Q |
| `productivity/Interview-Prep.md` | Role-play → push → debrief, hire/no-hire |
| `productivity/Career-Coach.md` | Inventory → market → 4-week bet |
| `productivity/Time-Blocker.md` | Energy > time, `HH:MM` blocks + what you won't do |
| `productivity/Habit-Tracker.md` | One habit, laughably small, anchored, binary |
| `productivity/Explain-Like-I-m-5.md` | Imagine… → stretch → land |
| `productivity/Travel-Planner.md` | Cluster by neighborhood, one hidden gem/day, 2h buffer |
| `productivity/Cooking-Sous-Chef.md` | Fridge → dinner in 25m, grams + cups |
| `productivity/Fitness-Coach.md` | Adherence > optimization, 50% rule |

---

## How to Use

1. **Pick** — browse `Prompts/` or the table above.
2. **Copy** — paste content into your AI (ChatGPT, Claude, Copilot, Opencode).
3. **Fill brackets** — `[LIKE THIS]` or `<LIKE_THIS>` are yours to replace. Advanced ones use `<>` so the model can't confuse data vs instructions.
4. **Iterate** — tweak one constraint at a time. Smallest change that moves output.

Tips from actually using them:
- **One prompt at a time.** Chaining two works sometimes, but usually you just need a better single prompt.
- **Add the failure.** “It ignores X when Y” beats “make it better”.
- **Paste the real thing.** Diff > description. Transcript > summary.

---

## Customization

- **Tone dial** — add “more formal / more casual” at bottom of User block. Works every time.
- **Constraints** — “use only stdlib”, “no recursion”, “target Python 3.11” — put them in User, not System.
- **Combine** — `Prompt-Architect` + `Code-Review-Pro` is a surprisingly nasty loop.

---

## Docker Details

- **Image:** `nginx:alpine` (~40MB). No node, no python, no build.
- **Why nginx?** It's the boring answer that has handled `autoindex` since 2004. No hand-rolled file server with a path traversal bug.
- **Port:** `80` inside, `3000` on host via compose.
- **Volumes (dev):** `Prompts/` mounted read-only so you can edit locally and refresh.

```bash
# manual run without compose
docker run --rm -p 3000:80 -v $PWD/Prompts:/usr/share/nginx/html/prompts:ro prompts
```

---

## Contributing

Got a prompt that survived real use? PR it.

- Keep format: `# Name` → `> one-line hook` → `System` → `User` with `[BRACKETS]` or `<TAGS>` for advanced coding ones.
- Include what it's *for* and what it *won't* do.
- Human voice > corporate. If it sounds like a press release, rewrite.

---

## License

MIT — [LICENSE](LICENSE). Use it, break it, sell it. No warranty, obviously.

---

**Happy prompting.**  
— Purrple-hub

*P.S. If a prompt feels over-engineered, it is. Delete half and see if it still works — that's the ponytail test.*
