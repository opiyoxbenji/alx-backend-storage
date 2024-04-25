-- Creates a view need_meeting
CREATE VIEW need_meeting AS
SELECT name
FROM students s
WHERE score < 80
AND NOT EXISTS (
	SELECT 1
	FROM meetings M
	WHERE m.student_id = s.id
	AND m.meeting_data > DATE_SUB(NOW(), INTERVAL 1 MONTH)
);
