--Esto solo lo deja a modo informativo, buscar info para ver de que va



/*
Es una secuencia de operaciones que ejecutan como una sola unidad logica de trabajo, estas operaciones pueden 
incluir consultas de lectura y escritura, y otras operaciones de gestion de datos. Debe cumplir con el concepto ACID
para garantizar la integridad de los datos, estos es:

--ATOMICIDAD: 
Todas las operaciones dentro de una transaccion se realizn completamente o ninguna se realiza. Si una operacion 
dentro de la transaccion falla, se deshacen todas las operaciones reazadas previamente.

--CONSISTENCIA:
Una transaccion lleva el sistema de un estado valido a otro estado valido. Las restricciones de integridad se mantienen 
antes y despues de la transaccion.

--AISLAMIENTO:
Las modificaciones realizadas por una transaccion son invisibles para otras transacciones hasta que se completen.
Esto asegura que el resultado de una transaccion sea consistente incluso si se ejecuta simultaneamente con otras
transacciones.

--DURABILIDAD:
Una vez que una transaccion se ha comletado con exito, los cambios realizados por esa transaccion persisten incluso
en caso de fallo del sistema.


**En SQL seutilizan instrucciones especificas para controlar las transacciones, como:
--BEGIN
--TRANSACTION
--COMMIT
--ROLLBACK
 */

--O BEGIN TRANSACTION marca el inicio 
BEGIN TRANSACTION

--COMMIT confirma todos los cambios realizados dentro de la transaccion y los hace permanentes
COMMIT

--ROLLBACK deshace todos los cambios realizados dentro de la transaccion y la devuelve a su estado inicial.
ROLLBACK