CREATE TABLE dummy_entity
(
    id_Prop          BIGINT GENERATED BY DEFAULT AS IDENTITY ( START WITH 1 ) PRIMARY KEY,
    NAME             VARCHAR(100),
    POINT_IN_TIME    TIMESTAMP,
    OFFSET_DATE_TIME TIMESTAMP WITH TIME ZONE,
    FLAG             BOOLEAN,
    REF              BIGINT,
    DIRECTION        VARCHAR(100)
);

CREATE TABLE ROOT
(
    ID   BIGINT GENERATED BY DEFAULT AS IDENTITY ( START WITH 1 ) PRIMARY KEY,
    NAME VARCHAR(100)
);

CREATE TABLE INTERMEDIATE
(
    ID       BIGINT GENERATED BY DEFAULT AS IDENTITY ( START WITH 1 ) PRIMARY KEY,
    NAME     VARCHAR(100),
    ROOT     BIGINT,
    ROOT_ID  BIGINT,
    ROOT_KEY INTEGER
);

CREATE TABLE LEAF
(
    ID               BIGINT GENERATED BY DEFAULT AS IDENTITY ( START WITH 1 ) PRIMARY KEY,
    NAME             VARCHAR(100),
    INTERMEDIATE     BIGINT,
    INTERMEDIATE_ID  BIGINT,
    INTERMEDIATE_KEY INTEGER
);
