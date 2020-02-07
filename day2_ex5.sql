CREATE TABLE MATCH(
                   MId Integer PRIMARY KEY,
                   TId Integer REFERENCES Tournament(TId),
                   Player1 Integer REFERENCES Player(PId),
                   Player2 Integer REFERENCES Player(PId),
                   MatchDt Date NOT NULL, 
                   Winner Integer REFERENCES Player(PId),
                   Score Varchar2(30) NOT NULL
                   CONSTRAINT playr_name_ck CHECK(Player1<>Player2)
                   );
                   
