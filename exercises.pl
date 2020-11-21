p(edward7, george5) :-
p(victoria, edward7) :-
p(alexandria, george5) :-
p(george6, elizabeth2) :-
p(george5, george6) :-
g(X, Y) :- p(X, Z), p(Z,Y).

:- g(victoria, george5).

:- p(victoria, edward7), p(edward7, george5).

:- g(victoria, X).

likes(john, mary).
likes (mary, sue).
likes(mary, tom).
likes(mary, X).

f(x) = if x=0 then 1 else 5.

f(0,1).
f(X, 5) :- X>0.

g(x) = 2*x.
g(X,Y) :- Y is 2*X.

speaks(allen, russian).
speaks(bob, english).
speaks(mary, russian).
speaks(mary, english).
talkswith(Person1, Person2) :-speaks(Person1, L),
speak(Person2, L), Person1 \= Person2.

fact(n) = if n=0 then 1 else n*fact(n-1).

factorial(0,1).
factorial(N, Result) :- N>0, M is N-1, factorial (M, SubResult), Result is N*SubResult.

fib(n) = if n=0 then 1 else if n=1 then 1 else fib(n-1)+fib(n-2).

fib(0,1).
fib(1,1).
fib(N,R) :- N>1, N1 is N-1, N2 is N-2, fib(N1, R1), fib(N2, R2), R is R1+R2.

trace(p/2).
trace, p/2.

trace(factorial/2).

talkswith(bob, allen).

talkswith(Who, allen).

member(X, [X|_]).
member(X, [_|Y]) :- member(X,Y).

append([], X,X).
append1([H|T],Y,[H|Z]) :- append1(T, Y, Z).

f(x) = if x=0 then 1 else 5.
f(0,1).
f(X,5) :- X>0.
f(0,1) :- !.
f(X,5) :- .

bsort(L,S) :- append(U, [A,B|V], L), B<A, !, append(U,[B,A|V], M), bsort(M,S).
bsort(L,L).
