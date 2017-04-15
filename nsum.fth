: INC ( n -- n+1 ) 1 + ;
: HALF ( n -- n/2 ) 2 / ;
: NSUM ( n -- sum )
    INC
    1 0 -ROT \ 0 n+1 1
    DO I + LOOP ;
: SMARTNSUM ( n -- sum ) DUP INC * HALF ;
