---
title: "Sub-processors"
description: "Third-party processors that handle SnapCal user data on our behalf"
doc_kind: "subprocessors"
sitemap:
  priority: 0.7
  changefreq: monthly
---

This page lists the third parties (Data Processors under Thai PDPA s.40) that handle SnapCal user data on our behalf. We update this page when sub-processors change. Material changes (new processor handling sensitive data, or new country of processing) trigger a 30-day in-app notice per [Privacy Policy](/en/privacy/) §9.

**Last updated:** 2026-06-28

---

## Marketing Commitment

**None** of the sub-processors listed on this page are used for:

- Third-party advertising or retargeting
- Advertising profiling
- Sale, exchange, or rental of personal data
- Training third-party AI models with your data

If a sub-processor is ever added for any of these purposes, that constitutes a scope-of-consent change and requires fresh consent under PDPA s.19 before activation.

---

## Active Sub-processors

| # | Processor | Data Handled | Purpose | Processing Location | Safeguards |
|---|-----------|-------------|---------|---------------------|-----------|
| 1 | **Google LLC** (Gemini API — paid tier) | Food photos, AI prompts | AI nutrition analysis | **Global** — Google routes requests to any of its data centers; region cannot be selected for the Gemini Developer API | [Gemini API Additional Terms of Service](https://ai.google.dev/gemini-api/terms) — for paid usage Google states *"Google doesn't use your prompts or its responses to improve our products"* (see "How Google Uses Your Data" section); additionally covered by Google APIs Terms of Service |
| 2 | **Google LLC** (Cloud Storage) | Food photos (temporary) | 14-day staging buffer between upload and AI analysis | Bangkok (asia-southeast3) — Thailand | Google Cloud Platform Terms + Data Processing & Security Terms; data does not leave Thailand for this hop |
| 3 | **Google LLC** (Cloud Run + Cloud Logging) | All in-flight request data, system logs (no food content stored in logs) | Backend compute, operational logs | Bangkok (asia-southeast3) — Thailand | Google Cloud Platform Terms; data does not leave Thailand for compute or logging |
| 4 | **Neon Inc.** (Neon Postgres, Launch tier) | All persistent user data (profile, meal history, consent records, AI usage counters) | Primary database | Singapore (AWS ap-southeast-1) | [Neon DPA](https://neon.com/dpa); [Neon sub-processor list](https://neon.com/subprocessors) (covers Neon's own use of AWS) |
| 5 | **LINE Corporation** | LINE User ID, display name, message bodies | Identity verification (LINE Login), notification delivery (Messaging API) | Japan / Singapore | LINE Terms of Service; LINE Messaging API Terms; LINE Login Terms |

---

## Cross-border Transfer Summary (PDPA s.28)

| Flow | Destination | Mechanism |
|------|-------------|-----------|
| Food photo → Gemini API | Globally (any Google region) | Explicit consent + Google API Terms (no-training commitment on paid tier) |
| Persistent data → Neon | Singapore | Explicit consent + Neon DPA + Singapore PDPA 2012 (recognised as comparable protection) |
| LINE messages → LINE Corp | Japan / Singapore | Explicit consent + LINE Terms + Japan APPI / Singapore PDPA |

All other data flows (GCS staging, Cloud Run compute, Cloud Logging) are domestic — data does not leave Thailand.

---

## Sub-processors Handling Sensitive Data (PDPA s.26)

Sensitive data under s.26 in the SnapCal context = health data (weight, height, gender, age, activity level, calorie goal, computed TDEE).

| Sub-processor | Touches s.26 health data? | Notes |
|----------------|----------------------------|--------|
| **Neon Inc.** | ✅ Yes — stores entire health profile | Primary database; deleted immediately on consent withdrawal (no fallback legal basis) |
| **Google LLC** (Gemini API) | ❌ No — sees food photos only; does not receive health profile | Requests sent to Gemini contain only photos + nutrition-analysis prompts |
| **Google LLC** (Cloud Storage) | ❌ No — stores food photos in 14-day buffer | No health-profile data |
| **Google LLC** (Cloud Run + Logging) | ❌ No — system logs only; profile values not logged | Request/response metadata only |
| **LINE Corporation** | ❌ No — sees chat messages only | userId + user-sent message text; no in-app profile visibility |

s.26 consent therefore primarily binds to **Neon Inc. (Singapore)** — replacing the primary database processor is the event that requires fresh s.26 consent.

---

## Change Log

| Date | Change | Notice given |
|------|--------|--------------|
| 2026-06-28 | Documentation update (no scope change): added Marketing Commitment section, direct link to Gemini's no-training clause, table identifying which processors touch s.26 sensitive data. | No re-consent required (scope unchanged — wording-only per consent-snapshots policy) |
| 2026-06-27 | v3: Supabase Inc. → Neon Inc. (same physical region: AWS Singapore). Vertex AI Singapore (regional) → Gemini Developer API (global routing). Cloud Run + GCS moved to Bangkok (asia-southeast3). | 30-day LINE notice + hard re-consent gate from 2026-07-27 |

---

## Notes

- "Sub-processor" means a third party we engage to process personal data on our behalf. It is distinct from a separate "Controller" (e.g., LINE Corporation is a joint controller for some flows under LINE's own privacy terms).
- This list reflects sub-processors as of the date above. We are an early-stage beta — the list may grow as the product matures.
- Questions or objections to any sub-processor: <a href="mailto:privacy@snapcal.app">privacy@snapcal.app</a>.
