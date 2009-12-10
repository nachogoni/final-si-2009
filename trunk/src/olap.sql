CREATE TABLE LU_PRODUCTOR
(
  PRODUCTOR_ID INTEGER
, PRODUCTOR_NOMBRE TEXT
)
;CREATE INDEX idx_LU_PRODUCTOR_lookup
 ON LU_PRODUCTOR
( 
  PRODUCTOR_ID
)
;


CREATE TABLE LU_AGENTE
(
  AGENTE_ID INTEGER
, PRODUCTOR_ID INTEGER
, AGENTE_NOMBRE TEXT(255)
, AGENTE_ESTADO TEXT(1)
, AGENTE_FECHA_ALTA LONG
)
;CREATE INDEX idx_LU_AGENTE_lookup
 ON LU_AGENTE
( 
  AGENTE_ID
)
;

CREATE TABLE LU_PROVINCIA
(
  PROVINCIA_ID LONG
, PROVINCIA_NOMBRE TEXT(30)
)
;CREATE INDEX idx_LU_PROVINCIA_lookup
 ON LU_PROVINCIA
( 
  PROVINCIA_ID
)
;
