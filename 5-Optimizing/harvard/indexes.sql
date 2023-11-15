CREATE INDEX idx_enrollments_student_id ON enrollments (student_id);

CREATE INDEX idx_enrollments_course_id ON enrollments (course_id);

CREATE INDEX idx_courses_department ON courses (department);

CREATE INDEX idx_courses_semester ON courses (semester);

CREATE INDEX idx_satisfies_course_id ON satisfies (course_id);

CREATE INDEX idx_satisfies_requirement_id ON satisfies (requirement_id);

CREATE INDEX idx_requirement_id ON requirements (id);
