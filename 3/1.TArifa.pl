% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here
%tarifa de estacionamiento
cal_tarifa(Horas, TipoVehi, Total) :-
    ( TipoVehi = moto ->
        Total is Horas * 2
    ; TipoVehi = auto ->
        ( Horas =< 3 ->
            Total is Horas * 4
        ;
            Extra is Horas - 3,
            Total is (3 * 4) + (Extra * 7)
        )
    ).