# Browse

72 prompts, 8 folders + advanced. Pick the job, not the title.

```
coding/            — code, review, debug, test, refactor, sql, regex, docs (12)
  advanced/        — polished <> monsters: review-ultra, forensics, perf, race, leak, break-detector, types, ADR, build, injection, explain-plan, redos (12)
research/          — fact-check, papers, trends, competitive, deep dive (8)
writing/           — humanize, email, story, threads, linkedin, seo, script (8)
security/          — warden, pentest, privacy (3)
meta/              — architect, optimizer, persona, jailbreak-test (5)
business/          — startup, product, meeting, decision, negotiation, debate, finance, legal (8)
creative/          — brainstorm, poet, image, game, roast, therapist, meme (7)
productivity/      — tutor, interview, career, time, habit, ELI5, travel, cooking, fitness (9)
```

**Fastest way to find one:** `grep -r "keyword" .` — e.g., `grep -r "STRIDE" .` or `grep -r "<CODE>" coding/advanced`

Or open `../README.md` for the full table with one-line pitches.

No index.html needed — nginx `autoindex` does the browsing when you run docker. For local, just `ls`.
