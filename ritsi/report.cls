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

%\newcommand{\makeabstract}[1]{
%   \begin{minipage}
   %\textbf{\lipsum[1]}
%   \end{minipage}
%}

\newenvironment{ritsiabstract}{%
   \setlength\topsep{0pt}
   \setlength\parskip{0pt}
   \bfseries
}{%
   {}
   \vspace{-1cm}
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
      \textit{\thesubtitlevar}\\
      \textit{\thelocationvar,\thedatevar}
   }
   \fancyhead[LE,LO]{
      \begin{minipage}{3.3\ritsiheight}
      \includegraphics[width=\textwidth]{img/cabecera-documento}
      \end{minipage}
   }

   \fancyfoot[RE]{\small \color{rojoritsi}Página \thepage\ de \pageref*{LastPage}}
   \fancyfoot[RO]{\small \color{rojoritsi}Página \thepage\ de \pageref*{LastPage}}
   \fancyfoot[LO]{\small \color{rojoritsi}Reunión de Estudiantes de Ingenierías Técnicas y Superiores en Informática}

   % Lineas de separación entre contenido y cabecera/pie
   \renewcommand{\headrulewidth}{0pt}
   \renewcommand{\footrulewidth}{0pt}
}

\newcommand{\makeportada}{
   \AtBeginDocument{
      %\pagenumbering{arabic}
      %\frontmatter
      \pagenumbering{arabic}
      %\thispagestyle{empty}

      \begin{titlepage}
         \ThisCenterWallPaper{1}{img/portada}
         \vspace*{6cm}
         \hspace*{67mm}
         %\makebox[0mm][c]{\color{white}\Huge\@title \\* \large\@author}
         \parbox{80mm}{\centering\color{white}\Huge\textbf{\thetitlevar} \\* \vspace{5mm} \emph{\LARGE\theauthorvar}\\\emph{\Large\thedatevar}}
      \end{titlepage}

      \thispagestyle{plain2}

      %\mainmatter
      %\tableofcontents
      %\clearpage
      %\setcounter{page}{1}

   }
}

\pagestyle{plain2}
