# Fase 1 — Fundamentos COBOL

Ejercicios base compilables con GnuCOBOL. Corresponden al inicio del `ROADMAP.md`.

## Requisitos

Instalar GnuCOBOL: https://gnucobol.sourceforge.io/

Verificar instalación:
```bash
cobc --version
```

## Ejercicios

| Archivo | Concepto | Compilar y ejecutar |
|---|---|---|
| `01-hola-mundo.cob` | Estructura de las 4 divisiones | `cobc -x 01-hola-mundo.cob -o hola-mundo && ./hola-mundo` |
| `02-operaciones-aritmeticas.cob` | ADD/SUBTRACT/MULTIPLY/DIVIDE vs COMPUTE, PICTURE numérico | `cobc -x 02-operaciones-aritmeticas.cob -o operaciones && ./operaciones` |
| `03-condicionales-evaluate.cob` | EVALUATE, nivel 88 | `cobc -x 03-condicionales-evaluate.cob -o condicionales && ./condicionales` |

## Pendientes de la fase (según ROADMAP.md)

- [ ] `04-perform-varying.cob`
- [ ] `05-nivel88-validacion.cob`

## Notas de aprendizaje

Añade aquí tus propias observaciones al completar cada ejercicio, o documéntalas en `docs/LEARNING_LOG.md`.
