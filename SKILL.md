---
name: niw-eb2-niw-online-diy
description: Prepare and refine a self-filed EB-2 NIW I-140 packet for online filing, including Dhanasar evidence mapping, petition-letter drafting, recommendation-letter drafting, USCIS upload-bucket organization, PDF packet assembly, and screenshot-heavy PDF normalization. Use when a user asks to build, review, organize, rename, or polish NIW materials, upload-ready packets, or recommendation letters.
---

# EB-2 NIW Online DIY

Use this skill for self-prepared EB-2 NIW I-140 work, especially online filing. Treat it as packet-building and writing guidance, not legal advice. When the user asks for fees, form editions, addresses, or current USCIS/DOL requirements, verify them from official sources because those details change.

## Workflow

1. Determine the filing path before drafting.
   - Confirm whether the case is `advanced degree` or `exceptional ability`.
   - Confirm whether the filing is `online` or `paper`.
   - For online filing, organize around USCIS upload buckets rather than only traditional exhibit tabs.

2. Build the evidence map around `Matter of Dhanasar`.
   - `Prong 1`: use government policy/standards as the primary anchor for national importance.
   - `Prong 2`: use publications, citation quality, peer review, awards, U.S. continuity, and recommendation letters.
   - `Prong 3`: explain why contribution-driven research is broader than one employer or one fixed job.
   - Use news and public reporting only as corroboration, not as the primary Prong 1 evidence.

3. Draft the petition letter in a way USCIS can scan.
   - Follow the structure in `references/petition_letter.md`.
   - Prefer fact-dense subsections over generic praise.
   - Quote government materials and recommendation letters directly when those quotes materially support a claim.
   - Keep technical detail at the level of risk, result, and impact; do not assume the adjudicator understands algorithm names.

4. Draft recommendation letters with distinct roles.
   - Use `references/recommendation_letters.md`.
   - A technically proximate recommender may describe concrete contributions.
   - An independent recommender should focus more on engineering significance, field value, and why the work matters beyond one employer.
   - Recommendation letters should contain quotable sentences that can be reused inside the petition letter.

5. Organize the upload-ready packet around USCIS categories.
   - Use `references/online_filing_mapping.md`.
   - Prefer packet-style file names such as `NIW-01_Petition_Letter.pdf` instead of only `Exhibit-1.pdf`.
   - Keep the petition letter's references aligned with those packet names.
   - For advanced-degree NIW, treat `Proof of exceptional abilities` and `Form ETA-750/750B` as normally unused buckets unless the specific filing path truly requires them.
   - If a bucket is intentionally unused, a short clarification PDF can be cleaner than a local README note.

6. Keep PDFs readable and uniform.
   - Merge related PDFs into packet PDFs with `scripts/merge_pdfs.sh`.
   - Normalize screenshot-heavy or mixed-size PDFs to U.S. letter pages with `scripts/normalize_to_letter.sh`.
   - For research papers, default to first page only; add one key-results page only when the petition letter relies on a specific result.
   - If USCIS rejects a structurally messy PDF, rebuild it as a flattened or hybrid upload-safe PDF rather than assuming the content is the problem.

## Use These References

- For petition structure and writing: `references/petition_letter.md`
- For upload buckets and packet naming: `references/online_filing_mapping.md`
- For recommendation-letter roles and drafting: `references/recommendation_letters.md`

## Practical Rules

- Government standards and policy documents are stronger than news for Prong 1.
- Real-world incidents and outside reporting should corroborate, not carry, national importance.
- Raw citation counts are weaker than citation-context evidence showing later researchers building on the work.
- Review invitations are weaker than completion proof; prefer completion certificates, reviewer-console screenshots, and summary pages showing the number of completed reviews.
- For online filing, do not force every document into a traditional exhibit-number system if packet names are clearer.
- If a packet contains screenshot pages with inconsistent dimensions, normalize the whole packet before upload.
- If a school-issued transcript PDF is encrypted, generate a clean non-encrypted copy for the upload-ready folder and reference that clean version in the filing checklist.
