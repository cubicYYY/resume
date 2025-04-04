\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2015/05/25 An elegant Résumé class]
\LoadClass[9pt]{article}

\linespread{0.85}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.15em}

\RequirePackage{xltxtra}
\RequirePackage{xifthen}
\RequirePackage{hyperref}
\hypersetup{hidelinks}
\RequirePackage{url}
\urlstyle{tt}
\RequirePackage{fontawesome}
%\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{fontspec}

\setmainfont[
  Path = fonts/Main/ ,
  Extension = .otf ,
  UprightFont = *-regular ,
  BoldFont = *-bold ,
  ItalicFont = *-italic ,
  BoldItalicFont = *-bolditalic ,
  SmallCapsFont = Fontin-SmallCaps
]{texgyretermes}

\RequirePackage[
  a4paper,
  left=0.6in,
  right=0.6in,
  top=0.3in,
  bottom=0.3in,
  nohead
]{geometry}

\RequirePackage{titlesec}
\RequirePackage{enumitem}
\setlist{noitemsep}
\setlist[itemize]{topsep=0.15em, leftmargin=1.5pc}
\setlist[enumerate]{topsep=0.15em, leftmargin=1.5pc}
\RequirePackage[super]{nth}

\titleformat{\section}
  {\normalsize\scshape\raggedright}
  {}{0em}{}[\titlerule]
\titlespacing*{\section}{0cm}{*0.8}{*0.8}

\titleformat{\subsection}
  {\small\raggedright}
  {}{0em}{}
\titlespacing*{\subsection}{0cm}{*0.8}{*0.4}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}
\newcommand{\datedline}[2]{%
  {\par #1 \hfill #2 \par}%
}

\newcommand{\name}[1]{
  \centerline{\LARGE\scshape{#1}}
  \vspace{1.0ex}
}
\newcommand{\nameTest}[1]{%
  {\normalsize\scshape{#1}}%
}

\newcommand{\email}[1]{\faEnvelope\ \href{mailto:#1}{#1}}
\newcommand{\phone}[1]{\faPhone\ {#1}}
\newcommand{\linkedin}[2][]{\faLinkedin\ 
  \ifthenelse{\isempty{#1}}%
    {\href{#2}{#2}}
    {\href{#2}{#1}}}
\newcommand{\linkedinsquare}[2][]{\faLinkedinSquare\ 
  \ifthenelse{\isempty{#1}}%
    {\href{#2}{#2}}
    {\href{#2}{#1}}}
\newcommand{\github}[2][]{\faGithub\ 
  \ifthenelse{\isempty{#1}}%
    {\href{#2}{#2}}
    {\href{#2}{#1}}}
\newcommand{\homepage}[2][]{\faLink\ 
  \ifthenelse{\isempty{#1}}%
    {\href{#2}{#2}}
    {\href{#2}{#1}}}

\newcommand{\basicInfo}[1]{
  \centerline{\sffamily\small{#1}}
  \vspace{1.0ex}
}

\newcommand{\role}[2]{
  {\par \textit{#1} ~ #2 \par}
  \vspace{0.65ex}
}
