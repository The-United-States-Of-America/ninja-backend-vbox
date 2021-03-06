--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Name: family_pkey_sequence; Type: SEQUENCE SET; Schema: public; Owner: uhrninja
--

SELECT pg_catalog.setval('family_pkey_sequence', 1, false);


--
-- Name: organization_pkey_sequence; Type: SEQUENCE SET; Schema: public; Owner: uhrninja
--

SELECT pg_catalog.setval('organization_pkey_sequence', 1, false);


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- Data for Name: tb_Organization; Type: TABLE DATA; Schema: public; Owner: uhrninja
--

COPY "tb_Organization" (id, name, state, address, zip, phone) FROM stdin;
\.


--
-- Data for Name: tb_UserType; Type: TABLE DATA; Schema: public; Owner: uhrninja
--

COPY "tb_UserType" (id, type) FROM stdin;
1	Patient
2	Provider
3	Administrator
\.


--
-- Data for Name: tb_User; Type: TABLE DATA; Schema: public; Owner: uhrninja
--

COPY "tb_User" (type_id, id) FROM stdin;
\.


--
-- Data for Name: tb_Administrator; Type: TABLE DATA; Schema: public; Owner: uhrninja
--

COPY "tb_Administrator" (id, email, "organizationId", "firstName", "lastName", password) FROM stdin;
\.


--
-- Data for Name: tb_Family; Type: TABLE DATA; Schema: public; Owner: uhrninja
--

COPY "tb_Family" (id, name) FROM stdin;
\.


--
-- Data for Name: tb_Client; Type: TABLE DATA; Schema: public; Owner: uhrninja
--

COPY "tb_Client" (id, ssn, "familyId", "firstName", "lastName", email, password) FROM stdin;
\.


--
-- Data for Name: tb_FamilyRequests; Type: TABLE DATA; Schema: public; Owner: uhrninja
--

COPY "tb_FamilyRequests" ("clientId", "familyId") FROM stdin;
\.


--
-- Data for Name: tb_OrganizationRequests; Type: TABLE DATA; Schema: public; Owner: uhrninja
--

COPY "tb_OrganizationRequests" ("userId", "organizationId", "dateRequested") FROM stdin;
\.


--
-- Data for Name: tb_Provider; Type: TABLE DATA; Schema: public; Owner: uhrninja
--

COPY "tb_Provider" (id, ssn, npi, "firstName", "lastName", email, password, prefix) FROM stdin;
\.


--
-- Data for Name: tb_Taxonomy; Type: TABLE DATA; Schema: public; Owner: uhrninja
--

