% Define students
student(john).
student(sarah).
student(alex).

% Define teachers
teacher(ms_smith).
teacher(mr_jones).
teacher(mrs_wilson).

% Define subjects with their codes
subject(math, 101).
subject(english, 102).
subject(history, 103).

% Define relationships between students, teachers, and subjects
teaches(ms_smith, math).
teaches(mr_jones, english).
teaches(mrs_wilson, history).

% Define student-subject enrollment
enrolled(john, math).
enrolled(sarah, english).
enrolled(alex, history).

% Define rules to find student-teacher-subject combinations
student_teacher_subject(Student, Teacher, Subject) :-
    student(Student),
    teacher(Teacher),
    teaches(Teacher, Subject),
    enrolled(Student, Subject).

% Example queries
% Find all student-teacher-subject combinations
% student_teacher_subject(Student, Teacher, Subject).

% Find the teacher for a specific student and subject
% student_teacher_subject(john, Teacher, math).
