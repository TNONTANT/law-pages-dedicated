---
title: "Privacy Policy"
description: "How SnapCal collects, uses, and discloses personal data under Thai PDPA s.23"
doc_kind: "privacy"
sitemap:
  priority: 0.9
  changefreq: monthly
---

**Version:** 2026-06-27-v3 · **Last updated:** 2026-06-27 · Sub-processor list: [/en/subprocessors/](/en/subprocessors/)

## 1. Data Controller

**SnapCal** (beta — operated by an individual; commercial registration pending)
Email: privacy@snapcal.app

We will update this section with the registered entity name and address once commercial registration is complete. During the beta period, all data subject rights (Sections 6 and 9 below) are honoured via the email address above.

---

## 2. Data We Collect, Purposes, and Legal Basis

| Data | Purpose | Legal Basis | Type |
|------|---------|-------------|------|
| LINE User ID, LINE display name | User identification, message delivery | s.24(3) — Contract | General personal data |
| Food photos | AI nutrition analysis | s.24(1) — Consent | General personal data |
| Weight, height, gender, activity level, calorie goal | TDEE calculation, personal nutrition targets | **s.26 — Explicit consent** | **Sensitive (health)** |
| Calculated TDEE | Daily calorie target display | s.26 — Derived health data | **Sensitive (health)** |
| Meal history, nutrition analysis results | Daily/weekly summaries, progress tracking | s.26 — Explicit consent | **Sensitive (health)** |
| Medical screening flag | User safety | s.26 — Explicit consent | **Sensitive (health)** |
| Consent records (timestamp, content, action) | Legal evidence of consent | s.24(5) — Legal obligation | General personal data |
| AI usage counters (request count per period — no food content) | Rate limit enforcement, prevent free-tier abuse | s.24(6) — Legitimate interests | General personal data |

---

## 3. Data Retention

| Data | Retention Period | Deletion Method |
|------|-----------------|-----------------|
| Food photos | 14 days from upload | Automatic — Google Cloud Storage (Bangkok, asia-southeast3) lifecycle policy |
| Health profile + meal history | **Immediately on consent withdrawal**; 12 months from last activity for inactive accounts | Immediate: cascade delete on withdrawal; Automatic: system deletion after inactivity |
| LINE User ID + display name | Duration of account | Deleted on consent withdrawal or account deletion |
| Consent records | **10 years** from consent date | Retained per legal obligation even after account deletion |
| AI usage counters | **60 days** from account deletion | Automatic background deletion (retained under s.24(6) legitimate interests to prevent quota abuse) |

---

## 4. Disclosure to Third Parties

We do not sell, trade, or rent your personal data. We share data only with the Sub-processors listed at [/en/subprocessors/](/en/subprocessors/). Summary:

| Processor | Data Shared | Purpose | Location | Safeguard |
|-----------|-------------|---------|----------|-----------|
| **Google LLC** (Gemini API — paid tier) | Food photos, AI prompts | AI nutrition analysis | **Global** — Google routes requests to any region; not selectable | Google APIs ToS + Gemini API Additional Terms; paid-tier no-training commitment |
| **Google LLC** (Cloud Storage) | Food photos (temporary) | 14-day staging buffer | Bangkok (asia-southeast3) | Google Cloud Platform Terms + DPST |
| **Google LLC** (Cloud Run + Cloud Logging) | In-flight request data, system logs (no food content) | Backend compute, operational logs | Bangkok (asia-southeast3) | Google Cloud Platform Terms |
| **Neon Inc.** | All persistent user data | Primary database (Neon Postgres, Launch tier) | Singapore (AWS ap-southeast-1) | [Neon DPA](https://neon.com/dpa) + [Neon sub-processor list](https://neon.com/subprocessors) |
| **LINE Corporation** | LINE User ID, display name, message bodies | Identity verification + notification delivery | Japan/Singapore | LINE ToS + Messaging API Terms + LINE Login Terms |

> Google LLC commits that customer prompts and responses submitted to the Gemini API on the **paid tier** are not used to train Google's AI models. We do not use Gemini's free tier for SnapCal.

---

## 5. International Data Transfers (s.28)

The following data flows leave Thailand. Domestic flows (Cloud Run compute, GCS staging, Cloud Logging — all in Bangkok asia-southeast3) are not subject to s.28.

- **Google LLC (Gemini API — global routing):** Your food photos may be processed by Google in any Google Cloud region worldwide. The Gemini Developer API does not allow region selection. Safeguards: Google APIs Terms of Service, the Gemini API Additional Terms, and Google's binding commitment that paid-tier customer data is not used to train models.
- **Neon Inc. (Singapore — AWS ap-southeast-1):** Singapore PDPA 2012, generally recognised as comparable to Thai PDPA. Covered by Neon's Data Processing Addendum.
- **LINE Corporation (Japan / Singapore):** Japan APPI and Singapore PDPA. Covered by LINE Terms and the LINE Messaging API / LINE Login terms.

Until Thailand's PDPC publishes a formal adequacy list under s.28, we rely on **explicit consent** (s.24(1) for general data, s.26 for sensitive health data) combined with the contractual safeguards above.

---

## 6. Your Rights (s.30–34)

| Right | How to Exercise | SLA |
|-------|----------------|-----|
| **Access** | Email privacy@snapcal.app | 30 days |
| **Rectification** | LINE Settings menu (instant) or email | Instant / 30 days |
| **Erasure** | Type "ลบบัญชี" in LINE (instant) or email | Instant |
| **Portability** | Email privacy@snapcal.app | 30 days |
| **Object** | Email privacy@snapcal.app | 30 days |
| **Withdraw Consent** | LINE menu → Settings → Withdraw Consent (instant deletion) | Instant |

Withdrawal does not affect the lawfulness of processing prior to withdrawal.

---

## 7. Consequences of Not Providing Data

- **Declining cross-border consent:** SnapCal cannot be used. Food photo analysis requires sending images to Google's Gemini API, which may process them in any Google region worldwide.
- **Declining health data consent:** Personal TDEE and nutrition summaries will not be available. You may still receive general estimates from food photo analysis.

---

## 8. Security

- All connections encrypted with TLS 1.2+
- Database encrypted at rest (Neon, AES-256)
- Backend compute, photo staging, and operational logs hosted in Google Cloud Bangkok (asia-southeast3) — data residency for these flows is within Thailand
- Access restricted via IAM to the operator only
- No passwords or payment card data stored

In case of a data breach likely to risk your rights, we will notify the PDPC within 72 hours and notify you as soon as practicable (s.37(4)).

---

## 9. Policy Updates

We may update this policy from time to time. For significant changes affecting your rights, we will notify you via LINE at least 30 days before the change takes effect. Continued use after the effective date constitutes acknowledgement.

**Material changes** (new country of processing, new category of sensitive data, change in legal basis) additionally require **re-consent** — you will be asked to review and accept the updated terms before continuing to use the service. Existing consent records remain valid evidence for processing that occurred before the change.

**v2 → v3 (2026-06-27):** Database provider changed from Supabase Inc. to Neon Inc. (same physical region, Singapore). AI processing changed from Vertex AI (Singapore regional) to the Gemini Developer API (global routing). Backend compute and photo staging moved to Google Cloud Bangkok (asia-southeast3). Existing users have until 2026-07-27 to re-consent before the hard-block re-consent gate activates.

---

## 10. Contact

Email: privacy@snapcal.app
Hours: Monday–Friday 09:00–18:00 ICT
