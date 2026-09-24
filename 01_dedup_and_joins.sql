
-- (a) List every duplicated partner_id
SELECT partner_id, COUNT(*) AS duplicate_count
FROM partners_import
GROUP BY partner_id
HAVING COUNT(*) > 1;


-- (b) Create a clean partners table by removing exact duplicate rows
CREATE TABLE partners AS
SELECT
    partner_id,
    city,
    primary_category,
    rating,
    active,
    days_since_onboarding
FROM partners_import
GROUP BY
    partner_id,
    city,
    primary_category,
    rating,
    active,
    days_since_onboarding;


-- (a) INNER JOIN: Confirm every booking resolves to a real partner
SELECT b.booking_id, b.partner_id
FROM bookings b
INNER JOIN partners p
    ON b.partner_id = p.partner_id;


-- (b) LEFT JOIN: Find any category that has never received a booking
SELECT c.category
FROM categories c
LEFT JOIN bookings b
    ON c.category = b.category
WHERE b.booking_id IS NULL;


-- (c) LEFT JOIN: Find any partner that has never received a booking
SELECT p.partner_id
FROM partners p
LEFT JOIN bookings b
    ON p.partner_id = b.partner_id
WHERE b.booking_id IS NULL;


-- (d) LEFT JOIN: Compare COUNT(*) and COUNT(b.booking_id) for each category
SELECT
    c.category,
    COUNT(*) AS total_joined_rows,
    COUNT(b.booking_id) AS booking_count
FROM categories c
LEFT JOIN bookings b
    ON c.category = b.category
GROUP BY c.category;

-- For the zero-booking category, COUNT(*) counts the joined row itself,
-- including the all-NULL unmatched row, while COUNT(b.booking_id)
-- only counts rows where a real booking matched.
