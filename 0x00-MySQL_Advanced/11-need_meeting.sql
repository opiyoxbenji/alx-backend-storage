-- Creates a view need_meeting
CREATE VIEW need_meeting AS
SELECT s.name
FROM students s
LEFT JOIN meetings m ON s.id = m.student_id AND m.meeting_date > DATE_SUB(NOW(), INTERVAL 1 MONTH)
WHERE s.score < 80 AND m.meeting_id IS NULL;
