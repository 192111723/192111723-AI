% Move a single disk from one peg to another
move(1, Source, Target, _) :-
    write('Move disk 1 from '),
    write(Source),
    write(' to '),
    write(Target),
    nl.

% Move N disks from Source to Target using Spare as the spare peg
move(N, Source, Target, Spare) :-
    N > 1,
    M is N - 1,
    move(M, Source, Spare, Target),
    move(1, Source, Target, _),
    move(M, Spare, Target, Source).

% Predicate to start the Towers of Hanoi
towers_of_hanoi(N) :-
    move(N, 'Peg A', 'Peg C', 'Peg B').

% Example usage: towers_of_hanoi(3).