COPY "tb_Taxonomy" (code, type, classification, specialization) FROM stdin;
101Y00000X	Behavioral Health & Social Service Providers	Counselor	\N
101YA0400X	Behavioral Health & Social Service Providers	Counselor	Addiction (Substance Use Disorder)
101YM0800X	Behavioral Health & Social Service Providers	Counselor	Mental Health
101YP1600X	Behavioral Health & Social Service Providers	Counselor	Pastoral
101YP2500X	Behavioral Health & Social Service Providers	Counselor	Professional
101YS0200X	Behavioral Health & Social Service Providers	Counselor	School
102L00000X	Behavioral Health & Social Service Providers	Psychoanalyst	\N
102X00000X	Behavioral Health & Social Service Providers	Poetry Therapist	\N
103G00000X	Behavioral Health & Social Service Providers	Clinical Neuropsychologist	\N
103GC0700X	Behavioral Health & Social Service Providers	Clinical Neuropsychologist	Clinical
103K00000X	Behavioral Health & Social Service Providers	Behavioral Analyst	\N
103T00000X	Behavioral Health & Social Service Providers	Psychologist	\N
103TA0400X	Behavioral Health & Social Service Providers	Psychologist	Addiction (Substance Use Disorder)
103TA0700X	Behavioral Health & Social Service Providers	Psychologist	Adult Development & Aging
103TB0200X	Behavioral Health & Social Service Providers	Psychologist	Cognitive & Behavioral
103TC0700X	Behavioral Health & Social Service Providers	Psychologist	Clinical
103TC1900X	Behavioral Health & Social Service Providers	Psychologist	Counseling
103TC2200X	Behavioral Health & Social Service Providers	Psychologist	Clinical Child & Adolescent
103TE1000X	Behavioral Health & Social Service Providers	Psychologist	Educational
103TE1100X	Behavioral Health & Social Service Providers	Psychologist	Exercise & Sports
103TF0000X	Behavioral Health & Social Service Providers	Psychologist	Family
103TF0200X	Behavioral Health & Social Service Providers	Psychologist	Forensic
103TH0004X	Behavioral Health & Social Service Providers	Psychologist	Health
103TH0100X	Behavioral Health & Social Service Providers	Psychologist	Health Service
103TM1700X	Behavioral Health & Social Service Providers	Psychologist	Men & Masculinity
103TM1800X	Behavioral Health & Social Service Providers	Psychologist	Mental Retardation & Developmental Disabilities
103TP0016X	Behavioral Health & Social Service Providers	Psychologist	Prescribing (Medical)
103TP0814X	Behavioral Health & Social Service Providers	Psychologist	Psychoanalysis
103TP2700X	Behavioral Health & Social Service Providers	Psychologist	Psychotherapy
103TP2701X	Behavioral Health & Social Service Providers	Psychologist	Group Psychotherapy
103TR0400X	Behavioral Health & Social Service Providers	Psychologist	Rehabilitation
103TS0200X	Behavioral Health & Social Service Providers	Psychologist	School
103TW0100X	Behavioral Health & Social Service Providers	Psychologist	Women
104100000X	Behavioral Health & Social Service Providers	Social Worker	\N
1041C0700X	Behavioral Health & Social Service Providers	Social Worker	Clinical
1041S0200X	Behavioral Health & Social Service Providers	Social Worker	School
106H00000X	Behavioral Health & Social Service Providers	Marriage & Family Therapist	\N
111N00000X	Chiropractic Providers	Chiropractor	\N
111NI0013X	Chiropractic Providers	Chiropractor	Independent Medical Examiner
111NI0900X	Chiropractic Providers	Chiropractor	Internist
111NN0400X	Chiropractic Providers	Chiropractor	Neurology
111NN1001X	Chiropractic Providers	Chiropractor	Nutrition
111NP0017X	Chiropractic Providers	Chiropractor	Pediatric Chiropractor
111NR0200X	Chiropractic Providers	Chiropractor	Radiology
111NR0400X	Chiropractic Providers	Chiropractor	Rehabilitation
111NS0005X	Chiropractic Providers	Chiropractor	Sports Physician
111NT0100X	Chiropractic Providers	Chiropractor	Thermography
111NX0100X	Chiropractic Providers	Chiropractor	Occupational Health
111NX0800X	Chiropractic Providers	Chiropractor	Orthopedic
122300000X	Dental Providers	Dentist	\N
1223D0001X	Dental Providers	Dentist	Dental Public Health
1223D0004X	Dental Providers	Dentist	Dentist Anesthesiologist
1223E0200X	Dental Providers	Dentist	Endodontics
1223G0001X	Dental Providers	Dentist	General Practice
1223P0106X	Dental Providers	Dentist	Oral and Maxillofacial Pathology
1223P0221X	Dental Providers	Dentist	Pediatric Dentistry
1223P0300X	Dental Providers	Dentist	Periodontics
1223P0700X	Dental Providers	Dentist	Prosthodontics
1223S0112X	Dental Providers	Dentist	Oral and Maxillofacial Surgery
1223X0008X	Dental Providers	Dentist	Oral and Maxillofacial Radiology
1223X0400X	Dental Providers	Dentist	Orthodontics and Dentofacial Orthopedics
122400000X	Dental Providers	Denturist	\N
124Q00000X	Dental Providers	Dental Hygienist	\N
125J00000X	Dental Providers	Dental Therapist	\N
125K00000X	Dental Providers	Advanced Practice Dental Therapist	\N
125Q00000X	Dental Providers	Oral Medicinist	\N
126800000X	Dental Providers	Dental Assistant	\N
126900000X	Dental Providers	Dental Laboratory Technician	\N
132700000X	Dietary & Nutritional Service Providers	Dietary Manager	\N
133N00000X	Dietary & Nutritional Service Providers	Nutritionist	\N
133NN1002X	Dietary & Nutritional Service Providers	Nutritionist	Nutrition, Education
133V00000X	Dietary & Nutritional Service Providers	Dietitian, Registered	\N
133VN1004X	Dietary & Nutritional Service Providers	Dietitian, Registered	Nutrition, Pediatric
133VN1005X	Dietary & Nutritional Service Providers	Dietitian, Registered	Nutrition, Renal
133VN1006X	Dietary & Nutritional Service Providers	Dietitian, Registered	Nutrition, Metabolic
136A00000X	Dietary & Nutritional Service Providers	Dietetic Technician, Registered	\N
146D00000X	Emergency Medical Service Providers	Personal Emergency Response Attendant	\N
146L00000X	Emergency Medical Service Providers	Emergency Medical Technician, Paramedic	\N
146M00000X	Emergency Medical Service Providers	Emergency Medical Technician, Intermediate	\N
146N00000X	Emergency Medical Service Providers	Emergency Medical Technician, Basic	\N
152W00000X	Eye and Vision Services Providers	Optometrist	\N
152WC0802X	Eye and Vision Services Providers	Optometrist	Corneal and Contact Management
152WL0500X	Eye and Vision Services Providers	Optometrist	Low Vision Rehabilitation
152WP0200X	Eye and Vision Services Providers	Optometrist	Pediatrics
152WS0006X	Eye and Vision Services Providers	Optometrist	Sports Vision
152WV0400X	Eye and Vision Services Providers	Optometrist	Vision Therapy
152WX0102X	Eye and Vision Services Providers	Optometrist	Occupational Vision
156F00000X	Eye and Vision Services Providers	Technician/Technologist	\N
156FC0800X	Eye and Vision Services Providers	Technician/Technologist	Contact Lens
156FC0801X	Eye and Vision Services Providers	Technician/Technologist	Contact Lens Fitter
156FX1100X	Eye and Vision Services Providers	Technician/Technologist	Ophthalmic
156FX1101X	Eye and Vision Services Providers	Technician/Technologist	Ophthalmic Assistant
156FX1201X	Eye and Vision Services Providers	Technician/Technologist	Optometric Assistant
156FX1202X	Eye and Vision Services Providers	Technician/Technologist	Optometric Technician
156FX1700X	Eye and Vision Services Providers	Technician/Technologist	Ocularist
156FX1800X	Eye and Vision Services Providers	Technician/Technologist	Optician
156FX1900X	Eye and Vision Services Providers	Technician/Technologist	Orthoptist
163W00000X	Nursing Service Providers	Registered Nurse	\N
163WA0400X	Nursing Service Providers	Registered Nurse	Addiction (Substance Use Disorder)
163WA2000X	Nursing Service Providers	Registered Nurse	Administrator
163WC0200X	Nursing Service Providers	Registered Nurse	Critical Care Medicine
163WC0400X	Nursing Service Providers	Registered Nurse	Case Management
163WC1400X	Nursing Service Providers	Registered Nurse	College Health
163WC1500X	Nursing Service Providers	Registered Nurse	Community Health
163WC1600X	Nursing Service Providers	Registered Nurse	Continuing Education/Staff Development
163WC2100X	Nursing Service Providers	Registered Nurse	Continence Care
163WC3500X	Nursing Service Providers	Registered Nurse	Cardiac Rehabilitation
163WD0400X	Nursing Service Providers	Registered Nurse	Diabetes Educator
163WD1100X	Nursing Service Providers	Registered Nurse	Dialysis, Peritoneal
163WE0003X	Nursing Service Providers	Registered Nurse	Emergency
163WE0900X	Nursing Service Providers	Registered Nurse	Enterostomal Therapy
163WF0300X	Nursing Service Providers	Registered Nurse	Flight
163WG0000X	Nursing Service Providers	Registered Nurse	General Practice
163WG0100X	Nursing Service Providers	Registered Nurse	Gastroenterology
163WG0600X	Nursing Service Providers	Registered Nurse	Gerontology
163WH0200X	Nursing Service Providers	Registered Nurse	Home Health
163WH0500X	Nursing Service Providers	Registered Nurse	Hemodialysis
163WH1000X	Nursing Service Providers	Registered Nurse	Hospice
163WI0500X	Nursing Service Providers	Registered Nurse	Infusion Therapy
163WI0600X	Nursing Service Providers	Registered Nurse	Infection Control
163WL0100X	Nursing Service Providers	Registered Nurse	Lactation Consultant
163WM0102X	Nursing Service Providers	Registered Nurse	Maternal Newborn
163WM0705X	Nursing Service Providers	Registered Nurse	Medical-Surgical
163WM1400X	Nursing Service Providers	Registered Nurse	Nurse Massage Therapist (NMT)
163WN0002X	Nursing Service Providers	Registered Nurse	Neonatal Intensive Care
163WN0003X	Nursing Service Providers	Registered Nurse	Neonatal, Low-Risk
163WN0300X	Nursing Service Providers	Registered Nurse	Nephrology
163WN0800X	Nursing Service Providers	Registered Nurse	Neuroscience
163WN1003X	Nursing Service Providers	Registered Nurse	Nutrition Support
163WP0000X	Nursing Service Providers	Registered Nurse	Pain Management
163WP0200X	Nursing Service Providers	Registered Nurse	Pediatrics
163WP0218X	Nursing Service Providers	Registered Nurse	Pediatric Oncology
163WP0807X	Nursing Service Providers	Registered Nurse	Psych/Mental Health, Child & Adolescent
163WP0808X	Nursing Service Providers	Registered Nurse	Psych/Mental Health
163WP0809X	Nursing Service Providers	Registered Nurse	Psych/Mental Health, Adult
163WP1700X	Nursing Service Providers	Registered Nurse	Perinatal
163WP2201X	Nursing Service Providers	Registered Nurse	Ambulatory Care
163WR0006X	Nursing Service Providers	Registered Nurse	Registered Nurse First Assistant
163WR0400X	Nursing Service Providers	Registered Nurse	Rehabilitation
163WR1000X	Nursing Service Providers	Registered Nurse	Reproductive Endocrinology/Infertility
163WS0121X	Nursing Service Providers	Registered Nurse	Plastic Surgery
163WS0200X	Nursing Service Providers	Registered Nurse	School
163WU0100X	Nursing Service Providers	Registered Nurse	Urology
163WW0000X	Nursing Service Providers	Registered Nurse	Wound Care
163WW0101X	Nursing Service Providers	Registered Nurse	Women's Health Care, Ambulatory
163WX0002X	Nursing Service Providers	Registered Nurse	Obstetric, High-Risk
163WX0003X	Nursing Service Providers	Registered Nurse	Obstetric, Inpatient
163WX0106X	Nursing Service Providers	Registered Nurse	Occupational Health
163WX0200X	Nursing Service Providers	Registered Nurse	Oncology
163WX0601X	Nursing Service Providers	Registered Nurse	Otorhinolaryngology & Head-Neck
163WX0800X	Nursing Service Providers	Registered Nurse	Orthopedic
163WX1100X	Nursing Service Providers	Registered Nurse	Ophthalmic
163WX1500X	Nursing Service Providers	Registered Nurse	Ostomy Care
164W00000X	Nursing Service Providers	Licensed Practical Nurse	\N
164X00000X	Nursing Service Providers	Licensed Vocational Nurse	\N
167G00000X	Nursing Service Providers	Licensed Psychiatric Technician	\N
170100000X	Other Service Providers	Medical Genetics, Ph.D. Medical Genetics	\N
170300000X	Other Service Providers	Genetic Counselor, MS	\N
171000000X	Other Service Providers	Military Health Care Provider	\N
1710I1002X	Other Service Providers	Military Health Care Provider	Independent Duty Corpsman
1710I1003X	Other Service Providers	Military Health Care Provider	Independent Duty Medical Technicians
171100000X	Other Service Providers	Acupuncturist	\N
171M00000X	Other Service Providers	Case Manager/Care Coordinator	\N
171R00000X	Other Service Providers	Interpreter	\N
171W00000X	Other Service Providers	Contractor	\N
171WH0202X	Other Service Providers	Contractor	Home Modifications
171WV0202X	Other Service Providers	Contractor	Vehicle Modifications
172A00000X	Other Service Providers	Driver	\N
172M00000X	Other Service Providers	Mechanotherapist	\N
172P00000X	Other Service Providers	Naprapath	\N
172V00000X	Other Service Providers	Community Health Worker	\N
173000000X	Other Service Providers	Legal Medicine	\N
173C00000X	Other Service Providers	Reflexologist	\N
173F00000X	Other Service Providers	Sleep Specialist, PhD	\N
174200000X	Other Service Providers	Meals	\N
174400000X	Other Service Providers	Specialist	\N
1744G0900X	Other Service Providers	Specialist	Graphics Designer
1744P3200X	Other Service Providers	Specialist	Prosthetics Case Management
1744R1102X	Other Service Providers	Specialist	Research Study
1744R1103X	Other Service Providers	Specialist	Research Data Abstracter/Coder
174H00000X	Other Service Providers	Health Educator	\N
174M00000X	Other Service Providers	Veterinarian	\N
174MM1900X	Other Service Providers	Veterinarian	Medical Research
174N00000X	Other Service Providers	Lactation Consultant, Non-RN	\N
174V00000X	Other Service Providers	Clinical Ethicist	\N
175F00000X	Other Service Providers	Naturopath	\N
175L00000X	Other Service Providers	Homeopath	\N
175M00000X	Other Service Providers	Midwife, Lay	\N
175T00000X	Other Service Providers	Peer Specialist	\N
176B00000X	Other Service Providers	Midwife	\N
176P00000X	Other Service Providers	Funeral Director	\N
177F00000X	Other Service Providers	Lodging	\N
183500000X	Pharmacy Service Providers	Pharmacist	\N
1835G0000X	Pharmacy Service Providers	Pharmacist	General Practice
1835G0303X	Pharmacy Service Providers	Pharmacist	Geriatric
1835N0905X	Pharmacy Service Providers	Pharmacist	Nuclear
1835N1003X	Pharmacy Service Providers	Pharmacist	Nutrition Support
1835P0018X	Pharmacy Service Providers	Pharmacist	Pharmacist Clinician (PhC)/ Clinical Pharmacy Specialist
1835P1200X	Pharmacy Service Providers	Pharmacist	Pharmacotherapy
1835P1300X	Pharmacy Service Providers	Pharmacist	Psychiatric
1835P2201X	Pharmacy Service Providers	Pharmacist	Ambulatory Care
1835X0200X	Pharmacy Service Providers	Pharmacist	Oncology
183700000X	Pharmacy Service Providers	Pharmacy Technician	\N
193200000X	Group	Multi-Specialty	\N
193400000X	Group	Single Specialty	\N
202C00000X	Allopathic & Osteopathic Physicians	Independent Medical Examiner	\N
202K00000X	Allopathic & Osteopathic Physicians	Phlebology	\N
204C00000X	Allopathic & Osteopathic Physicians	Neuromusculoskeletal Medicine, Sports Medicine	\N
204D00000X	Allopathic & Osteopathic Physicians	Neuromusculoskeletal Medicine & OMM	\N
204E00000X	Allopathic & Osteopathic Physicians	Oral & Maxillofacial Surgery	\N
204F00000X	Allopathic & Osteopathic Physicians	Transplant Surgery	\N
204R00000X	Allopathic & Osteopathic Physicians	Electrodiagnostic Medicine	\N
207K00000X	Allopathic & Osteopathic Physicians	Allergy & Immunology	\N
207KA0200X	Allopathic & Osteopathic Physicians	Allergy & Immunology	Allergy
207KI0005X	Allopathic & Osteopathic Physicians	Allergy & Immunology	Clinical & Laboratory Immunology
207L00000X	Allopathic & Osteopathic Physicians	Anesthesiology	\N
207LA0401X	Allopathic & Osteopathic Physicians	Anesthesiology	Addiction Medicine
207LC0200X	Allopathic & Osteopathic Physicians	Anesthesiology	Critical Care Medicine
207LH0002X	Allopathic & Osteopathic Physicians	Anesthesiology	Hospice and Palliative Medicine
207LP2900X	Allopathic & Osteopathic Physicians	Anesthesiology	Pain Medicine
207LP3000X	Allopathic & Osteopathic Physicians	Anesthesiology	Pediatric Anesthesiology
207N00000X	Allopathic & Osteopathic Physicians	Dermatology	\N
207ND0101X	Allopathic & Osteopathic Physicians	Dermatology	MOHS-Micrographic Surgery
207ND0900X	Allopathic & Osteopathic Physicians	Dermatology	Dermatopathology
207NI0002X	Allopathic & Osteopathic Physicians	Dermatology	Clinical & Laboratory Dermatological Immunology
207NP0225X	Allopathic & Osteopathic Physicians	Dermatology	Pediatric Dermatology
207NS0135X	Allopathic & Osteopathic Physicians	Dermatology	Procedural Dermatology
207P00000X	Allopathic & Osteopathic Physicians	Emergency Medicine	\N
207PE0004X	Allopathic & Osteopathic Physicians	Emergency Medicine	Emergency Medical Services
207PE0005X	Allopathic & Osteopathic Physicians	Emergency Medicine	Undersea and Hyperbaric Medicine
207PH0002X	Allopathic & Osteopathic Physicians	Emergency Medicine	Hospice and Palliative Medicine
207PP0204X	Allopathic & Osteopathic Physicians	Emergency Medicine	Pediatric Emergency Medicine
207PS0010X	Allopathic & Osteopathic Physicians	Emergency Medicine	Sports Medicine
207PT0002X	Allopathic & Osteopathic Physicians	Emergency Medicine	Medical Toxicology
207Q00000X	Allopathic & Osteopathic Physicians	Family Medicine	\N
207QA0000X	Allopathic & Osteopathic Physicians	Family Medicine	Adolescent Medicine
207QA0401X	Allopathic & Osteopathic Physicians	Family Medicine	Addiction Medicine
207QA0505X	Allopathic & Osteopathic Physicians	Family Medicine	Adult Medicine
207QB0002X	Allopathic & Osteopathic Physicians	Family Medicine	Obesity Medicine
207QG0300X	Allopathic & Osteopathic Physicians	Family Medicine	Geriatric Medicine
207QH0002X	Allopathic & Osteopathic Physicians	Family Medicine	Hospice and Palliative Medicine
207QS0010X	Allopathic & Osteopathic Physicians	Family Medicine	Sports Medicine
207QS1201X	Allopathic & Osteopathic Physicians	Family Medicine	Sleep Medicine
207R00000X	Allopathic & Osteopathic Physicians	Internal Medicine	\N
207RA0000X	Allopathic & Osteopathic Physicians	Internal Medicine	Adolescent Medicine
207RA0001X	Allopathic & Osteopathic Physicians	Internal Medicine	Advanced Heart Failure and Transplant Cardiology
207RA0201X	Allopathic & Osteopathic Physicians	Internal Medicine	Allergy & Immunology
207RA0401X	Allopathic & Osteopathic Physicians	Internal Medicine	Addiction Medicine
207RB0002X	Allopathic & Osteopathic Physicians	Internal Medicine	Obesity Medicine
207RC0000X	Allopathic & Osteopathic Physicians	Internal Medicine	Cardiovascular Disease
207RC0001X	Allopathic & Osteopathic Physicians	Internal Medicine	Clinical Cardiac Electrophysiology
207RC0200X	Allopathic & Osteopathic Physicians	Internal Medicine	Critical Care Medicine
207RE0101X	Allopathic & Osteopathic Physicians	Internal Medicine	Endocrinology, Diabetes & Metabolism
207RG0100X	Allopathic & Osteopathic Physicians	Internal Medicine	Gastroenterology
207RG0300X	Allopathic & Osteopathic Physicians	Internal Medicine	Geriatric Medicine
207RH0000X	Allopathic & Osteopathic Physicians	Internal Medicine	Hematology
207RH0002X	Allopathic & Osteopathic Physicians	Internal Medicine	Hospice and Palliative Medicine
207RH0003X	Allopathic & Osteopathic Physicians	Internal Medicine	Hematology & Oncology
207RH0005X	Allopathic & Osteopathic Physicians	Internal Medicine	Hypertension Specialist
207RI0001X	Allopathic & Osteopathic Physicians	Internal Medicine	Clinical & Laboratory Immunology
207RI0008X	Allopathic & Osteopathic Physicians	Internal Medicine	Hepatology
207RI0011X	Allopathic & Osteopathic Physicians	Internal Medicine	Interventional Cardiology
207RI0200X	Allopathic & Osteopathic Physicians	Internal Medicine	Infectious Disease
207RM1200X	Allopathic & Osteopathic Physicians	Internal Medicine	Magnetic Resonance Imaging (MRI)
207RN0300X	Allopathic & Osteopathic Physicians	Internal Medicine	Nephrology
207RP1001X	Allopathic & Osteopathic Physicians	Internal Medicine	Pulmonary Disease
207RR0500X	Allopathic & Osteopathic Physicians	Internal Medicine	Rheumatology
207RS0010X	Allopathic & Osteopathic Physicians	Internal Medicine	Sports Medicine
207RS0012X	Allopathic & Osteopathic Physicians	Internal Medicine	Sleep Medicine
207RT0003X	Allopathic & Osteopathic Physicians	Internal Medicine	Transplant Hepatology
207RX0202X	Allopathic & Osteopathic Physicians	Internal Medicine	Medical Oncology
207SC0300X	Allopathic & Osteopathic Physicians	Medical Genetics	Clinical Cytogenetic
207SG0201X	Allopathic & Osteopathic Physicians	Medical Genetics	Clinical Genetics (M.D.)
207SG0202X	Allopathic & Osteopathic Physicians	Medical Genetics	Clinical Biochemical Genetics
207SG0203X	Allopathic & Osteopathic Physicians	Medical Genetics	Clinical Molecular Genetics
207SG0205X	Allopathic & Osteopathic Physicians	Medical Genetics	Ph.D. Medical Genetics
207SM0001X	Allopathic & Osteopathic Physicians	Medical Genetics	Molecular Genetic Pathology
207T00000X	Allopathic & Osteopathic Physicians	Neurological Surgery	\N
207U00000X	Allopathic & Osteopathic Physicians	Nuclear Medicine	\N
207UN0901X	Allopathic & Osteopathic Physicians	Nuclear Medicine	Nuclear Cardiology
207UN0902X	Allopathic & Osteopathic Physicians	Nuclear Medicine	Nuclear Imaging & Therapy
207UN0903X	Allopathic & Osteopathic Physicians	Nuclear Medicine	In Vivo & In Vitro Nuclear Medicine
207V00000X	Allopathic & Osteopathic Physicians	Obstetrics & Gynecology	\N
207VB0002X	Allopathic & Osteopathic Physicians	Obstetrics & Gynecology	Obesity Medicine
207VC0200X	Allopathic & Osteopathic Physicians	Obstetrics & Gynecology	Critical Care Medicine
207VE0102X	Allopathic & Osteopathic Physicians	Obstetrics & Gynecology	Reproductive Endocrinology
207VF0040X	Allopathic & Osteopathic Physicians	Obstetrics & Gynecology	Female Pelvic Medicine and Reconstructive Surgery
207VG0400X	Allopathic & Osteopathic Physicians	Obstetrics & Gynecology	Gynecology
207VH0002X	Allopathic & Osteopathic Physicians	Obstetrics & Gynecology	Hospice and Palliative Medicine
207VM0101X	Allopathic & Osteopathic Physicians	Obstetrics & Gynecology	Maternal & Fetal Medicine
207VX0000X	Allopathic & Osteopathic Physicians	Obstetrics & Gynecology	Obstetrics
207VX0201X	Allopathic & Osteopathic Physicians	Obstetrics & Gynecology	Gynecologic Oncology
207W00000X	Allopathic & Osteopathic Physicians	Ophthalmology	\N
207X00000X	Allopathic & Osteopathic Physicians	Orthopaedic Surgery	\N
207XP3100X	Allopathic & Osteopathic Physicians	Orthopaedic Surgery	Pediatric Orthopaedic Surgery
207XS0106X	Allopathic & Osteopathic Physicians	Orthopaedic Surgery	Hand Surgery
207XS0114X	Allopathic & Osteopathic Physicians	Orthopaedic Surgery	Adult Reconstructive Orthopaedic Surgery
207XS0117X	Allopathic & Osteopathic Physicians	Orthopaedic Surgery	Orthopaedic Surgery of the Spine
207XX0004X	Allopathic & Osteopathic Physicians	Orthopaedic Surgery	Foot and Ankle Surgery
207XX0005X	Allopathic & Osteopathic Physicians	Orthopaedic Surgery	Sports Medicine
207XX0801X	Allopathic & Osteopathic Physicians	Orthopaedic Surgery	Orthopaedic Trauma
207Y00000X	Allopathic & Osteopathic Physicians	Otolaryngology	\N
207YP0228X	Allopathic & Osteopathic Physicians	Otolaryngology	Pediatric Otolaryngology
207YS0012X	Allopathic & Osteopathic Physicians	Otolaryngology	Sleep Medicine
207YS0123X	Allopathic & Osteopathic Physicians	Otolaryngology	Facial Plastic Surgery
207YX0007X	Allopathic & Osteopathic Physicians	Otolaryngology	Plastic Surgery within the Head & Neck
207YX0602X	Allopathic & Osteopathic Physicians	Otolaryngology	Otolaryngic Allergy
207YX0901X	Allopathic & Osteopathic Physicians	Otolaryngology	Otology & Neurotology
207YX0905X	Allopathic & Osteopathic Physicians	Otolaryngology	Otolaryngology/Facial Plastic Surgery
207ZB0001X	Allopathic & Osteopathic Physicians	Pathology	Blood Banking & Transfusion Medicine
207ZC0006X	Allopathic & Osteopathic Physicians	Pathology	Clinical Pathology
207ZC0008X	Allopathic & Osteopathic Physicians	Pathology	Clinical Informatics
207ZC0500X	Allopathic & Osteopathic Physicians	Pathology	Cytopathology
207ZD0900X	Allopathic & Osteopathic Physicians	Pathology	Dermatopathology
207ZF0201X	Allopathic & Osteopathic Physicians	Pathology	Forensic Pathology
207ZH0000X	Allopathic & Osteopathic Physicians	Pathology	Hematology
207ZI0100X	Allopathic & Osteopathic Physicians	Pathology	Immunopathology
207ZM0300X	Allopathic & Osteopathic Physicians	Pathology	Medical Microbiology
207ZN0500X	Allopathic & Osteopathic Physicians	Pathology	Neuropathology
207ZP0007X	Allopathic & Osteopathic Physicians	Pathology	Molecular Genetic Pathology
207ZP0101X	Allopathic & Osteopathic Physicians	Pathology	Anatomic Pathology
207ZP0102X	Allopathic & Osteopathic Physicians	Pathology	Anatomic Pathology & Clinical Pathology
207ZP0104X	Allopathic & Osteopathic Physicians	Pathology	Chemical Pathology
207ZP0105X	Allopathic & Osteopathic Physicians	Pathology	Clinical Pathology/Laboratory Medicine
207ZP0213X	Allopathic & Osteopathic Physicians	Pathology	Pediatric Pathology
208000000X	Allopathic & Osteopathic Physicians	Pediatrics	\N
2080A0000X	Allopathic & Osteopathic Physicians	Pediatrics	Adolescent Medicine
2080B0002X	Allopathic & Osteopathic Physicians	Pediatrics	Obesity Medicine
2080C0008X	Allopathic & Osteopathic Physicians	Pediatrics	Child Abuse Pediatrics
2080H0002X	Allopathic & Osteopathic Physicians	Pediatrics	Hospice and Palliative Medicine
2080I0007X	Allopathic & Osteopathic Physicians	Pediatrics	Clinical & Laboratory Immunology
2080N0001X	Allopathic & Osteopathic Physicians	Pediatrics	Neonatal-Perinatal Medicine
2080P0006X	Allopathic & Osteopathic Physicians	Pediatrics	Developmental â Behavioral Pediatrics
2080P0008X	Allopathic & Osteopathic Physicians	Pediatrics	Neurodevelopmental Disabilities
2080P0201X	Allopathic & Osteopathic Physicians	Pediatrics	Pediatric Allergy/Immunology
2080P0202X	Allopathic & Osteopathic Physicians	Pediatrics	Pediatric Cardiology
2080P0203X	Allopathic & Osteopathic Physicians	Pediatrics	Pediatric Critical Care Medicine
2080P0204X	Allopathic & Osteopathic Physicians	Pediatrics	Pediatric Emergency Medicine
2080P0205X	Allopathic & Osteopathic Physicians	Pediatrics	Pediatric Endocrinology
2080P0206X	Allopathic & Osteopathic Physicians	Pediatrics	Pediatric Gastroenterology
2080P0207X	Allopathic & Osteopathic Physicians	Pediatrics	Pediatric Hematology-Oncology
2080P0208X	Allopathic & Osteopathic Physicians	Pediatrics	Pediatric Infectious Diseases
2080P0210X	Allopathic & Osteopathic Physicians	Pediatrics	Pediatric Nephrology
2080P0214X	Allopathic & Osteopathic Physicians	Pediatrics	Pediatric Pulmonology
2080P0216X	Allopathic & Osteopathic Physicians	Pediatrics	Pediatric Rheumatology
2080S0010X	Allopathic & Osteopathic Physicians	Pediatrics	Sports Medicine
2080S0012X	Allopathic & Osteopathic Physicians	Pediatrics	Sleep Medicine
2080T0002X	Allopathic & Osteopathic Physicians	Pediatrics	Medical Toxicology
2080T0004X	Allopathic & Osteopathic Physicians	Pediatrics	Pediatric Transplant Hepatology
208100000X	Allopathic & Osteopathic Physicians	Physical Medicine & Rehabilitation	\N
2081H0002X	Allopathic & Osteopathic Physicians	Physical Medicine & Rehabilitation	Hospice and Palliative Medicine
2081N0008X	Allopathic & Osteopathic Physicians	Physical Medicine & Rehabilitation	Neuromuscular Medicine
2081P0004X	Allopathic & Osteopathic Physicians	Physical Medicine & Rehabilitation	Spinal Cord Injury Medicine
2081P0010X	Allopathic & Osteopathic Physicians	Physical Medicine & Rehabilitation	Pediatric Rehabilitation Medicine
2081P2900X	Allopathic & Osteopathic Physicians	Physical Medicine & Rehabilitation	Pain Medicine
2081S0010X	Allopathic & Osteopathic Physicians	Physical Medicine & Rehabilitation	Sports Medicine
208200000X	Allopathic & Osteopathic Physicians	Plastic Surgery	\N
2082S0099X	Allopathic & Osteopathic Physicians	Plastic Surgery	Plastic Surgery Within the Head and Neck
2082S0105X	Allopathic & Osteopathic Physicians	Plastic Surgery	Surgery of the Hand
2083A0100X	Allopathic & Osteopathic Physicians	Preventive Medicine	Aerospace Medicine
2083B0002X	Allopathic & Osteopathic Physicians	Preventive Medicine	Obesity Medicine
2083C0008X	Allopathic & Osteopathic Physicians	Preventive Medicine	Clinical Informatics
2083P0011X	Allopathic & Osteopathic Physicians	Preventive Medicine	Undersea and Hyperbaric Medicine
2083P0500X	Allopathic & Osteopathic Physicians	Preventive Medicine	Preventive Medicine/Occupational Environmental Medicine
2083P0901X	Allopathic & Osteopathic Physicians	Preventive Medicine	Public Health & General Preventive Medicine
2083S0010X	Allopathic & Osteopathic Physicians	Preventive Medicine	Sports Medicine
2083T0002X	Allopathic & Osteopathic Physicians	Preventive Medicine	Medical Toxicology
2083X0100X	Allopathic & Osteopathic Physicians	Preventive Medicine	Occupational Medicine
2084A0401X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Addiction Medicine
2084B0002X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Obesity Medicine
2084B0040X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Behavioral Neurology & Neuropsychiatry
2084D0003X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Diagnostic Neuroimaging
2084F0202X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Forensic Psychiatry
2084H0002X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Hospice and Palliative Medicine
261QE0800X	Ambulatory Health Care Facilities	Clinic/Center	Endoscopy
2084N0008X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Neuromuscular Medicine
2084N0400X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Neurology
2084N0402X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Neurology with Special Qualifications in Child Neurology
2084N0600X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Clinical Neurophysiology
2084P0005X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Neurodevelopmental Disabilities
2084P0015X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Psychosomatic Medicine
2084P0800X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Psychiatry
2084P0802X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Addiction Psychiatry
2084P0804X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Child & Adolescent Psychiatry
2084P0805X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Geriatric Psychiatry
2084P2900X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Pain Medicine
2084S0010X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Sports Medicine
2084S0012X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Sleep Medicine
2084V0102X	Allopathic & Osteopathic Physicians	Psychiatry & Neurology	Vascular Neurology
2085B0100X	Allopathic & Osteopathic Physicians	Radiology	Body Imaging
2085D0003X	Allopathic & Osteopathic Physicians	Radiology	Diagnostic Neuroimaging
2085H0002X	Allopathic & Osteopathic Physicians	Radiology	Hospice and Palliative Medicine
2085N0700X	Allopathic & Osteopathic Physicians	Radiology	Neuroradiology
2085N0904X	Allopathic & Osteopathic Physicians	Radiology	Nuclear Radiology
2085P0229X	Allopathic & Osteopathic Physicians	Radiology	Pediatric Radiology
2085R0001X	Allopathic & Osteopathic Physicians	Radiology	Radiation Oncology
2085R0202X	Allopathic & Osteopathic Physicians	Radiology	Diagnostic Radiology
2085R0203X	Allopathic & Osteopathic Physicians	Radiology	Therapeutic Radiology
2085R0204X	Allopathic & Osteopathic Physicians	Radiology	Vascular & Interventional Radiology
2085R0205X	Allopathic & Osteopathic Physicians	Radiology	Radiological Physics
2085U0001X	Allopathic & Osteopathic Physicians	Radiology	Diagnostic Ultrasound
208600000X	Allopathic & Osteopathic Physicians	Surgery	\N
2086H0002X	Allopathic & Osteopathic Physicians	Surgery	Hospice and Palliative Medicine
2086S0102X	Allopathic & Osteopathic Physicians	Surgery	Surgical Critical Care
2086S0105X	Allopathic & Osteopathic Physicians	Surgery	Surgery of the Hand
2086S0120X	Allopathic & Osteopathic Physicians	Surgery	Pediatric Surgery
2086S0122X	Allopathic & Osteopathic Physicians	Surgery	Plastic and Reconstructive Surgery
2086S0127X	Allopathic & Osteopathic Physicians	Surgery	Trauma Surgery
2086S0129X	Allopathic & Osteopathic Physicians	Surgery	Vascular Surgery
2086X0206X	Allopathic & Osteopathic Physicians	Surgery	Surgical Oncology
208800000X	Allopathic & Osteopathic Physicians	Urology	\N
2088F0040X	Allopathic & Osteopathic Physicians	Urology	Female Pelvic Medicine and Reconstructive Surgery
2088P0231X	Allopathic & Osteopathic Physicians	Urology	Pediatric Urology
208C00000X	Allopathic & Osteopathic Physicians	Colon & Rectal Surgery	\N
208D00000X	Allopathic & Osteopathic Physicians	General Practice	\N
208G00000X	Allopathic & Osteopathic Physicians	Thoracic Surgery (Cardiothoracic Vascular Surgery)	\N
208M00000X	Allopathic & Osteopathic Physicians	Hospitalist	\N
208U00000X	Allopathic & Osteopathic Physicians	Clinical Pharmacology	\N
208VP0000X	Allopathic & Osteopathic Physicians	Pain Medicine	Pain Medicine
208VP0014X	Allopathic & Osteopathic Physicians	Pain Medicine	Interventional Pain Medicine
209800000X	Allopathic & Osteopathic Physicians	Legal Medicine	\N
211D00000X	Podiatric Medicine & Surgery Service Providers	Assistant, Podiatric	\N
213E00000X	Podiatric Medicine & Surgery Service Providers	Podiatrist	\N
213EG0000X	Podiatric Medicine & Surgery Service Providers	Podiatrist	General Practice
213EP0504X	Podiatric Medicine & Surgery Service Providers	Podiatrist	Public Medicine
213EP1101X	Podiatric Medicine & Surgery Service Providers	Podiatrist	Primary Podiatric Medicine
213ER0200X	Podiatric Medicine & Surgery Service Providers	Podiatrist	Radiology
213ES0000X	Podiatric Medicine & Surgery Service Providers	Podiatrist	Sports Medicine
213ES0103X	Podiatric Medicine & Surgery Service Providers	Podiatrist	Foot & Ankle Surgery
213ES0131X	Podiatric Medicine & Surgery Service Providers	Podiatrist	Foot Surgery
221700000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Art Therapist	\N
222Q00000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Developmental Therapist	\N
222Z00000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Orthotist	\N
224900000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Mastectomy Fitter	\N
224L00000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Pedorthist	\N
224P00000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Prosthetist	\N
224Y00000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Clinical Exercise Physiologist	\N
224Z00000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Occupational Therapy Assistant	\N
224ZE0001X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Occupational Therapy Assistant	Environmental Modification
224ZF0002X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Occupational Therapy Assistant	Feeding, Eating & Swallowing
224ZL0004X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Occupational Therapy Assistant	Low Vision
224ZR0403X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Occupational Therapy Assistant	Driving and Community Mobility
225000000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Orthotic Fitter	\N
225100000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Physical Therapist	\N
2251C2600X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Physical Therapist	Cardiopulmonary
2251E1200X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Physical Therapist	Ergonomics
2251E1300X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Physical Therapist	Electrophysiology, Clinical
2251G0304X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Physical Therapist	Geriatrics
2251H1200X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Physical Therapist	Hand
2251H1300X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Physical Therapist	Human Factors
2251N0400X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Physical Therapist	Neurology
2251P0200X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Physical Therapist	Pediatrics
2251S0007X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Physical Therapist	Sports
2251X0800X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Physical Therapist	Orthopedic
225200000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Physical Therapy Assistant	\N
225400000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Rehabilitation Practitioner	\N
225500000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Specialist/Technologist	\N
2255A2300X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Specialist/Technologist	Athletic Trainer
2255R0406X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Specialist/Technologist	Rehabilitation, Blind
225600000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Dance Therapist	\N
225700000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Massage Therapist	\N
225800000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Recreation Therapist	\N
225A00000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Music Therapist	\N
225B00000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Pulmonary Function Technologist	\N
225C00000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Rehabilitation Counselor	\N
225CA2400X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Rehabilitation Counselor	Assistive Technology Practitioner
225CA2500X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Rehabilitation Counselor	Assistive Technology Supplier
225CX0006X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Rehabilitation Counselor	Orientation and Mobility Training Provider
225X00000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Occupational Therapist	\N
225XE0001X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Occupational Therapist	Environmental Modification
225XE1200X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Occupational Therapist	Ergonomics
225XF0002X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Occupational Therapist	Feeding, Eating & Swallowing
225XG0600X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Occupational Therapist	Gerontology
225XH1200X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Occupational Therapist	Hand
225XH1300X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Occupational Therapist	Human Factors
225XL0004X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Occupational Therapist	Low Vision
225XM0800X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Occupational Therapist	Mental Health
225XN1300X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Occupational Therapist	Neurorehabilitation
225XP0019X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Occupational Therapist	Physical Rehabilitation
225XP0200X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Occupational Therapist	Pediatrics
225XR0403X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Occupational Therapist	Driving and Community Mobility
226300000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Kinesiotherapist	\N
227800000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Certified	\N
2278C0205X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Certified	Critical Care
2278E0002X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Certified	Emergency Care
2278E1000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Certified	Educational
2278G0305X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Certified	Geriatric Care
2278G1100X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Certified	General Care
2278H0200X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Certified	Home Health
2278P1004X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Certified	Pulmonary Diagnostics
2278P1005X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Certified	Pulmonary Rehabilitation
2278P1006X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Certified	Pulmonary Function Technologist
2278P3800X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Certified	Palliative/Hospice
2278P3900X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Certified	Neonatal/Pediatrics
261QF0050X	Ambulatory Health Care Facilities	Clinic/Center	Family Planning, Non-Surgical
2278P4000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Certified	Patient Transport
2278S1500X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Certified	SNF/Subacute Care
227900000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Registered	\N
2279C0205X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Registered	Critical Care
2279E0002X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Registered	Emergency Care
2279E1000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Registered	Educational
2279G0305X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Registered	Geriatric Care
2279G1100X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Registered	General Care
2279H0200X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Registered	Home Health
2279P1004X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Registered	Pulmonary Diagnostics
2279P1005X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Registered	Pulmonary Rehabilitation
2279P1006X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Registered	Pulmonary Function Technologist
2279P3800X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Registered	Palliative/Hospice
2279P3900X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Registered	Neonatal/Pediatrics
2279P4000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Registered	Patient Transport
2279S1500X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Respiratory Therapist, Registered	SNF/Subacute Care
229N00000X	Respiratory, Developmental, Rehabilitative and Restorative Service Providers	Anaplastologist	\N
231H00000X	Speech, Language and Hearing Service Providers	Audiologist	\N
231HA2400X	Speech, Language and Hearing Service Providers	Audiologist	Assistive Technology Practitioner
231HA2500X	Speech, Language and Hearing Service Providers	Audiologist	Assistive Technology Supplier
235500000X	Speech, Language and Hearing Service Providers	Specialist/Technologist	\N
2355A2700X	Speech, Language and Hearing Service Providers	Specialist/Technologist	Audiology Assistant
2355S0801X	Speech, Language and Hearing Service Providers	Specialist/Technologist	Speech-Language Assistant
235Z00000X	Speech, Language and Hearing Service Providers	Speech-Language Pathologist	\N
237600000X	Speech, Language and Hearing Service Providers	Audiologist-Hearing Aid Fitter	\N
237700000X	Speech, Language and Hearing Service Providers	Hearing Instrument Specialist	\N
242T00000X	Technologists, Technicians & Other Technical Service Providers	Perfusionist	\N
243U00000X	Technologists, Technicians & Other Technical Service Providers	Radiology Practitioner Assistant	\N
246Q00000X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Pathology	\N
246QB0000X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Pathology	Blood Banking
246QC1000X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Pathology	Chemistry
246QC2700X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Pathology	Cytotechnology
246QH0000X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Pathology	Hematology
246QH0401X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Pathology	Hemapheresis Practitioner
246QH0600X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Pathology	Histology
246QI0000X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Pathology	Immunology
246QL0900X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Pathology	Laboratory Management
246QL0901X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Pathology	Laboratory Management, Diplomate
246QM0706X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Pathology	Medical Technologist
246QM0900X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Pathology	Microbiology
246R00000X	Technologists, Technicians & Other Technical Service Providers	Technician, Pathology	\N
246RH0600X	Technologists, Technicians & Other Technical Service Providers	Technician, Pathology	Histology
246RM2200X	Technologists, Technicians & Other Technical Service Providers	Technician, Pathology	Medical Laboratory
246RP1900X	Technologists, Technicians & Other Technical Service Providers	Technician, Pathology	Phlebotomy
246W00000X	Technologists, Technicians & Other Technical Service Providers	Technician, Cardiology	\N
246X00000X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Cardiovascular	\N
246XC2901X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Cardiovascular	Cardiovascular Invasive Specialist
246XC2903X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Cardiovascular	Vascular Specialist
246XS1301X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Cardiovascular	Sonography
246Y00000X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Health Info	\N
246YC3301X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Health Info	Coding Specialist, Hospital Based
246YC3302X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Health Info	Coding Specialist, Physician Office Based
246YR1600X	Technologists, Technicians & Other Technical Service Providers	Spec/Tech, Health Info	Registered Record Administrator
246Z00000X	Technologists, Technicians & Other Technical Service Providers	Specialist/Technologist, Other	\N
246ZA2600X	Technologists, Technicians & Other Technical Service Providers	Specialist/Technologist, Other	Art, Medical
246ZB0301X	Technologists, Technicians & Other Technical Service Providers	Specialist/Technologist, Other	Biomedical Engineering
246ZB0302X	Technologists, Technicians & Other Technical Service Providers	Specialist/Technologist, Other	Biomedical Photographer
246ZB0500X	Technologists, Technicians & Other Technical Service Providers	Specialist/Technologist, Other	Biochemist
246ZB0600X	Technologists, Technicians & Other Technical Service Providers	Specialist/Technologist, Other	Biostatistician
246ZC0007X	Technologists, Technicians & Other Technical Service Providers	Specialist/Technologist, Other	Surgical Assistant
246ZE0500X	Technologists, Technicians & Other Technical Service Providers	Specialist/Technologist, Other	EEG
246ZE0600X	Technologists, Technicians & Other Technical Service Providers	Specialist/Technologist, Other	Electroneurodiagnostic
246ZG0701X	Technologists, Technicians & Other Technical Service Providers	Specialist/Technologist, Other	Graphics Methods
246ZG1000X	Technologists, Technicians & Other Technical Service Providers	Specialist/Technologist, Other	Geneticist, Medical (PhD)
246ZI1000X	Technologists, Technicians & Other Technical Service Providers	Specialist/Technologist, Other	Illustration, Medical
246ZN0300X	Technologists, Technicians & Other Technical Service Providers	Specialist/Technologist, Other	Nephrology
246ZS0410X	Technologists, Technicians & Other Technical Service Providers	Specialist/Technologist, Other	Surgical Technologist
246ZX2200X	Technologists, Technicians & Other Technical Service Providers	Specialist/Technologist, Other	Orthopedic Assistant
247000000X	Technologists, Technicians & Other Technical Service Providers	Technician, Health Information	\N
2470A2800X	Technologists, Technicians & Other Technical Service Providers	Technician, Health Information	Assistant Record Technician
247100000X	Technologists, Technicians & Other Technical Service Providers	Radiologic Technologist	\N
2471B0102X	Technologists, Technicians & Other Technical Service Providers	Radiologic Technologist	Bone Densitometry
2471C1101X	Technologists, Technicians & Other Technical Service Providers	Radiologic Technologist	Cardiovascular-Interventional Technology
2471C1106X	Technologists, Technicians & Other Technical Service Providers	Radiologic Technologist	Cardiac-Interventional Technology
2471C3401X	Technologists, Technicians & Other Technical Service Providers	Radiologic Technologist	Computed Tomography
2471C3402X	Technologists, Technicians & Other Technical Service Providers	Radiologic Technologist	Radiography
2471M1202X	Technologists, Technicians & Other Technical Service Providers	Radiologic Technologist	Magnetic Resonance Imaging
2471M2300X	Technologists, Technicians & Other Technical Service Providers	Radiologic Technologist	Mammography
2471N0900X	Technologists, Technicians & Other Technical Service Providers	Radiologic Technologist	Nuclear Medicine Technology
2471Q0001X	Technologists, Technicians & Other Technical Service Providers	Radiologic Technologist	Quality Management
2471R0002X	Technologists, Technicians & Other Technical Service Providers	Radiologic Technologist	Radiation Therapy
2471S1302X	Technologists, Technicians & Other Technical Service Providers	Radiologic Technologist	Sonography
2471V0105X	Technologists, Technicians & Other Technical Service Providers	Radiologic Technologist	Vascular Sonography
2471V0106X	Technologists, Technicians & Other Technical Service Providers	Radiologic Technologist	Vascular-Interventional Technology
247200000X	Technologists, Technicians & Other Technical Service Providers	Technician, Other	\N
2472B0301X	Technologists, Technicians & Other Technical Service Providers	Technician, Other	Biomedical Engineering
2472D0500X	Technologists, Technicians & Other Technical Service Providers	Technician, Other	Darkroom
2472E0500X	Technologists, Technicians & Other Technical Service Providers	Technician, Other	EEG
2472R0900X	Technologists, Technicians & Other Technical Service Providers	Technician, Other	Renal Dialysis
2472V0600X	Technologists, Technicians & Other Technical Service Providers	Technician, Other	Veterinary
247ZC0005X	Technologists, Technicians & Other Technical Service Providers	Pathology	Clinical Laboratory Director, Non-physician
251300000X	Agencies	Local Education Agency (LEA)	\N
251B00000X	Agencies	Case Management	\N
251C00000X	Agencies	Day Training, Developmentally Disabled Services	\N
251E00000X	Agencies	Home Health	\N
251F00000X	Agencies	Home Infusion	\N
251G00000X	Agencies	Hospice Care, Community Based	\N
251J00000X	Agencies	Nursing Care	\N
251K00000X	Agencies	Public Health or Welfare	\N
251S00000X	Agencies	Community/Behavioral Health	\N
251T00000X	Agencies	PACE Provider Organization	\N
251V00000X	Agencies	Voluntary or Charitable	\N
251X00000X	Agencies	Supports Brokerage	\N
252Y00000X	Agencies	Early Intervention Provider Agency	\N
253J00000X	Agencies	Foster Care Agency	\N
253Z00000X	Agencies	In Home Supportive Care	\N
261Q00000X	Ambulatory Health Care Facilities	Clinic/Center	\N
261QA0005X	Ambulatory Health Care Facilities	Clinic/Center	Ambulatory Family Planning Facility
261QA0006X	Ambulatory Health Care Facilities	Clinic/Center	Ambulatory Fertility Facility
261QA0600X	Ambulatory Health Care Facilities	Clinic/Center	Adult Day Care
261QA0900X	Ambulatory Health Care Facilities	Clinic/Center	Amputee
261QA1903X	Ambulatory Health Care Facilities	Clinic/Center	Ambulatory Surgical
261QA3000X	Ambulatory Health Care Facilities	Clinic/Center	Augmentative Communication
261QB0400X	Ambulatory Health Care Facilities	Clinic/Center	Birthing
261QC0050X	Ambulatory Health Care Facilities	Clinic/Center	Critical Access Hospital
261QC1500X	Ambulatory Health Care Facilities	Clinic/Center	Community Health
261QC1800X	Ambulatory Health Care Facilities	Clinic/Center	Corporate Health
261QD0000X	Ambulatory Health Care Facilities	Clinic/Center	Dental
261QD1600X	Ambulatory Health Care Facilities	Clinic/Center	Developmental Disabilities
261QE0002X	Ambulatory Health Care Facilities	Clinic/Center	Emergency Care
261QE0700X	Ambulatory Health Care Facilities	Clinic/Center	End-Stage Renal Disease (ESRD) Treatment
261QF0400X	Ambulatory Health Care Facilities	Clinic/Center	Federally Qualified Health Center (FQHC)
261QG0250X	Ambulatory Health Care Facilities	Clinic/Center	Genetics
261QH0100X	Ambulatory Health Care Facilities	Clinic/Center	Health Service
261QH0700X	Ambulatory Health Care Facilities	Clinic/Center	Hearing and Speech
261QI0500X	Ambulatory Health Care Facilities	Clinic/Center	Infusion Therapy
261QL0400X	Ambulatory Health Care Facilities	Clinic/Center	Lithotripsy
261QM0801X	Ambulatory Health Care Facilities	Clinic/Center	Mental Health (Including Community Mental Health Center)
261QM0850X	Ambulatory Health Care Facilities	Clinic/Center	Adult Mental Health
261QM0855X	Ambulatory Health Care Facilities	Clinic/Center	Adolescent and Children Mental Health
261QM1000X	Ambulatory Health Care Facilities	Clinic/Center	Migrant Health
261QM1100X	Ambulatory Health Care Facilities	Clinic/Center	Military/U.S. Coast Guard Outpatient
261QM1101X	Ambulatory Health Care Facilities	Clinic/Center	Military and U.S. Coast Guard Ambulatory Procedure
261QM1102X	Ambulatory Health Care Facilities	Clinic/Center	Military Outpatient Operational (Transportable) Component
261QM1103X	Ambulatory Health Care Facilities	Clinic/Center	Military Ambulatory Procedure Visits Operational (Transportable)
261QM1200X	Ambulatory Health Care Facilities	Clinic/Center	Magnetic Resonance Imaging (MRI)
261QM1300X	Ambulatory Health Care Facilities	Clinic/Center	Multi-Specialty
261QM2500X	Ambulatory Health Care Facilities	Clinic/Center	Medical Specialty
261QM2800X	Ambulatory Health Care Facilities	Clinic/Center	Methadone Clinic
261QM3000X	Ambulatory Health Care Facilities	Clinic/Center	Medically Fragile Intants and Children Day Care
261QP0904X	Ambulatory Health Care Facilities	Clinic/Center	Public Health, Federal
261QP0905X	Ambulatory Health Care Facilities	Clinic/Center	Public Health, State or Local
261QP1100X	Ambulatory Health Care Facilities	Clinic/Center	Podiatric
261QP2000X	Ambulatory Health Care Facilities	Clinic/Center	Physical Therapy
261QP2300X	Ambulatory Health Care Facilities	Clinic/Center	Primary Care
261QP2400X	Ambulatory Health Care Facilities	Clinic/Center	Prison Health
261QP3300X	Ambulatory Health Care Facilities	Clinic/Center	Pain
261QR0200X	Ambulatory Health Care Facilities	Clinic/Center	Radiology
261QR0206X	Ambulatory Health Care Facilities	Clinic/Center	Radiology, Mammography
261QR0207X	Ambulatory Health Care Facilities	Clinic/Center	Radiology, Mobile Mammography
261QR0208X	Ambulatory Health Care Facilities	Clinic/Center	Radiology, Mobile
261QR0400X	Ambulatory Health Care Facilities	Clinic/Center	Rehabilitation
261QR0401X	Ambulatory Health Care Facilities	Clinic/Center	Rehabilitation, Comprehensive Outpatient Rehabilitation Facility (CORF)
261QR0404X	Ambulatory Health Care Facilities	Clinic/Center	Rehabilitation, Cardiac Facilities
261QR0405X	Ambulatory Health Care Facilities	Clinic/Center	Rehabilitation, Substance Use Disorder
261QR0800X	Ambulatory Health Care Facilities	Clinic/Center	Recovery Care
261QR1100X	Ambulatory Health Care Facilities	Clinic/Center	Research
261QR1300X	Ambulatory Health Care Facilities	Clinic/Center	Rural Health
261QS0112X	Ambulatory Health Care Facilities	Clinic/Center	Oral and Maxillofacial Surgery
261QS0132X	Ambulatory Health Care Facilities	Clinic/Center	Ophthalmologic Surgery
261QS1000X	Ambulatory Health Care Facilities	Clinic/Center	Student Health
261QS1200X	Ambulatory Health Care Facilities	Clinic/Center	Sleep Disorder Diagnostic
261QU0200X	Ambulatory Health Care Facilities	Clinic/Center	Urgent Care
261QV0200X	Ambulatory Health Care Facilities	Clinic/Center	VA
261QX0100X	Ambulatory Health Care Facilities	Clinic/Center	Occupational Medicine
261QX0200X	Ambulatory Health Care Facilities	Clinic/Center	Oncology
261QX0203X	Ambulatory Health Care Facilities	Clinic/Center	Oncology, Radiation
273100000X	Hospital Units	Epilepsy Unit	\N
273R00000X	Hospital Units	Psychiatric Unit	\N
273Y00000X	Hospital Units	Rehabilitation Unit	\N
275N00000X	Hospital Units	Medicare Defined Swing Bed Unit	\N
276400000X	Hospital Units	Rehabilitation, Substance Use Disorder Unit	\N
281P00000X	Hospitals	Chronic Disease Hospital	\N
281PC2000X	Hospitals	Chronic Disease Hospital	Children
282E00000X	Hospitals	Long Term Care Hospital	\N
282J00000X	Hospitals	Religious Nonmedical Health Care Institution	\N
282N00000X	Hospitals	General Acute Care Hospital	\N
282NC0060X	Hospitals	General Acute Care Hospital	Critical Access
282NC2000X	Hospitals	General Acute Care Hospital	Children
282NR1301X	Hospitals	General Acute Care Hospital	Rural
282NW0100X	Hospitals	General Acute Care Hospital	Women
283Q00000X	Hospitals	Psychiatric Hospital	\N
283X00000X	Hospitals	Rehabilitation Hospital	\N
283XC2000X	Hospitals	Rehabilitation Hospital	Children
284300000X	Hospitals	Special Hospital	\N
286500000X	Hospitals	Military Hospital	\N
2865C1500X	Hospitals	Military Hospital	Community Health
2865M2000X	Hospitals	Military Hospital	Military General Acute Care Hospital
2865X1600X	Hospitals	Military Hospital	Military General Acute Care Hospital. Operational (Transportable)
287300000X	Hospitals	Christian Science Sanitorium	\N
291900000X	Laboratories	Military Clinical Medical Laboratory	\N
291U00000X	Laboratories	Clinical Medical Laboratory	\N
292200000X	Laboratories	Dental Laboratory	\N
293D00000X	Laboratories	Physiological Laboratory	\N
302F00000X	Managed Care Organizations	Exclusive Provider Organization	\N
302R00000X	Managed Care Organizations	Health Maintenance Organization	\N
305R00000X	Managed Care Organizations	Preferred Provider Organization	\N
305S00000X	Managed Care Organizations	Point of Service	\N
310400000X	Nursing & Custodial Care Facilities	Assisted Living Facility	\N
3104A0625X	Nursing & Custodial Care Facilities	Assisted Living Facility	Assisted Living, Mental Illness
3104A0630X	Nursing & Custodial Care Facilities	Assisted Living Facility	Assisted Living, Behavioral Disturbances
310500000X	Nursing & Custodial Care Facilities	Intermediate Care Facility, Mental Illness	\N
311500000X	Nursing & Custodial Care Facilities	Alzheimer Center (Dementia Center)	\N
311Z00000X	Nursing & Custodial Care Facilities	Custodial Care Facility	\N
311ZA0620X	Nursing & Custodial Care Facilities	Custodial Care Facility	Adult Care Home
313M00000X	Nursing & Custodial Care Facilities	Nursing Facility/Intermediate Care Facility	\N
314000000X	Nursing & Custodial Care Facilities	Skilled Nursing Facility	\N
3140N1450X	Nursing & Custodial Care Facilities	Skilled Nursing Facility	Nursing Care, Pediatric
315D00000X	Nursing & Custodial Care Facilities	Hospice, Inpatient	\N
315P00000X	Nursing & Custodial Care Facilities	Intermediate Care Facility, Mentally Retarded	\N
317400000X	Nursing & Custodial Care Facilities	Christian Science Facility	\N
320600000X	Residential Treatment Facilities	Residential Treatment Facility, Mental Retardation and/or Developmental Disabilities	\N
320700000X	Residential Treatment Facilities	Residential Treatment Facility, Physical Disabilities	\N
320800000X	Residential Treatment Facilities	Community Based Residential Treatment Facility, Mental Illness	\N
320900000X	Residential Treatment Facilities	Community Based Residential Treatment, Mental Retardation and/or Developmental Disabilities	\N
322D00000X	Residential Treatment Facilities	Residential Treatment Facility, Emotionally Disturbed Children	\N
323P00000X	Residential Treatment Facilities	Psychiatric Residential Treatment Facility	\N
324500000X	Residential Treatment Facilities	Substance Abuse Rehabilitation Facility	\N
3245S0500X	Residential Treatment Facilities	Substance Abuse Rehabilitation Facility	Substance Abuse Treatment, Children
331L00000X	Suppliers	Blood Bank	\N
332000000X	Suppliers	Military/U.S. Coast Guard Pharmacy	\N
332100000X	Suppliers	Department of Veterans Affairs (VA) Pharmacy	\N
332800000X	Suppliers	Indian Health Service/Tribal/Urban Indian Health (I/T/U) Pharmacy	\N
332900000X	Suppliers	Non-Pharmacy Dispensing Site	\N
332B00000X	Suppliers	Durable Medical Equipment & Medical Supplies	\N
332BC3200X	Suppliers	Durable Medical Equipment & Medical Supplies	Customized Equipment
332BD1200X	Suppliers	Durable Medical Equipment & Medical Supplies	Dialysis Equipment & Supplies
332BN1400X	Suppliers	Durable Medical Equipment & Medical Supplies	Nursing Facility Supplies
332BP3500X	Suppliers	Durable Medical Equipment & Medical Supplies	Parenteral & Enteral Nutrition
332BX2000X	Suppliers	Durable Medical Equipment & Medical Supplies	Oxygen Equipment & Supplies
332G00000X	Suppliers	Eye Bank	\N
332H00000X	Suppliers	Eyewear Supplier (Equipment, not the service)	\N
332S00000X	Suppliers	Hearing  Aid Equipment	\N
332U00000X	Suppliers	Home Delivered Meals	\N
333300000X	Suppliers	Emergency Response System Companies	\N
333600000X	Suppliers	Pharmacy	\N
3336C0002X	Suppliers	Pharmacy	Clinic Pharmacy
3336C0003X	Suppliers	Pharmacy	Community/Retail Pharmacy
3336C0004X	Suppliers	Pharmacy	Compounding Pharmacy
3336H0001X	Suppliers	Pharmacy	Home Infusion Therapy Pharmacy
3336I0012X	Suppliers	Pharmacy	Institutional Pharmacy
3336L0003X	Suppliers	Pharmacy	Long Term Care Pharmacy
3336M0002X	Suppliers	Pharmacy	Mail Order Pharmacy
3336M0003X	Suppliers	Pharmacy	Managed Care Organization Pharmacy
3336N0007X	Suppliers	Pharmacy	Nuclear Pharmacy
3336S0011X	Suppliers	Pharmacy	Specialty Pharmacy
335E00000X	Suppliers	Prosthetic/Orthotic Supplier	\N
335G00000X	Suppliers	Medical Foods Supplier	\N
335U00000X	Suppliers	Organ Procurement Organization	\N
335V00000X	Suppliers	Portable X-Ray Supplier	\N
341600000X	Transportation Services	Ambulance	\N
3416A0800X	Transportation Services	Ambulance	Air Transport
3416L0300X	Transportation Services	Ambulance	Land Transport
3416S0300X	Transportation Services	Ambulance	Water Transport
341800000X	Transportation Services	Military/U.S. Coast Guard Transport	\N
3418M1110X	Transportation Services	Military/U.S. Coast Guard Transport	Military or U.S. Coast Guard Ambulance, Ground Transport
3418M1120X	Transportation Services	Military/U.S. Coast Guard Transport	Military or U.S. Coast Guard Ambulance, Air Transport
3418M1130X	Transportation Services	Military/U.S. Coast Guard Transport	Military or U.S. Coast Guard Ambulance, Water Transport
343800000X	Transportation Services	Secured Medical Transport (VAN)	\N
343900000X	Transportation Services	Non-emergency Medical Transport (VAN)	\N
344600000X	Transportation Services	Taxi	\N
344800000X	Transportation Services	Air Carrier	\N
347B00000X	Transportation Services	Bus	\N
347C00000X	Transportation Services	Private Vehicle	\N
347D00000X	Transportation Services	Train	\N
347E00000X	Transportation Services	Transportation Broker	\N
363A00000X	Physician Assistants & Advanced Practice Nursing Providers	Physician Assistant	\N
363AM0700X	Physician Assistants & Advanced Practice Nursing Providers	Physician Assistant	Medical
363AS0400X	Physician Assistants & Advanced Practice Nursing Providers	Physician Assistant	Surgical Technologist
363L00000X	Physician Assistants & Advanced Practice Nursing Providers	Nurse Practitioner	\N
363LA2100X	Physician Assistants & Advanced Practice Nursing Providers	Nurse Practitioner	Acute Care
363LA2200X	Physician Assistants & Advanced Practice Nursing Providers	Nurse Practitioner	Adult Health
363LC0200X	Physician Assistants & Advanced Practice Nursing Providers	Nurse Practitioner	Critical Care Medicine
363LC1500X	Physician Assistants & Advanced Practice Nursing Providers	Nurse Practitioner	Community Health
363LF0000X	Physician Assistants & Advanced Practice Nursing Providers	Nurse Practitioner	Family
363LG0600X	Physician Assistants & Advanced Practice Nursing Providers	Nurse Practitioner	Gerontology
363LN0000X	Physician Assistants & Advanced Practice Nursing Providers	Nurse Practitioner	Neonatal
363LN0005X	Physician Assistants & Advanced Practice Nursing Providers	Nurse Practitioner	Neonatal, Critical Care
363LP0200X	Physician Assistants & Advanced Practice Nursing Providers	Nurse Practitioner	Pediatrics
363LP0222X	Physician Assistants & Advanced Practice Nursing Providers	Nurse Practitioner	Pediatrics, Critical Care
363LP0808X	Physician Assistants & Advanced Practice Nursing Providers	Nurse Practitioner	Psych/Mental Health
363LP1700X	Physician Assistants & Advanced Practice Nursing Providers	Nurse Practitioner	Perinatal
363LP2300X	Physician Assistants & Advanced Practice Nursing Providers	Nurse Practitioner	Primary Care
363LS0200X	Physician Assistants & Advanced Practice Nursing Providers	Nurse Practitioner	School
363LW0102X	Physician Assistants & Advanced Practice Nursing Providers	Nurse Practitioner	Women's Health
363LX0001X	Physician Assistants & Advanced Practice Nursing Providers	Nurse Practitioner	Obstetrics & Gynecology
363LX0106X	Physician Assistants & Advanced Practice Nursing Providers	Nurse Practitioner	Occupational Health
364S00000X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	\N
364SA2100X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Acute Care
364SA2200X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Adult Health
364SC0200X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Critical Care Medicine
364SC1501X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Community Health/Public Health
364SC2300X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Chronic Care
364SE0003X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Emergency
364SE1400X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Ethics
364SF0001X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Family Health
364SG0600X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Gerontology
364SH0200X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Home Health
364SH1100X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Holistic
364SI0800X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Informatics
364SL0600X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Long-Term Care
364SM0705X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Medical-Surgical
364SN0000X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Neonatal
364SN0800X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Neuroscience
364SP0200X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Pediatrics
364SP0807X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Psych/Mental Health, Child & Adolescent
364SP0808X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Psych/Mental Health
364SP0809X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Psych/Mental Health, Adult
364SP0810X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Psych/Mental Health, Child & Family
364SP0811X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Psych/Mental Health, Chronically Ill
364SP0812X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Psych/Mental Health, Community
364SP0813X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Psych/Mental Health, Geropsychiatric
364SP1700X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Perinatal
364SP2800X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Perioperative
364SR0400X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Rehabilitation
364SS0200X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	School
364ST0500X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Transplantation
364SW0102X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Women's Health
364SX0106X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Occupational Health
364SX0200X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Oncology
364SX0204X	Physician Assistants & Advanced Practice Nursing Providers	Clinical Nurse Specialist	Oncology, Pediatrics
367500000X	Physician Assistants & Advanced Practice Nursing Providers	Nurse Anesthetist, Certified Registered	\N
367A00000X	Physician Assistants & Advanced Practice Nursing Providers	Advanced Practice Midwife	\N
367H00000X	Physician Assistants & Advanced Practice Nursing Providers	Anesthesiologist Assistant	\N
372500000X	Nursing Service Related Providers	Chore Provider	\N
372600000X	Nursing Service Related Providers	Adult Companion	\N
373H00000X	Nursing Service Related Providers	Day Training/Habilitation Specialist	\N
374700000X	Nursing Service Related Providers	Technician	\N
3747A0650X	Nursing Service Related Providers	Technician	Attendant Care Provider
3747P1801X	Nursing Service Related Providers	Technician	Personal Care Attendant
374J00000X	Nursing Service Related Providers	Doula	\N
374K00000X	Nursing Service Related Providers	Religious Nonmedical Practitioner	\N
374T00000X	Nursing Service Related Providers	Religious Nonmedical Nursing Personnel	\N
374U00000X	Nursing Service Related Providers	Home Health Aide	\N
376G00000X	Nursing Service Related Providers	Nursing Home Administrator	\N
376J00000X	Nursing Service Related Providers	Homemaker	\N
376K00000X	Nursing Service Related Providers	Nurse's Aide	\N
385H00000X	Respite Care Facility	Respite Care	\N
385HR2050X	Respite Care Facility	Respite Care	Respite Care Camp
385HR2055X	Respite Care Facility	Respite Care	Respite Care, Mental Illness, Child
385HR2060X	Respite Care Facility	Respite Care	Respite Care, Mental Retardation and/or Developmental Disabilities, Child
385HR2065X	Respite Care Facility	Respite Care	Respite Care, Physical Disabilities, Child
390200000X	Student, Health Care	Student in an Organized Health Care Education/Training Program	\N
\.


--
-- Data for Name: tb_RefProviderTaxonomy; Type: TABLE DATA; Schema: public; Owner: uhrninja
--

COPY "tb_RefProviderTaxonomy" ("providerId", "taxonomyCode") FROM stdin;
\.


--
-- Data for Name: tb_RefUserOrganization; Type: TABLE DATA; Schema: public; Owner: uhrninja
--

COPY "tb_RefUserOrganization" ("userId", "organizationId", "dateJoined", "dateLeft") FROM stdin;
\.


--
-- Name: user_pkey_sequence; Type: SEQUENCE SET; Schema: public; Owner: uhrninja
--

SELECT pg_catalog.setval('user_pkey_sequence', 1, false);


--
-- Name: usertype_pkey_sequence; Type: SEQUENCE SET; Schema: public; Owner: uhrninja
--

SELECT pg_catalog.setval('usertype_pkey_sequence', 3, true);
