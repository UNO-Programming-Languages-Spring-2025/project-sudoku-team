% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

#const n = 2.

sudoku(X,Y,Z) :- initial(X,Y,Z).

{ sudoku(X,Y,1..n*n) } == 1 :- X = 1..n*n, Y = 1..n*n.

:- sudoku(X,Y1,Z), sudoku(X,Y2,Z), Y1 != Y2.

:- sudoku(X1,Y,Z), sudoku(X2,Y,Z), X1 != X2.

subgrid(X,Y, 1+(((X-1)/n)*n+(Y-1)/n)) :- X = 1..n*n, Y = 1..n*n.

% Show grid
#show sudoku/3.
