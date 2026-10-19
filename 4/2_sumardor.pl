% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here
% Acumulador de numeros
sumar :-
    sum(0).
sum(Acumulado) :-
    write('Ingrese un numero y 0 para terminar '),
    read(Num),
    (
        Num =:= 0 ->
        write('Total: '),
        write(Acumulado),
        nl
    ;
        NueAcumulado is Acumulado + Num,
        sum(NueAcumulado)
    ).
