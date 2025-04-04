parent(queen_elizabeth, prince_charles).
parent(queen_elizabeth, princess_ann).
parent(queen_elizabeth, prince_andrew).
parent(queen_elizabeth, prince_edward).

older(prince_charles, princess_ann).
older(princess_ann, prince_andrew).
older(prince_andrew, prince_edward).

successor(X) :- parent(queen_elizabeth, X).
successor(X) :- parent(Y, X), successor(Y), older(Y, Z), parent(Z, Y).