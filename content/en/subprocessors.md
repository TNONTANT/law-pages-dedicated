---
title: "Sub-processors"
description: "Third-party processors that handle SnapCal user data on our behalf"
doc_kind: "subprocessors"
sitemap:
  priority: 0.7
  changefreq: monthly
---

This page lists the third parties (Data Processors under Thai PDPA s.40) that handle SnapCal user data on our behalf. We update this page when sub-processors change. Material changes (new processor handling sensitive data, or new country of processing) trigger a 30-day in-app notice per [Privacy Policy](/en/privacy/) §9.

**Last updated:** 2026-06-27

---

## Active Sub-processors

| # | Processor | Data Handled | Purpose | Processing Location | Safeguards |
|---|-----------|-------------|---------|---------------------|-----------|
| 1 | **Google LLC** (Gemini API — paid tier) | Food photos, AI prompts | AI nutrition analysis | **Global** — Google routes requests to any of its data centers; region cannot be selected for the Gemini Developer API | Google APIs Terms of Service + Gemini API Additional Terms; paid-tier commitment that customer prompts and responses are not used to train Google's models |
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

## Change Log

| Date | Change | Notice given |
|------|--------|--------------|
| 2026-06-27 | v3: Supabase Inc. → Neon Inc. (same physical region: AWS Singapore). Vertex AI Singapore (regional) → Gemini Developer API (global routing). Cloud Run + GCS moved to Bangkok (asia-southeast3). | 30-day LINE notice + hard re-consent gate from 2026-07-27 |

---

## Notes

- "Sub-processor" means a third party we engage to process personal data on our behalf. It is distinct from a separate "Controller" (e.g., LINE Corporation is a joint controller for some flows under LINE's own privacy terms).
- This list reflects sub-processors as of the date above. We are an early-stage beta — the list may grow as the product matures.
- Questions or objections to any sub-processor: <a href="mailto:privacy@snapcal.app">privacy@snapcal.app</a>.
