---
title: "รายชื่อผู้ประมวลผลข้อมูล (Sub-processors)"
description: "บุคคลที่สามซึ่งประมวลผลข้อมูลผู้ใช้ SnapCal แทนเรา"
doc_kind: "subprocessors"
sitemap:
  priority: 0.7
  changefreq: monthly
---

หน้านี้แสดงรายชื่อบุคคลที่สาม (ผู้ประมวลผลข้อมูลส่วนบุคคล ตาม PDPA ม.40) ซึ่งประมวลผลข้อมูลผู้ใช้ SnapCal แทนเรา เราจะอัพเดทหน้านี้เมื่อมีการเปลี่ยนแปลง การเปลี่ยนแปลงที่สำคัญ (เช่น ผู้ประมวลผลรายใหม่ที่จัดการข้อมูลอ่อนไหว หรือประเทศปลายทางใหม่) จะมีการแจ้งล่วงหน้า 30 วันผ่านแอป ตาม [นโยบายความเป็นส่วนตัว](/th/privacy/) §9

**อัพเดทล่าสุด:** 2026-06-27

---

## ผู้ประมวลผลที่ใช้งานอยู่

| # | ผู้ประมวลผล | ข้อมูลที่จัดการ | วัตถุประสงค์ | ที่ตั้งการประมวลผล | มาตรการคุ้มครอง |
|---|------------|----------------|---------------|----------------------|------------------|
| 1 | **Google LLC** (Gemini API — แบบเสียค่าใช้จ่าย) | รูปอาหาร, คำสั่ง AI | วิเคราะห์โภชนาการด้วย AI | **ทั่วโลก** — Google ส่ง request ไปยังศูนย์ข้อมูลใดก็ได้; Gemini Developer API ไม่สามารถเลือกภูมิภาคได้ | Google APIs Terms of Service + Gemini API Additional Terms; คำมั่นสำหรับแบบเสียค่าใช้จ่ายว่าจะไม่นำ prompt และผลลัพธ์ของลูกค้าไปฝึก AI model |
| 2 | **Google LLC** (Cloud Storage) | รูปอาหาร (ชั่วคราว) | Buffer เก็บรูป 14 วันก่อน/หลังการวิเคราะห์ | กรุงเทพฯ (asia-southeast3) — ประเทศไทย | Google Cloud Platform Terms + Data Processing & Security Terms; ข้อมูลไม่ออกนอกประเทศไทย |
| 3 | **Google LLC** (Cloud Run + Cloud Logging) | ข้อมูล request ระหว่างประมวลผล, log ระบบ (log ไม่มีเนื้อหารูปอาหาร) | ประมวลผล backend + log ปฏิบัติการ | กรุงเทพฯ (asia-southeast3) — ประเทศไทย | Google Cloud Platform Terms; ข้อมูลไม่ออกนอกประเทศไทย |
| 4 | **Neon Inc.** (Neon Postgres, แพ็คเกจ Launch) | ข้อมูลผู้ใช้ทั้งหมด (โปรไฟล์, ประวัติมื้ออาหาร, บันทึกความยินยอม, ตัวนับการใช้งาน AI) | ฐานข้อมูลหลัก | สิงคโปร์ (AWS ap-southeast-1) | [Neon DPA](https://neon.com/dpa); [รายชื่อ sub-processor ของ Neon](https://neon.com/subprocessors) (ครอบคลุมการที่ Neon ใช้ AWS) |
| 5 | **LINE Corporation** | LINE User ID, ชื่อที่แสดง, ข้อความ | ยืนยันตัวตน (LINE Login), ส่ง notification (Messaging API) | ญี่ปุ่น / สิงคโปร์ | LINE Terms of Service; LINE Messaging API Terms; LINE Login Terms |

---

## สรุปการส่งข้อมูลข้ามประเทศ (PDPA ม.28)

| การส่งข้อมูล | ประเทศปลายทาง | กลไกคุ้มครอง |
|--------------|----------------|----------------|
| รูปอาหาร → Gemini API | ทั่วโลก (ภูมิภาค Google ใดก็ได้) | ความยินยอมชัดแจ้ง + Google API Terms (คำมั่นไม่นำไปฝึก AI สำหรับแบบเสียค่าใช้จ่าย) |
| ข้อมูลผู้ใช้ → Neon | สิงคโปร์ | ความยินยอมชัดแจ้ง + Neon DPA + Singapore PDPA 2012 (มีมาตรฐานคุ้มครองเทียบเท่า) |
| ข้อความ LINE → LINE Corp | ญี่ปุ่น / สิงคโปร์ | ความยินยอมชัดแจ้ง + LINE Terms + Japan APPI / Singapore PDPA |

การส่งข้อมูลอื่นๆ (GCS staging, Cloud Run compute, Cloud Logging) เป็นการประมวลผลในประเทศ — ข้อมูลไม่ออกนอกประเทศไทย

---

## บันทึกการเปลี่ยนแปลง

| วันที่ | การเปลี่ยนแปลง | การแจ้ง |
|---------|------------------|----------|
| 2026-06-27 | v3: Supabase Inc. → Neon Inc. (ภูมิภาคเดิม: AWS สิงคโปร์). Vertex AI Singapore (regional) → Gemini Developer API (global routing). Cloud Run + GCS ย้ายไป Bangkok (asia-southeast3) | แจ้งผ่าน LINE 30 วัน + Hard re-consent gate ตั้งแต่ 2026-07-27 |

---

## หมายเหตุ

- "Sub-processor" หมายถึงบุคคลที่สามที่เราว่าจ้างให้ประมวลผลข้อมูลส่วนบุคคลแทนเรา ต่างจาก "Controller" แยก (เช่น LINE Corporation เป็น joint controller สำหรับบางการประมวลผลภายใต้ข้อกำหนดของ LINE เอง)
- รายชื่อนี้สะท้อนสถานะ ณ วันที่ระบุข้างบน เราเป็น beta ระยะแรก — รายการอาจเพิ่มขึ้นตามการเติบโตของผลิตภัณฑ์
- คำถามหรือข้อคัดค้านต่อ sub-processor ใด: <a href="mailto:privacy@snapcal.app">privacy@snapcal.app</a>
