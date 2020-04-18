payment(F, L, P) :- commission(F, L, Min, Sales, Crate),
                    Sales*Crate > Min,
                    P is Sales*Crate.
payment(F, L, P) :- commission(F, L, Min, Sales, Crate),
                    Sales*Crate =< Min,
                    P is Min.
payment(F, L, P) :- salaried(F, L, Wage),
	P is Wage.
payment(F, L, P) :- hourly(F, L, Hours, Rate),
  Hours =< 40,
  P is Hours*Rate.
payment(F, L, P) :- hourly(F, L, Hours, Rate),
  Hours =< 50, Hours>40,
  P is 40*Rate + (Hours-40)*Rate*1.5.
payment(F, L, P) :- hourly(F, L, Hours, Rate),
  Hours > 50,
  P is 40*Rate + 15*Rate + 2*Rate*(Hours-50).
