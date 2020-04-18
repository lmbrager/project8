max(Op, Ref, Max) :- (
	Op='eq', findall(Z, (payment(X, Y, Z), Z=:=Ref), List);
	Op='ne', findall(Z, (payment(X, Y, Z), Z=\=Ref), List);
	Op='gt', findall(Z, (payment(X, Y, Z), Z>Ref), List);
	Op='ge', findall(Z, (payment(X, Y, Z), Z>=Ref), List);
	Op='lt', findall(Z, (payment(X, Y, Z), Z<Ref), List);
	Op='le', findall(Z, (payment(X, Y, Z), Z=<Ref), List)
),
max_list(List, Max).

min(Op, Ref, Min) :- (
	Op='eq', findall(Z, (payment(X, Y, Z), Z=:=Ref), List);
	Op='ne', findall(Z, (payment(X, Y, Z), Z=\=Ref), List);
	Op='gt', findall(Z, (payment(X, Y, Z), Z>Ref), List);
	Op='ge', findall(Z, (payment(X, Y, Z), Z>=Ref), List);
	Op='lt', findall(Z, (payment(X, Y, Z), Z<Ref), List);
	Op='le', findall(Z, (payment(X, Y, Z), Z=<Ref), List)
),
min_list(List, Min).

total(Op, Ref, Sum) :- (
	Op='eq', findall(Z, (payment(X, Y, Z), Z=:=Ref), List);
	Op='ne', findall(Z, (payment(X, Y, Z), Z=\=Ref), List);
	Op='gt', findall(Z, (payment(X, Y, Z), Z>Ref), List);
	Op='ge', findall(Z, (payment(X, Y, Z), Z>=Ref), List);
	Op='lt', findall(Z, (payment(X, Y, Z), Z<Ref), List);
	Op='le', findall(Z, (payment(X, Y, Z), Z=<Ref), List)
),
sum_list(List, Sum).

avg(Op, Ref, Avg) :- (
	total(Op, Ref, Sum),
	count(Op, Ref, Count),
	Count > 0 -> Avg is Sum/Count
	; Avg is 0
).

list(Op,Ref,List) :- (
	Op='eq', findall([X, Y, Z], (payment(X, Y, Z), Z=:=Ref), List);
	Op='ne', findall([X, Y, Z], (payment(X, Y, Z), Z=\=Ref), List);
	Op='gt', findall([X, Y, Z], (payment(X, Y, Z), Z>Ref), List);
	Op='ge', findall([X, Y, Z], (payment(X, Y, Z), Z>=Ref), List);
	Op='lt', findall([X, Y, Z], (payment(X, Y, Z), Z<Ref), List);
	Op='le', findall([X, Y, Z], (payment(X, Y, Z), Z=<Ref), List)
).

count(Op, Ref, Count) :- (
	Op='eq', findall(Z, (payment(X, Y, Z), Z=:=Ref), List),  length(List, Count);
	Op='ne', findall(Z, (payment(X, Y, Z), Z=\=Ref), List),  length(List, Count);
	Op='gt', findall(Z, (payment(X, Y, Z), Z>Ref), List),  length(List, Count);
	Op='ge', findall(Z, (payment(X, Y, Z), Z>=Ref), List),  length(List, Count);
	Op='lt', findall(Z, (payment(X, Y, Z), Z<Ref), List),  length(List, Count);
	Op='le', findall(Z, (payment(X, Y, Z), Z=<Ref), List),  length(List, Count)
          ).
