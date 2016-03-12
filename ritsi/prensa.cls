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
}

\newcommand{\thesubtitle}[1]{
   \renewcommand{\thesubtitlevar}{#1}
}

\newcommand{\thedate}[1]{
   \renewcommand{\thedatevar}{#1}
}

\newcommand{\theauthor}[1]{
   \renewcommand{\theauthorvar}{#1}
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

\fancypagestyle{plain2}{
   \fancyhf{}
   \fancyhead[RE,RO]{
      \color{rojoritsi}
      \textit{{\thetitlevar}}
   }
   \fancyfoot[RE]{\small \color{rojoritsi}Página \thepage\ de \pageref*{LastPage}}
   \fancyfoot[RO]{\small \color{rojoritsi}Página \thepage\ de \pageref*{LastPage}}
   \fancyfoot[LO]{\small \color{rojoritsi}Reunión de Estudiantes de Ingenierías Técnicas y Superiores en Informática}
   % Lineas de separación entre contenido y cabecera/pie
   \renewcommand{\headrulewidth}{0pt}
   \renewcommand{\footrulewidth}{0pt}
}

%\fancypagestyle{firstpage}{
%   \fancyhf{}
%   \fancyhead[RE,LO]{
%      \color{rojoritsi}
%      \textit{\textbf{\thetitlevar}}\\
%      \textit{\thesubtitlevar}\\
%      \textit{\thelocationvar,\thedatevar}
%   }
%}

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
   %\fancyfoot[RE]{\small \color{rojoritsi}Página \thepage\ de \pageref*{LastPage}}
   %\fancyfoot[RO]{\small \color{rojoritsi}Página \thepage\ de \pageref*{LastPage}}
   %\fancyfoot[LO]{\small \color{rojoritsi}Reunión de Estudiantes de Ingenierías Técnicas y Superiores en Informática}

   % Lineas de separación entre contenido y cabecera/pie
   \renewcommand{\headrulewidth}{0pt}
   \renewcommand{\footrulewidth}{1pt}
}

\pagestyle{plain2}
