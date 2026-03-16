CREATE TABLE raw_powerlifting (
    date DATE NOT NULL,
    name TEXT,
    sex TEXT,
    event TEXT,
    equipment TEXT,
    age INTEGER,
    bodyweightlbs NUMERIC(6,2),
    squatlbs NUMERIC(6,2),
    benchlbs NUMERIC(6,2),
    deadliftlbs NUMERIC(6,2),
    totallbs NUMERIC(6,2),
    place INTEGER,
    weightclasslbs TEXT
);