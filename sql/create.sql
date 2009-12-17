DROP TABLE LU_PRODUCTOR;

DROP TABLE LU_AGENTE;

DROP TABLE LU_PROVINCIA;

DROP TABLE LU_LOCALIDAD;

DROP TABLE LU_ZONA_RIESGO;

DROP TABLE LU_CANAL;

DROP TABLE LU_SEGMENTO;

DROP TABLE LU_TRIMESTRE;

DROP TABLE LU_MONTH;

DROP TABLE LU_DATE;

DROP TABLE LU_MODELO;

DROP TABLE LU_TIPO;

DROP TABLE LU_FLOTA;

DROP TABLE LU_VEHICULO;

DROP TABLE LU_ITEM;

DROP TABLE LU_CLIENTE;

DROP TABLE BT_PAGO;

DROP TABLE BT_SINIESTRO;

CREATE TABLE LU_PRODUCTOR
(
  PRODUCTOR_ID INTEGER
, PRODUCTOR_NOMBRE TEXT
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
;

CREATE TABLE LU_PROVINCIA
(
  PROVINCIA_ID LONG
, PROVINCIA_NOMBRE TEXT(30)
)
;

CREATE TABLE LU_LOCALIDAD
(
  LOCALIDAD_ID LONG
, PROVINCIA_ID LONG
, LOCALIDAD_NOMBRE TEXT(30)
)
;

CREATE TABLE LU_ZONA_RIESGO
(
LOCALIDAD_ID LONG
, ZONA_RIEGO_DESC DOUBLE
)
;

CREATE TABLE LU_CANAL
(
  CANAL_ID LONG
, CANAL_NOMBRE TEXT(255)
)
;

CREATE TABLE LU_SEGMENTO
(
  SEGMENTO_ID INTEGER
, SEGMENTO_NOMBRE TEXT(255)
, CANAL_ID LONG
)
;

CREATE TABLE LU_TRIMESTRE
(
  TRIMESTRE_ID INTEGER
, TRIMESTRE INTEGER
, YEAR_ID INTEGER
)
;

CREATE TABLE LU_MONTH
(
  MONTH_ID INTEGER
, TRIMESTRE_ID LONG
, MONTH_NUM INTEGER
, MONTH_STR TEXT
)
;

CREATE TABLE LU_DATE
(
  DAY_ID LONG
, MONTH_ID LONG
, DAY_NUM INTEGER
, DAY_DATE DATETIME
)
;

CREATE TABLE LU_MODELO
(
  MODELO_ID TEXT
, MARCA TEXT(255)
, MODELO TEXT
)
;

CREATE TABLE LU_TIPO
(
  TIPO_ID INTEGER
, TIPO TEXT(255)
)
;

CREATE TABLE LU_FLOTA
(
  FLOTA_ID LONG
, FLOTA_REF TEXT(1)
, FLOTA_UEN TEXT(1)
, SEGMENTO_ID DOUBLE
, FLOTA_OFI TEXT(2)
, AGENTE_ID LONG
, DAY_ID LONG
)
;

CREATE TABLE LU_VEHICULO
(
  VEHICULO_ID TEXT
, YEAR_ID INTEGER
, MODELO_ID TEXT
, TIPO_ID INTEGER
)
;

CREATE TABLE LU_ITEM
(
  VEHICULO_ID TEXT(255)
, FLOTA_ID LONG
, ITEM_ID TEXT(255)
, ITEM_PQTE TEXT(50)
, ITEM_SUMACA LONG
, ITEM_USO TEXT(30)
, ITEM_SUMAINFO LONG
, ITEM_DIAS INTEGER
, ITEM_PRIMARC DOUBLE
, ITEM_PRIMACA DOUBLE
, ITEM_PRIMA DOUBLE
, ITEM_DEEMI DOUBLE
, ITEM_RCADM DOUBLE
, ITEM_RCFIN DOUBLE
, ITEM_BONIF DOUBLE
, ITEM_PREMIO DOUBLE
)
;

CREATE TABLE LU_CLIENTE
(
  CLIENTE_ID LONG
, CLIENTE_CP INTEGER
, CLIENTE_EDAD INTEGER
, CLIENTE_SEXO TEXT(1)
, CLIENTE_ESTCIVIL TEXT(30)
, LOCALIDAD_ID LONG
, FLOTA_ID DOUBLE
)
;

CREATE TABLE BT_PAGO
(
  ITEM_ID TEXT
, PAGO_IMPORTE DOUBLE
, PAGO_FECHA LONG
)
;

CREATE TABLE BT_SINIESTRO
(
  ITEM_ID TEXT
, SINIESTRO_CNSTR INTEGER
, SINIESTRO_MTSTR LONG
)
;
