\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ucshinforme}[2026/10/13 Informe UCSH]
\LoadClass[12pt,letterpaper]{article}

% --- Idioma y codificación ---
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[spanish,es-noshorthands]{babel}

% --- Márgenes (headheight deja espacio para el logo) ---
\RequirePackage[margin=2.5cm,headheight=45pt,headsep=12pt]{geometry}

% --- Paquetes de apoyo ---
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{setspace}
\RequirePackage{lastpage}

% --- Bibliografía en formato APA (usa biber) ---
\RequirePackage{csquotes}
\RequirePackage[backend=biber,style=apa]{biblatex}
\DeclareLanguageMapping{spanish}{spanish-apa}

% --- Datos que el estudiante completa en main.tex ---
\newcommand{\asignatura}[1]{\gdef\@asignatura{#1}}
\newcommand{\anio}[1]{\gdef\@anio{#1}}
\newcommand{\semestre}[1]{\gdef\@semestre{#1}}
\newcommand{\titulo}[1]{\gdef\@titulo{#1}}
\newcommand{\autores}[1]{\gdef\@autores{#1}}
\newcommand{\profesor}[1]{\gdef\@profesor{#1}}
\newcommand{\facultad}[1]{\gdef\@facultad{#1}}
\newcommand{\carrera}[1]{\gdef\@carrera{#1}}
\newcommand{\fechaentrega}[1]{\gdef\@fechaentrega{#1}}

% Valores por defecto
\asignatura{Nombre de la asignatura}
\anio{2026}
\semestre{1}
\titulo{Título del informe}
\autores{Nombre Apellido}
\profesor{Nombre del profesor}
\facultad{}
\carrera{}
\fechaentrega{\today}

% --- Interlineado ---
\setstretch{1.5}

% --- Logo: si no existe el archivo, muestra un recuadro en su lugar ---
\newcommand{\ucshlogo}[1]{%
  \IfFileExists{logo-ucsh.png}%
    {\includegraphics[#1]{logo-ucsh.png}}%
    {\fbox{\small LOGO}}%
}

% --- Encabezado y pie para las páginas de contenido ---
\fancypagestyle{ucsh}{%
  \fancyhf{}
  \lhead{\ucshlogo{height=1.3cm}}
  \rhead{\small\textbf{\@asignatura}}
  \lfoot{\small Año \@anio\ -- Semestre \@semestre}
  \rfoot{\small Página \thepage\ de \pageref{LastPage}}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0.4pt}
}
\pagestyle{ucsh}
\fancypagestyle{plain}{\pagestyle{ucsh}}

% --- Portada ---
\newcommand{\makeportada}{%
  \begin{titlepage}
    \thispagestyle{empty}
    \singlespacing
    \centering
    \ucshlogo{width=6cm}\par
    \vspace{1cm}
    {\Large\bfseries Universidad Católica Silva Henríquez\par}
    \vspace{0.3cm}
    {\large \@facultad\par}
    {\large \@carrera\par}
    \vspace{2.5cm}
    {\Huge\bfseries \@titulo\par}
    \vspace{1cm}
    {\Large \@asignatura\par}
    \vfill
    \begin{tabular}{@{}r@{\hspace{1em}}l@{}}
      \textbf{Integrante(s):} & \begin{tabular}[t]{@{}l@{}}\@autores\end{tabular}\\[1.5ex]
      \textbf{Profesor(a):}   & \@profesor\\[1.5ex]
      \textbf{Periodo:}       & Semestre \@semestre, \@anio\\[1.5ex]
      \textbf{Fecha:}         & \@fechaentrega
    \end{tabular}
    \vspace{1cm}
  \end{titlepage}
}
% --- Nombres en español para los índices ---
\addto\captionsspanish{%
  \renewcommand{\contentsname}{Índice general}%
  \renewcommand{\listfigurename}{Índice de figuras}%
  \renewcommand{\listtablename}{Índice de tablas}%
  \renewcommand{\tablename}{Tabla}%
}