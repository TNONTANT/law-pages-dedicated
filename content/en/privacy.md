---
title: "Privacy Policy"
description: "How SnapCal collects, uses, and discloses personal data under Thai PDPA s.23"
doc_kind: "privacy"
sitemap:
  priority: 0.9
  changefreq: monthly
---

## 1. Data Controller

**SnapCal** (Commercial Registration No. [MOCK-REG-NUMBER])
Address: [MOCK-ADDRESS]
Email: privacy@snapcal.app

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

---

## 3. Data Retention

| Data | Retention Period | Deletion Method |
|------|-----------------|-----------------|
| Food photos | 14 days from upload | Automatic — Google Cloud Storage lifecycle policy |
| Health profile + meal history | 12 months from last activity | Automatic system deletion |
| LINE User ID + display name | Duration of account | Deleted on consent withdrawal or account deletion |
| Consent records | **10 years** from consent date | Retained per legal obligation even after account deletion |

---

## 4. Disclosure to Third Parties

We do not sell, trade, or rent your personal data. We share data only with the following Data Processors:

| Processor | Data Shared | Purpose | Location | Safeguard |
|-----------|-------------|---------|----------|-----------|
| **Google LLC** (Google Cloud AI — Vertex AI) | Food photos, AI prompts | Nutrition analysis | Singapore (asia-southeast1) | Google Cloud DPA |
| **Google LLC** (Cloud Run) | System logs (no user PII) | Backend compute | Singapore (asia-southeast1) | Google Cloud DPA |
| **Supabase Inc.** | All user data | Primary database | Singapore (AWS ap-southeast-1) | Supabase DPA |
| **LINE Corporation** | Messages via LINE Messaging API | Notification delivery | Japan/Singapore | LINE ToS + Messaging API Terms |

> Google LLC commits that data sent via Google Cloud AI will not be used to train AI models without separate explicit consent.

---

## 5. International Data Transfers (s.28)

Your data may be transferred internationally as described above. Safeguards:

- **Singapore (Google Cloud AI / Vertex AI, Google Cloud Run, Supabase):** Singapore PDPA 2012, recognised as providing adequate protection. Google LLC additionally covered by Google Cloud Data Processing Addendum (DPA)
- **Japan/Singapore (LINE):** Japan APPI + Singapore PDPA, recognised as providing adequate protection

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

- **Declining cross-border consent:** SnapCal cannot be used, as food photo analysis requires transfer to Google Cloud AI.
- **Declining health data consent:** Personal TDEE and nutrition summaries will not be available. You may still receive general estimates from food photo analysis.

---

## 8. Security

- All connections encrypted with TLS 1.2+
- Database encrypted at rest (Supabase)
- Access restricted via IAM to system administrators only
- No passwords or payment card data stored

In case of a data breach likely to risk your rights, we will notify the PDPC within 72 hours and notify you as soon as practicable (s.37(4)).

---

## 9. Policy Updates

We may update this policy from time to time. For significant changes affecting your rights, we will notify you via LINE at least 30 days before the change takes effect. Continued use after the effective date constitutes acknowledgement.

---

## 10. Contact

Email: privacy@snapcal.app
Hours: Monday–Friday 09:00–18:00 ICT
