# Plantillas de trabajos académicos ✨

Plantillas en **LaTeX** y **Google Docs** para preparar informes y trabajos académicos.

## 🎓 ¿Para qué sirve?

Queremos facilitar la escritura de documentos académicos con una estructura clara y un formato consistente.

La idea es que puedas partir de una plantilla, personalizarla y concentrarte en el contenido de tu trabajo, sin configurar cada documento desde cero.

## 📦 Plantillas disponibles

| Plantilla | Formato | Acceso |
|-----------|---------|--------|
| [Informe académico](latex/informe) | LaTeX | Libre |
| [Informe académico](google-docs) | Google Docs | Libre |

Puedes ver cómo queda el resultado en la [vista previa](docs/vista-previa).

## ✨ ¿Qué incluye la plantilla de informe?

- **Portada** con logo, título, asignatura, integrantes, profesor(a), semestre, año y fecha.
- **Índice general**, **índice de figuras** e **índice de tablas**.
- **Encabezado** con el logo de la universidad y el nombre de la asignatura.
- **Pie de página** con año, semestre y numeración "Página X de N".
- **Interlineado 1,5** y márgenes de 2,5 cm.
- **Bibliografía en formato APA**, con ejemplos de citas.

## 🚀 Cómo usarla

### Opción 1: Google Docs (la más simple)

Si tienes correo institucional de la UCSH, entra a la carpeta [`google-docs`](google-docs) y usa el enlace **Hacer una copia**. No necesitas instalar nada.

### Opción 2: LaTeX en Overleaf (sin instalar nada)

1. Descarga este repositorio con **Code → Download ZIP** y descomprímelo.
2. Entra a la carpeta `latex/informe`, selecciona **todos los archivos que hay dentro** y comprímelos en un nuevo ZIP.
3. En [Overleaf](https://www.overleaf.com): **New Project → Upload Project** y sube ese ZIP.
4. Abre `main.tex` y presiona **Recompile**.

### Opción 3: LaTeX en tu computador (VS Code)

1. Instala una distribución de LaTeX ([MiKTeX](https://miktex.org) en Windows, [MacTeX](https://tug.org/mactex/) en Mac o [TeX Live](https://tug.org/texlive/) en Linux) y [Perl](https://strawberryperl.com) si usas Windows.
2. Instala [VS Code](https://code.visualstudio.com) y la extensión **LaTeX Workshop**.
3. Usa el botón **Use this template** de este repositorio, o clónalo, y abre la carpeta `latex/informe`.
4. Abre `main.tex` y compila con `Ctrl+Alt+B`. El PDF se abre con `Ctrl+Alt+V`.

> La primera compilación puede tardar, porque se descargan paquetes. Si las citas o los índices aparecen como `?`, compila una segunda vez.

## ✏️ ¿Qué debo editar en LaTeX?

Solo el archivo `main.tex`, al inicio:

```latex
\asignatura{Bases de Datos}
\anio{2026}
\semestre{2}
\titulo{Título del informe}
\autores{Nombre Apellido\\ Segundo Integrante}
\profesor{Nombre del Profesor}
\facultad{Facultad de Ingeniería}
\carrera{Ingeniería en Informática}
```

El contenido va debajo de `\makeportada` y las fuentes bibliográficas en `referencias.bib`. Si tu pauta pide otro interlineado, cámbialo en `ucshinforme.cls` (línea `\setstretch{1.5}`).

## 🗂️ Estructura del repositorio

```
├── latex/
│   └── informe/          Plantilla de informe en LaTeX
├── google-docs/          Plantilla en Google Docs (solo cuentas UCSH)
└── docs/
    └── vista-previa/     PDF de ejemplo
```

## 🚧 Estado del proyecto

Las plantillas de informe en LaTeX y Google Docs ya están disponibles. Con los aportes de la comunidad, incorporaremos otros formatos según las necesidades de estudiantes y docentes.

Las plantillas son propuestas de **Open UCSH** y **no corresponden a una pauta oficial** de la universidad. Cuando alguna se adapte a una pauta específica, indicaremos qué requisitos contempla y su referencia.

## 🎯 Objetivo

Construir una colección de plantillas fáciles de usar, personalizar y compartir, con ejemplos e instrucciones para quienes están empezando con LaTeX.

> Menos tiempo ajustando el formato. Más tiempo desarrollando tus ideas.

## 🤝 Contribuir

**No necesitas saber LaTeX para ayudar.** Puedes aportar de distintas maneras:

- 📄 **Compartir una plantilla propia** que otras personas puedan reutilizar.
- 📋 **Proponer una pauta de formato** para orientar una nueva plantilla.
- 💡 **Contarnos qué necesitas** para tus informes, trabajos o tesis.
- 📝 **Escribir instrucciones y ejemplos** para facilitar su uso.
- 🧪 **Probar las plantillas** y reportar problemas.

Antes de compartir documentos, elimina los datos personales y asegúrate de tener permiso para distribuir su contenido.

Puedes comenzar abriendo una [issue](https://github.com/open-ucsh/template-trabajos-academicos/issues) con tu idea o propuesta.

![Open UCSH](https://raw.githubusercontent.com/open-ucsh/.github/main/assets/banner.jpeg)