# Comparación entre Lenguajes Compilados e Interpretados

## 1. Lenguaje Compilado: C

- **Definición**: Un lenguaje de programación que se traduce a código máquina (binario) antes de su ejecución. Ejemplos: C, C++, Rust.
- **Proceso**: El código fuente se compila en un archivo ejecutable. El código máquina resultante se ejecuta directamente por el sistema operativo.
- **Ventajas en Rendimiento**:
  - **Velocidad de Ejecución**: El código máquina es ejecutado directamente por la CPU, lo que generalmente resulta en una ejecución más rápida y eficiente.
  - **Optimización**: Los compiladores pueden aplicar optimizaciones avanzadas durante el proceso de compilación, mejorando el rendimiento del código.
  - **Menor Sobrecarga**: No hay una capa adicional de interpretación en tiempo de ejecución.
- **Desventajas**:
  - **Tiempo de Compilación**: La compilación puede llevar tiempo y los errores de compilación pueden ser difíciles de depurar.
  - **Portabilidad**: El código compilado puede ser específico de la arquitectura y el sistema operativo, requiriendo recompilación para diferentes entornos.

## 2. Lenguaje Interpretado: Python

- **Definición**: Un lenguaje de programación que se ejecuta mediante un intérprete que traduce el código fuente a código máquina en tiempo real. Ejemplos: Python, Ruby, JavaScript.
- **Proceso**: El código fuente se ejecuta línea por línea por el intérprete, sin necesidad de un archivo ejecutable separado.
- **Ventajas en Rendimiento**:
  - **Desarrollo Rápido**: Permite pruebas y cambios rápidos sin necesidad de compilación.
  - **Portabilidad**: El código fuente puede ejecutarse en diferentes plataformas con el mismo intérprete.
  - **Interactividad**: Ideal para desarrollo interactivo y scripting.
- **Desventajas**:
  - **Velocidad de Ejecución**: La interpretación en tiempo real puede hacer que la ejecución sea más lenta en comparación con los lenguajes compilados.
  - **Sobrecarga**: El intérprete introduce una capa adicional entre el código y la ejecución del sistema operativo.
