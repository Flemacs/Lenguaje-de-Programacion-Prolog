% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here
empleado(juan, gestion, 6).
empleado(maria, desarrollo, 5).
empleado(pedro, desarrollo, 2).
empleado(ana, diseno, 4).
empleado(luis, gestion, 3).

%senior si tiene 5 o mas
senior(Emp) :-
    empleado(Emp, _, Exp),
    Exp >= 5.
%puede ser lider de proyecto
lider_pro(Emp) :-
    senior(Emp),
    empleado(Emp, gestion, _).

%empleados compatibles
compatibles(E1, E2) :-
    empleado(E1, Hab1, _),
    empleado(E2, Hab2, _),
    P1 \= P2,
    Hab1 \= Hab2.

% Equipo minimo:
equipo_min(Lider, Desarrollador) :-
    lider_pro(Lider),
    empleado(Desarrollador, desarrollo, _),
    compatibles(Lider, Desarrollador).