\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ritsi/report}

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

\fancypagestyle{plain}{
   \fancyhf{}
   \fancyhead[RE,LO]{
      \color{rojoritsi}
      \textit{\textbf{\thetitlevar}}\\
      \textit{\thesubtitlevar}\\
      \textit{\thelocationvar,\thedatevar}
   }
   \fancyhead[RO]{
      %\begin{minipage}{0.5\textwidth}
      %\begin{flushright}
      %\color{rojoritsi}Reunión de Estudiantes de Ingenierías \\
      %Técnicas y Superiores en Informática
      %\ignorespacesafterend
      %\end{flushright}
      %\end{minipage}
      \begin{minipage}{1.3\ritsiheight}
      \vspace{-1em}
      \includegraphics[width=\textwidth]{img/cabecera-documento}
      \end{minipage}
   }
   \fancyhead[LE]{
      \begin{minipage}{3.3\ritsiheight}
      \includegraphics[width=\textwidth]{img/cabecera-documento}
      \end{minipage}
      %\begin{minipage}{0.5\textwidth}
      %\color{rojoritsi}Reunión de Estudiantes de Ingenierías \\
      %Técnicas y Superiores en Informática
      %\end{minipage}
   }
   \fancyfoot[LE,RO]{\color{rojoritsi}Página \thepage\ de \pageref*{LastPage}}
   \renewcommand{\headrulewidth}{0pt}
   \renewcommand{\footrulewidth}{0pt}
}

\AtBeginDocument{
   %\pagenumbering{arabic}
   %\frontmatter
   \pagenumbering{arabic}
   \pagestyle{empty}

   \begin{titlepage}
      \ThisCenterWallPaper{1}{img/portada}
      \vspace*{6cm}
      \hspace*{67mm}
      %\makebox[0mm][c]{\color{white}\Huge\@title \\* \large\@author}
      \parbox{80mm}{\centering\color{white}\Huge\textbf{\thetitlevar} \\* \vspace{5mm} \emph{\LARGE\theauthorvar}\\\emph{\Large\thedatevar}}
   \end{titlepage}

   \pagestyle{plain}

   %\mainmatter
   \tableofcontents
   %\setcounter{page}{1}

}

\pagestyle{plain}
