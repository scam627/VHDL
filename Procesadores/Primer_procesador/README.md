# PRIMER PROCESADOR

El objetivo del primer procesador es dejar la parte aritmetico logica funcionando
cabe destacar que este procesador solo soporta  calculos con enteros   todos  las
caracteristicas de esta primera arquitectura fueron hechas siguiendo el  estandar
de la [arquitectura SPARC V8.](http://www.gaisler.com/doc/sparcv8.pdf)

## Intrucciones que soporta la arquitectura

* Instrucciones logicas     --> OP => 10
  * AND   --> OP => 000001
  * ANDN  --> OP => 000101
  * OR    --> OP => 000010
  * ORN   --> OP => 000110
  * XOR   --> OP => 000011
  * XORN  --> OP => 000111
* Instrucciones aritmeticas --> OP => 10
  * ADD   --> OP => 000000
  * SUB   --> OP => 000100
