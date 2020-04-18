max(Op, Ref, Max) :- (
                Op='eq', findall(Z, (payment(X, Y, Z), Z=:=Ref), List);
                Op='ne', findall(Z, (payment(X, Y, Z), Z=\=Ref), List);
                Op='gt', findall(Z, (payment(X, Y, Z), Z>Ref), List);
                Op='ge', findall(Z, (payment(X, Y, Z), Z>=Ref), List);
                Op='lt', findall(Z, (payment(X, Y, Z), Z<Ref), List);
                Op='le', findall(Z, (payment(X, Y, Z), Z=<Ref), List)
),
max_list(List, Max).

count(Op, Ref, Count) :- (
                Op='eq', findall(Z, (payment(X, Y, Z), Z=:=Ref), List),  length(List, Count);
                Op='ne', findall(Z, (payment(X, Y, Z), Z=\=Ref), List),  length(List, Count);
                Op='gt', findall(Z, (payment(X, Y, Z), Z>Ref), List),  length(List, Count);
                Op='ge', findall(Z, (payment(X, Y, Z), Z>=Ref), List),  length(List, Count);
                Op='lt', findall(Z, (payment(X, Y, Z), Z<Ref), List),  length(List, Count);
                Op='le', findall(Z, (payment(X, Y, Z), Z=<Ref), List),  length(List, Count)
                ).
