payment(F, L, P) :- commission(F, L, Min, Sales, Crate),
                    Sales*Crate > Min,
                    P is Sales*Crate.
payment(F, L, P) :- commission(F, L, Min, Sales, Crate),
                    Sales*Crate =< Min,
                    P is Min.
%payment(First, Last, Pay) :- salaried(F, L, Wage),
%	P is Wage.
%payment(First, Last, Pay) :- hourly(F, L, Hours, Rate),
%	P is Hours*Rate.
