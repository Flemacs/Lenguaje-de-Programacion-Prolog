% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here
% potencia maximp
potencia_max(N, Base, 0) :-
    N mod Base =\= 0.
potencia_max(N, Base, Expo) :-
    N mod Base =:= 0,
    N1 is N // Base,
    potencia_max(N1, Base, E1),
    Expo is E1 + 1.