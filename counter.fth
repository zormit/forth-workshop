: COUNTER ( "name" -- ) CREATE 0 , DOES> DUP 1 SWAP +! @ ;
COUNTER TC
: COUNTTOTEN
    10 0 DO
        CR TC .
    LOOP ;
COUNTTOTEN CR
