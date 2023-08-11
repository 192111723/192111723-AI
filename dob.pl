% Facts: Name, DOB
person(john, date(1990, 5, 15)).
person(susan, date(1985, 9, 10)).
person(david, date(1995, 2, 25)).
person(lisa, date(1980, 7, 4)).

% Rules
is_older(Person1, Person2) :-
    person(Person1, date(Year1, Month1, Day1)),
    person(Person2, date(Year2, Month2, Day2)),
    (Year1 < Year2; (Year1 = Year2, Month1 < Month2); (Year1 = Year2, Month1 = Month2, Day1 < Day2)).

% Queries
% To find a person's date of birth:
% ?- person(john, DOB).

% To find all people born before a certain date:
% ?- is_older(Person, susan).

% To find all people and their dates of birth:
% ?- person(Name, DOB).
