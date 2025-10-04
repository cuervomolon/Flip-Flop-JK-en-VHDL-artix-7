# Flip-Flop JK en VHDL (Artix-7)

Un Flip-Flop JK creado en **VHDL** usando el entorno **Vivado**, diseñado para la serie **Artix-7**, con señales síncronas de **Reset** y **Set**.

---

## 🧠 Descripción general

Este proyecto implementa un **Flip-Flop JK** con opciones funcionales de *Set* y *Reset*.  
Un Flip-Flop JK es un circuito secuencial usado para **almacenar información en forma de bits**.  
Su salida (Q y Q’) cambia en respuesta a las entradas **J** y **K**, sincronizadas por una señal de **reloj (CLK)** que controla los cambios de estado.

---

## 🧩 Tabla de verdad del Flip-Flop JK

| J | K | Q(next) | Descripción        |
|:-:|:-:|:--------:|:------------------|
| 0 | 0 | Q        | Mantiene el estado |
| 0 | 1 | 0        | Reset              |
| 1 | 0 | 1        | Set                |
| 1 | 1 | ¬Q       | Conmutación (Toggle) |

---

## ⚙️ Estructura interna

Un Flip-Flop JK está compuesto por **cuatro compuertas NAND** conectadas de forma secuencial.  
Esto significa que la salida del circuito se reutiliza como entrada, permitiéndole **almacenar 1 bit de información**.

---

## 🧾 Prioridad de señales en este diseño

- **Reset:** Tiene la mayor prioridad.  
  Cuando recibe un ‘1’ lógico, la salida `Q` se pone en `0`.

- **Set:** Tiene prioridad sobre las entradas `JK`.  
  Cuando recibe un ‘1’ lógico, la salida `Q` se pone en `1`, sin importar el valor de `JK`.

- **JK:** Es un vector de dos bits que determina el comportamiento del flip-flop según su tabla de verdad.

---
## 🧪 Simulación en Vivado

1. Abre **Vivado** y crea un nuevo proyecto.
2. Añade los archivos `Jk.vhd` (fuente) y `JK_testbench.vhd` (testbench).
3. Define el **testbench** como archivo de simulación.
4. Ejecuta la simulación y observa la forma de onda de `Q` con diferentes combinaciones de `JK`, `Set` y `Reset`.

## 💡 Notas adicionales

- El código fue desarrollado y simulado en **Vivado**.  
- Probado con **señales síncronas**.  
- Compatible con FPGA **Artix-7**.

---

Forma de Onda
<img width="1334" height="187" alt="image" src="https://github.com/user-attachments/assets/b0aac3d5-c7aa-405c-bf4a-ce7caecad2bb" />


✍️ **Autor:**  
**Jeynner Joel Gutiérrez**
