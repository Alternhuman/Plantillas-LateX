\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ritsi/prensa}

\PassOptionsToClass{a4paper,12pt}{scrreprt}

\DeclareOption*{%
   \PassOptionsToClass{\CurrentOption}{scrreprt}%
}

\ProcessOptions\relax

\LoadClass{scrreprt}

\RequirePackage{ritsi/ritsi}
\RequirePackage{wallpaper}
\RequirePackage{float}
\RequirePackage[all]{background}

\RequirePackage{tikz}

\newlength{\ritsiheight}
\setlength{\ritsiheight}{\baselineskip}
\addtolength{\ritsiheight}{5em}

\newcommand{\thetitlevar}{}
\newcommand{\thesubtitlevar}{}
\newcommand{\thedatevar}{}
\newcommand{\theauthorvar}{}
\newcommand{\thelocationvar}{}

\newcommand{\thetitle}[1]{
   \renewcommand{\thetitlevar}{#1}
   \title{#1}
}

\newcommand{\thesubtitle}[1]{
   \renewcommand{\thesubtitlevar}{#1}
}

\newcommand{\thedate}[1]{
   \renewcommand{\thedatevar}{#1}
   \date{#1}
}

\newcommand{\theauthor}[1]{
   \renewcommand{\theauthorvar}{#1}
   \author{#1}
}

\newcommand{\thelocation}[1]{
   \renewcommand{\thelocationvar}{#1}
}

\newenvironment{ritsiabstract}{%
   \setlength\topsep{0pt}
   \setlength\parskip{0pt}
   \bfseries
}{%
   {}

}


\fancypagestyle{plain}{
   \fancyhf{}
   \fancyhead[RE,RO]{
      \color{rojoritsi}
      \textit{\textbf{\thetitlevar}}\\
      \textit{\thelocationvar,\thedatevar}
   }
   \fancyhead[LE,LO]{
      \begin{minipage}{3.3\ritsiheight}
      \includegraphics[width=\textwidth]{img/cabecera-documento}
      \end{minipage}
   }
   \fancyfoot[C]{\small \textbf{Reunión de Estudiantes de Ingenierías Técnicas y Superiores en Informática}\\Comisión de Comunicación y Prensa\\\href{http://ritsi.org}{http://ritsi.org} - \href{mailto:prensa@ritsi.org}{prensa@ritsi.org}}

   % Lineas de separación entre contenido y cabecera/pie
   \renewcommand{\headrulewidth}{0pt}
   \renewcommand{\footrulewidth}{1pt}
}

\fancypagestyle{plain-nologo}{
   \fancyhf{}
   \fancyhead[RE,RO]{
      \color{rojoritsi}
      \textit{\textbf{\thetitlevar}}\\
      \textit{\thelocationvar,\thedatevar}
   }
   \fancyfoot[C]{\small \textbf{Reunión de Estudiantes de Ingenierías Técnicas y Superiores en Informática}\\Comisión de Comunicación y Prensa\\\href{http://ritsi.org}{http://ritsi.org} - \href{mailto:prensa@ritsi.org}{prensa@ritsi.org}}

   % Lineas de separación entre contenido y cabecera/pie
   \renewcommand{\headrulewidth}{0pt}
   \renewcommand{\footrulewidth}{1pt}
}

%http://tex.stackexchange.com/a/41390
\newcommand{\MyTikzLogo}{% For a logo drawn with TikZ
\begin{tikzpicture}[remember picture, overlay]
  \node[inner sep=0pt, opacity=.2] (logo) {\includegraphics[height=0.9\textheight]{img/ritsi-logo}};
\end{tikzpicture}
}

\SetBgContents{\MyTikzLogo}% Set tikz picture
\SetBgPosition{10, -13}% Select location
%\SetBgOpacity{1.0}% Select opacity
\SetBgAngle{0.0}% Select roation of logo
\SetBgScale{1.0}% Select scale factor of logo

\pagestyle{plain-nologo}
