# Roadmap de aprendizaje COBOL

Marca cada casilla con `[x]` al completarla y haz commit. Cada commit de este archivo es, en sí mismo, evidencia de progreso constante — algo que un reclutador puede ver en el historial de GitHub.

---

## Fase 1 — Fundamentos COBOL (semanas 1-3)

Entorno: GnuCOBOL local (WSL2/Linux/macOS).

- [ ] Instalar GnuCOBOL y compilar el primer "Hola, mundo"
- [ ] Entender las 4 divisiones: IDENTIFICATION, ENVIRONMENT, DATA, PROCEDURE
- [ ] PICTURE clauses y tipos de datos (numérico, alfanumérico, packed decimal)
- [ ] Niveles de datos (01, 05, 88) y condiciones de nivel 88
- [ ] Operaciones aritméticas: ADD, SUBTRACT, MULTIPLY, DIVIDE, COMPUTE
- [ ] Control de flujo: IF/ELSE, EVALUATE, PERFORM (simple, VARYING, UNTIL)
- [ ] Completar curso "COBOL Programming with VSCode" (Open Mainframe Project)
- [ ] Subir 5+ ejercicios compilables a `01-fundamentos/ejercicios/`

**Entregable de fase:** 5 programas .cob comentados, cada uno con su propio README explicando qué resuelve.

---

## Fase 2 — Datos y ficheros (semanas 4-7)

- [ ] Ficheros secuenciales: OPEN, READ, WRITE, CLOSE
- [ ] Ficheros indexados y VSAM (conceptos, luego práctica en Fase 3)
- [ ] Tablas (arrays): OCCURS, subíndices, índices
- [ ] SORT / MERGE
- [ ] Funciones intrínsecas (FUNCTION UPPER-CASE, FUNCTION NUMVAL, etc.)
- [ ] REDEFINES — comparar mentalmente con unions de C
- [ ] Subprogramas: CALL, USING, COPY (equivalente conceptual a módulos/includes)
- [ ] Subir ejercicios a `02-datos-y-ficheros/ejercicios/`

**Entregable de fase:** programa que lee un fichero de entrada, procesa registros (validación, cálculo) y genera un fichero de salida — patrón clásico de batch.

---

## Fase 3 — Entorno mainframe real (semanas 8-13)

Entorno: IBM Z Xplore (z/OS real).

- [ ] Crear cuenta gratuita en Z Xplore
- [ ] Familiarizarse con ISPF/TSO: navegación, edición, datasets
- [ ] JCL: estructura de un JOB, STEP, DD
- [ ] Ciclo compile-link-execute en z/OS (comparar con tu experiencia compilando C/C++)
- [ ] VSAM real: KSDS, ESDS, RRDS
- [ ] Ejecutar y depurar tus programas de Fase 1-2 en el mainframe real
- [ ] Documentar en `03-mainframe-real/README.md` con capturas de pantalla y JCL comentado
- [ ] Reclamar badges Credly de Z Xplore

**Entregable de fase:** al menos 2 JCL documentados ejecutando jobs reales, con capturas y explicación del flujo.

---

## Fase 4 — CICS y DB2 (semanas 14-18)

- [ ] Conceptos de transacciones online (CICS) vs batch
- [ ] Comandos CICS básicos: SEND, RECEIVE, READ, WRITE
- [ ] SQL embebido en COBOL (EXEC SQL) contra DB2
- [ ] Diferencias de manejo de errores: SQLCODE, file status codes
- [ ] Completar curso relevante de IBM Mainframe Developer Professional Certificate

**Entregable de fase:** mini transacción CICS + consulta DB2 documentada.

---

## Fase 5 — Proyecto final (semanas 19-22)

- [ ] Definir alcance: ej. sistema simple de gestión de pólizas/cuentas (batch)
- [ ] Diseño: estructura de datos, ficheros/tablas, flujo de procesos
- [ ] Implementación completa con JCL de ejecución
- [ ] README del proyecto explicando arquitectura y decisiones
- [ ] Grabar demo corta (opcional) o capturas del flujo completo

**Entregable de fase:** proyecto integrador enlazable directamente en tu CV/LinkedIn.

---

## Certificaciones (en paralelo, no bloqueantes)

- [ ] IBM z/OS Mainframe Practitioner Professional Certificate
- [ ] IBM Mainframe Developer Professional Certificate
