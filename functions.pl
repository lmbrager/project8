list(Op, Ref, List) :- (
	Op='eq', findall([X,Y,Z],(payment(X,Y,Z),Z=:=Ref),List);
	Op='ne', findall([X,Y,Z],(payment(X,Y,Z),Z=\=Ref),List);
	Op='gt', findall([X,Y,Z],(payment(X,Y,Z),Z>Ref),List);
	Op='ge', findall([X,Y,Z],(payment(X,Y,Z),Z>=Ref),List);
	Op='lt', findall([X,Y,Z],(payment(X,Y,Z),Z<Ref),List);
	Op='le', findall([X,Y,Z],(payment(X,Y,Z),Z=<Ref),List)
).

count(Op, Ref, Count) :- (
	Op='eq', findall(Z, (payment(X, Y, Z),Z=:=Ref), List), length(List, Count);
	Op='ne', findall(Z, (payment(X, Y, Z),Z=\=Ref), List), length(List, Count);
	Op='gt', findall(Z, (payment(X, Y, Z),Z>Ref), List), length(List, Count);
	Op='ge', findall(Z, (payment(X, Y, Z),Z>=Ref), List), length(List, Count);
	Op='lt', findall(Z, (payment(X, Y, Z),Z<Ref), List), length(List, Count);
	Op='le', findall(Z, (payment(X, Y, Z),Z=<Ref), List), length(List, Count)
).
