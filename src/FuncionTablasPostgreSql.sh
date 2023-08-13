  #!/bin/bash

  function CrearDBBioSql ()
  {
    PGPASSWORD=dbpostgres psql -U postgres -h localhost -p 5432 -c "DROP DATABASE dbbio;"
    PGPASSWORD=dbpostgres psql -U postgres -h localhost -p 5432 -c "CREATE DATABASE dbbio WITH OWNER = postgres ENCODING = 'UTF8' TABLESPACE = pg_default LC_COLLATE = 'es_CL.UTF-8' LC_CTYPE = 'es_CL.UTF-8' CONNECTION LIMIT = -1;"
    PGPASSWORD=dbpostgres psql -U postgres -h localhost -p 5432 -d dbbio -c "CREATE SCHEMA bio AUTHORIZATION postgres;"
  }
  export -f CrearDBBioSql

  function CrearTablaClusterSql ()
  {
    PGPASSWORD=dbpostgres psql -U postgres -h localhost -p 5432 -d dbbio -c "DROP TABLE IF EXISTS bio.${1}; CREATE TABLE bio.${1} ( id int , cluster int , PRIMARY KEY( id ) );"
  }
  export -f CrearTablaClusterSql

  function CrearTablaCoordSql ()
  {
    PGPASSWORD=dbpostgres psql -U postgres -h localhost -p 5432 -d dbbio -c "DROP TABLE IF EXISTS bio.${1}; CREATE TABLE bio.${1} ( id int , lat float , lon float , PRIMARY KEY( id ) );"
  }
  export -f CrearTablaCoordSql

  function CrearTablaClustSql ()
  {
    PGPASSWORD=dbpostgres psql -U postgres -h localhost -p 5432 -d dbbio -c "DROP TABLE IF EXISTS bio.${1}; CREATE TABLE bio.${1} ( id int , lat float , lon float , cluster int , PRIMARY KEY( id ) );"
  }
  export -f CrearTablaClustSql

  function ImportarDatosSql ()
  {
    PGPASSWORD=dbpostgres psql -U postgres -h localhost -p 5432 -d dbbio -c "\COPY bio.${1} FROM '${2}' DELIMITER ',' CSV;"
  }
  export -f ImportarDatosSql

  function ExportarDatosSql ()
  {
   #PGPASSWORD=dbpostgres psql -U postgres -h localhost -p 5432 -d dbbio -c "\COPY bio.${1} TO '${2}' DELIMITER ',' CSV;"
    PGPASSWORD=dbpostgres psql2csv --no-header -U postgres -h localhost -p 5432 -d dbbio "SELECT * FROM bio.${1} ORDER BY bio.${1}.id" > ${2}
  }
  export -f ExportarDatosSql

  function IntersectarTablasSql ()
  {
    PGPASSWORD=dbpostgres psql -U postgres -h localhost -p 5432 -d dbbio -c "INSERT INTO bio.${3}
    SELECT a.* , b.cluster FROM bio.${1} a
    LEFT OUTER JOIN bio.${2} b ON ( a.id = b.id )                                   ;"
  }
  export -f IntersectarTablasSql
