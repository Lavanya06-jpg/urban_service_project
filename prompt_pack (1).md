
## Prompt 1: Weekly Ops Summary Email
**Prompt**:
"Act as a Service Operations Analyst at Urban Company. Draft a weekly executive performance update email based strictly on the following verified operational metrics:
- Overall Network Revenue: ₹10,47,973 across 600 completed bookings.
- Overall SLA Breach Rate: 13.2% (79 breaches).
- City Metrics:
  * Pune: ₹2,28,727 (Top revenue market)
  * Bengaluru: ₹1,79,835 (Lowest breach rate: 9.5%)
  * Chennai: ₹1,75,572
  * Hyderabad: ₹1,71,638
  * Mumbai: ₹1,51,430
  * Delhi NCR: ₹1,40,771 (Highest breach rate: 20.9%)
Structure requirements:
1. Clear subject line specifying the reporting cycle.
2. Opening executive summary sentence.
3. 3-4 bullet points detailing key city metrics.
4. 2 bullet points on operational highlights.
5. 2 bullet points outlining operational challenges with solution-oriented actions.
Maintain a crisp, professional tone between 200 and 300 words. Do not use informal phrasing."

## Prompt 2: Stakeholder Narrative Draft
**Prompt**:
"You are a BI reporting specialist at Urban Company. Using the Headline -> Evidence -> Implication structure, draft an operational diagnostic for the City Ops Lead regarding regional SLA breaches. Base the draft exclusively on these figures: 600 total bookings, 79 total breaches (13.2% network average), Delhi NCR at 20.9% breach rate (18 breaches / 86 bookings, ₹1,40,771 revenue), and Bengaluru at 9.5% breach rate (9 breaches / 95 bookings, ₹1,79,835 revenue). Keep the tone authoritative and managerial."

## Prompt 3: Complaint Triage Prompt
**Prompt**:
"Act as a customer-complaint triage assistant. Given a raw customer complaint description, extract exactly these four parameters into a YAML structured block:
- booking_amount_inr (integer)
- sla_breached (boolean: true if arrival was late/delayed, else false)
- partner_rating (float or null)
- primary_issue (concise description)

Input Complaint:
'I booked a deep cleaning service for ₹3,450. The partner arrived 55 minutes past the scheduled arrival window, and the service was unsatisfactory. Partner rating in app shows 3.8.'"

---
## Critic-and-Refine Pass (Prompt 1)

### First-Draft Prompt
"Write a summary email about our weekly Urban Company numbers showing revenue and SLA breaches across our cities."

### Assistant First Output
Dear Team,

The network recorded ₹10,47,973 in revenue across 600 completed bookings during the reporting cycle, with an overall SLA breach rate of 13.2%, representing 79 breaches.

**Key City Metrics**

* **Pune:** ₹2,28,727 in revenue, making it the top revenue market for the reporting cycle.
* **Bengaluru:** ₹1,79,835 in revenue and the lowest SLA breach rate at 9.5%.
* **Chennai:** ₹1,75,572 in revenue, maintaining a strong contribution to overall network performance.
* **Hyderabad:** ₹1,71,638 in revenue, while Mumbai and Delhi NCR recorded ₹1,51,430 and ₹1,40,771 respectively.

**Operational Highlights**

* Pune delivered the highest city-level revenue at ₹2,28,727, making it the leading revenue market during the cycle.
* Bengaluru recorded the lowest SLA breach rate at 9.5%, compared with the network-wide rate of 13.2%.

**Operational Challenges and Actions**

* **Delhi NCR** recorded the highest SLA breach rate at 20.9%. Operations should review the primary source of the breaches.
* The network recorded **79 SLA breaches** overall. City teams should continue tracking breach patterns.

Regards,
Service Operations Analyst.

### Critique Against Quality Criteria
-**Actionability**-The actions are too general: “review the primary sources,” “strengthen monitoring,” and “continue tracking” do not specify what exactly should be done, by whom, or what operational follow-up is expected.
 **Refined prompt**:
 Act as a Service Operations Analyst at Urban Company. Draft a weekly executive performance update email based strictly on the following verified operational metrics:

1. Overall Network Revenue: ₹10,47,973 across 600 completed bookings.
2.Overall SLA Breach Rate: 13.2% (79 breaches).
3.Pune: ₹2,28,727 (Top revenue market).
4.Bengaluru: ₹1,79,835 (Lowest breach rate: 9.5%).
5.Chennai: ₹1,75,572.
6.Hyderabad: ₹1,71,638.
7.Mumbai: ₹1,51,430.
8.Delhi NCR: ₹1,40,771 (Highest breach rate: 20.9%).

Structure requirements:

1. Include a clear subject line specifying the reporting cycle.
2. Begin with one concise executive summary sentence covering overall network performance.
3. Include 3–4 bullet points detailing key city metrics.
4. Include 2 bullet points highlighting positive operational performance.
5. Include 2 bullet points outlining operational challenges.

For each operational challenge, provide a **specific and actionable response**. Each action should clearly state:

1. the operational issue being addressed,
2.the concrete action to be taken,
3.the responsible operational team or stakeholder where appropriate, and
4.the expected operational focus or follow-up.

Do not use vague phrases such as “improve performance,” “monitor closely,” “take necessary action,” or “strengthen operations” without explaining the specific action.

Maintain a crisp, professional executive tone and keep the email between **200 and 300 words**.

Use only the verified metrics provided above. Do not invent additional numbers, causes, targets, deadlines, or operational facts that are not supported by the provided information.
 
 **Refined prompt output**

 Dear Team,

The network generated ₹10,47,973 in revenue across 600 completed bookings during the reporting cycle, with an overall SLA breach rate of 13.2%, representing 79 breaches.

**Key City Metrics**

* **Pune:** ₹2,28,727 in revenue, making it the top revenue market.
* **Bengaluru:** ₹1,79,835 in revenue and the lowest SLA breach rate at 9.5%.
* **Chennai:** ₹1,75,572 in revenue, while **Hyderabad** recorded ₹1,71,638.
* **Mumbai:** ₹1,51,430 in revenue, and **Delhi NCR:** ₹1,40,771 with the highest SLA breach rate at 20.9%.

**Operational Highlights**

* Pune led city-level revenue performance with ₹2,28,727 during the reporting cycle.
* Bengaluru recorded the lowest SLA breach rate at 9.5%, below the network-wide rate of 13.2%.

**Operational Challenges and Actions**

* **Delhi NCR’s 20.9% SLA breach rate** is the highest among the reported cities. The **Delhi NCR operations team** should review the recorded SLA breaches and identify recurring breach patterns, with follow-up focused on addressing those identified operational gaps.
* The network recorded **79 SLA breaches** overall. **City operations teams** should review their respective breach records, identify locations or operating areas requiring attention, and use the findings to guide corrective operational follow-up in the next reporting cycle.

Regards,
Service Operations Analyst

