# EB-2 NIW DIY Skill

A reusable Codex skill for preparing a self-filed `EB-2 National Interest Waiver (NIW)` I-140 packet, with a strong focus on `online filing`.

This skill is designed for applicants and collaborators who want a repeatable workflow for:

- mapping evidence to the three `Matter of Dhanasar` prongs
- drafting and refining an NIW petition letter
- drafting technically proximate and independent recommendation letters
- organizing evidence into USCIS online upload buckets
- assembling packet PDFs with clean, consistent naming
- normalizing screenshot-heavy PDFs into readable U.S. letter-size uploads
- handling upload-hostile PDFs by flattening or splitting them into upload-safe packets

## What is included

- `SKILL.md`
  The main workflow and decision rules for NIW packet preparation.
- `references/petition_letter.md`
  Guidance for structuring a strong NIW petition letter.
- `references/online_filing_mapping.md`
  Guidance for packet naming and USCIS online filing buckets.
- `references/recommendation_letters.md`
  Guidance for differentiating dependent and independent recommendation letters.
- `scripts/merge_pdfs.sh`
  Merge related PDFs into a single packet PDF.
- `scripts/normalize_to_letter.sh`
  Standardize screenshot-heavy or mixed-size PDFs to U.S. letter pages.
- `agents/openai.yaml`
  UI metadata for using this skill in Codex/OpenAI skill environments.

## Intended use

This skill is for document organization, drafting support, and packet assembly. It is not legal advice. USCIS filing requirements, fees, form editions, and addresses change over time and should be verified from official sources before filing.

## Suggested use pattern

1. Confirm the filing path:
   `advanced degree` vs `exceptional ability`, and `online` vs `paper`.
2. Build the evidence map around `Dhanasar`.
3. Draft a fact-dense petition letter anchored in government policy and standards.
4. Draft distinct recommendation letters with quotable, role-appropriate language.
5. Assemble upload-ready packet PDFs aligned with USCIS upload categories.
6. Normalize mixed-size supporting PDFs before final upload.
7. Flatten or rebuild screenshot-heavy packets if the USCIS uploader rejects them.

## Current upload-ready model

The current recommended online-filing structure in this repository uses:

- `NIW-01` through `NIW-07` for the main NIW evidence bucket
- packetized academic records such as `AcademicRecord_USC_MS_Packet.pdf`
- clarification PDFs for legacy/inapplicable buckets when useful
- `ETA-9089_Final_Determination.pdf` under `Additional Evidence`
- a hybrid upload-safe peer-review packet: `NIW-05_Peer_Review_And_Awards_Packet_Hybrid.pdf`

See `references/online_filing_mapping.md` for the concrete upload tree.

## Installation / reuse

If you use Codex skills directly, place this folder into your skills directory and invoke it as:

`$niw-eb2-niw-online-diy`

If you are publishing this as a standalone repository, this directory is already structured so that the repo root can be this folder itself.

## License

This public package is released under the `MIT` license. For a lightweight skill repository containing documentation and small utility scripts, MIT is usually the most practical default because it is short, permissive, and easy for others to reuse in their own workflows.

## Notes

- Government policy and standards are stronger than news for `Prong 1`.
- News and real-world incidents should corroborate national importance, not carry it.
- Citation quality is often more persuasive than raw citation count.
- Review completion proof is stronger than invitation emails.
- For online filing, packet names are usually clearer than paper-style exhibit numbers.
- USCIS uploaders sometimes reject structurally messy PDFs even when the content is fine; flattened or hybrid PDFs are often more reliable than the original merge.
