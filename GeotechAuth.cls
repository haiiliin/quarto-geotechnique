%---------------------------------------------------------------------------
%Please  be  aware that the use of this LaTeX class file is governed by the
%following conditions:
%
% based on the original LaTeX ARTICLE DOCUMENT STYLE
% Copyright (C) 1988, 1989 by Leslie Lamport
%
% Copyright (c) 2013 ICE Publishing  All rights reserved.
%
%Rules of Use
%
%% You are NOT ALLOWED to change this file.
%
%This class file is made available for use by authors who wish to prepare an
%article for publication in
%GEOTECHNIQUE
%published by ICE Publishing. The user may not exploit any part of
%the class file commercially.
%
%This class file is provided on an `as is'  basis, without warranties of any
%kind, either expressed or implied, including but not limited to warranties of
%title, or  implied warranties of merchantablility or fitness for  a
%particular purpose. There will be no duty on the author[s] of the software
%or ICE Publishing to correct any errors or defects in the software.
%Any statutory rights you may have remain unaffected by your acceptance of
%these rules of use.
%---------------------------------------------------------------------------
%
% Created by Alistair Smith, Sunrise Setting Ltd, 21 January 2015
%
% GeotechAuth.cls --- For Geotechnique

\def\update{2015/01/21 v1.00}

\newcommand{\journalname}{G\'eotechnique}
\newcommand{\journalnamelc}{G\'eotechnique}
\newcommand{\journalabb}{G\'eotechnique}
\newcommand{\journalclass}{GeotechAuth.cls}
\newcommand{\journalclassshort}{GeotechAuth}
\newcommand{\DOI}{http://dx.doi.org/10.1680/geot.XX.XXXXX}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{GeotechAuth}[\update\ \journalclass]

%\newcommand\hmmax{0}

\newif\if@timesfont
\DeclareOption{times}{%
\@timesfonttrue}

\newif\if@doublespace
\DeclareOption{doublespace}{%
\@doublespacetrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass{article}
\if@timesfont
\RequirePackage{times}
\fi
\if@doublespace
\RequirePackage[onehalfspacing]{setspace}
\fi

\RequirePackage{graphicx}
\RequirePackage{pifont,latexsym,ifthen,rotating,calc,textcase,booktabs,color,textcase,xspace}
\RequirePackage{amsfonts,amssymb,amsbsy,amsmath,amsthm}
%\RequirePackage{bm}
\RequirePackage[errorshow]{tracefnt}
\RequirePackage{tabls}

\@twosidetrue
\flushbottom
\frenchspacing

\textwidth 174.5mm
%column width = 84mm
\textheight 724pt
\setlength\columnsep{6.5mm}

%Trim sizes
\setlength\voffset{-1in}
\setlength\hoffset{-1in}
\topmargin -1mm
\setlength\oddsidemargin{17.75mm}%back margin on odd pages
\setlength\evensidemargin{17.75mm}%fore margin on even pages
\setlength{\pdfpagewidth}{210mm}%
\setlength{\pdfpageheight}{297mm}%
\setlength\paperwidth{210mm}
\setlength\paperheight{297mm}
%Needed to set PDF page size
\special{papersize=210mm,297mm}

\parskip \z@
\parindent 1em
\headheight 50pt
\headsep    6pt 
\footskip 24pt 

\hyphenpenalty=1000
\pretolerance=8000
\tolerance=9500
\hbadness=10000
\vbadness=9000
\displaywidowpenalty=0
\clubpenalty=10000
\widowpenalty=10000
\lefthyphenmin=3
\righthyphenmin=3
\brokenpenalty=10000

\thinmuskip = 3mu
\medmuskip = 4mu
\thickmuskip = 5mu

\setcounter{topnumber}{10}
\def\topfraction{1}
\setcounter{bottomnumber}{10}
\def\bottomfraction{0.8}
\setcounter{totalnumber}{10}
\def\textfraction{0}
\renewcommand{\floatpagefraction}{0.95}
\setcounter{dbltopnumber}{10}
\renewcommand{\dblfloatpagefraction}{0.95}
\renewcommand{\dbltopfraction}{1}

\renewcommand{\normalsize}{\fontsize{9.5}{10.75pt}\selectfont}
\renewcommand{\small}{\fontsize{8.5pt}{9.5pt}\selectfont}
\renewcommand{\footnotesize}{\fontsize{7.5pt}{8.5pt}\selectfont}
\renewcommand\scriptsize{\@setfontsize\scriptsize\@viipt{8.5}}
\renewcommand{\tiny}{\fontsize{6}{7pt}\selectfont}
\renewcommand\large{\@setfontsize\large\@xipt{13}}
\renewcommand\Large{\@setfontsize\Large\@xivpt{18}}
\renewcommand{\LARGE}{\fontsize{16.5}{18pt}\selectfont}
\renewcommand\huge{\fontsize{22pt}{24pt}\selectfont}
\renewcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}

\newcommand{\titlesize}{\fontsize{15.0}{16pt}\selectfont}
\newcommand{\tabsize}{\fontsize{9}{9.5pt}\selectfont}
\newcommand{\headersize}{\fontsize{8.0}{9pt}\selectfont}

\newbox\absbox
\def\abstract{\lrbox\absbox\minipage{149mm}%
  \normalfont\normalsize%
  }
\def\endabstract{\endminipage\endlrbox}

\def\keywords#1{%
  \gdef\@keywords{\begin{minipage}{149mm}{\normalsize{KEYWORDS:}}\ \parbox[t]{128.5mm}{\normalsize #1}\end{minipage}}}
\let\@keywords\@empty

\skip\footins 20pt plus  8pt
%\gdef\footnoterule{}
\def\footnoterule{\kern-3\p@
  \hrule \@width \columnwidth \kern 2.6\p@}

\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\long\def\@makefntext#1{\parindent 1em%
\noindent{$\m@th^{\@thefnmark}$}#1}

\def\address#1{%
  \gdef\@address{%
    \footnotetext{\small #1}}}
\let\@address\@empty

\def\addressnum#1{\ifcase#1\or $^{*}$\or $\dagger$\or $\ddagger$\or
   $\S$\or $\P$\or $\|$\or **\or $\dagger\dagger$
   \or $\ddagger\ddagger$\else\fi}

\def\ICEreceived{{\footnotetext[0]{{\small Manuscript received\dots}}}}

\newcommand{\authorand}{\MakeTextLowercase{and}\xspace}

\renewcommand\maketitle{\par
  \begingroup
     \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
       \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{title}\label{FirstPage}\ICEreceived\@address%\ICEonline\@acks\@ack\@cgs\@cgsn\@corraddr
  \endgroup
  %\setcounter{footnote}{0}%
  \global\let\affiliation\relax
  \global\let\address\relax
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\@affiliation\@empty
  \global\let\@address\@empty
  %\global\let\corraddr\relax
    \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{\vspace*{+2pt}%
\null%
\begin{center}
%\begin{sf}
    {\LARGE{\@title} \par}%
    \vskip 1.5em %
    {\normalsize
      \lineskip .5em%
      \MakeTextUppercase{\@author}
      \par}%
      \vskip 20pt%
    {\noindent\usebox\absbox\par}
    {\vspace{15pt}%
     {\noindent\normalsize\@keywords}\par}
%\end{sf}
      \vskip 2pt
      \rule{\textwidth}{0.5pt}
      \end{center}
      \vskip 8pt
        \par%
  }
 
\def\startpage{\pageref{FirstPage}}
\def\endpage{\pageref{LastPage}}
\def\volumeyear{0000}
\def\volumenumber{00}

\def\runningheads#1#2{\markboth{\MakeTextUppercase{#1}}{\MakeTextUppercase{#2}}}

\def\ps@title{%
\def\@oddhead{%
\parbox[t]{\textwidth}{%
{\normalsize{\itshape\journalabb}\ \textbf{\volumenumber},\ \startpage--\endpage\ [\DOI]\hfill}}}
\let\@evenhead\@oddhead
\def\@oddfoot{\parbox[t]{\textwidth}{%
{\scriptsize\sf{Prepared using {\itshape\journalclass} [Version: \update]}}\hfill{\thepage}\hfill\phantom{{\scriptsize\sf{Prepared using {\itshape\journalclass} [Version: \update]}}}}}
\let\@evenfoot\@oddfoot}

\def\ps@ICEpage{
\let\@mkboth\@gobbletwo
\def\@evenhead{\small\thepage\hfill\normalsize{\leftmark}\hfill\small\phantom{\thepage}}
\def\@oddhead{\small\phantom{\thepage}\hfill\normalsize{\rightmark}\hfill\small\thepage}
\def\@evenfoot{\scriptsize\sf{Prepared using {\itshape\journalclass}}\hfill} 
\def\@oddfoot{\@evenfoot}
}

%\renewcommand{\@seccntformat}[1]{{\csname the#1\endcsname.}\hspace{0.5em}}

\setcounter{secnumdepth}{0}

\newdimen\@bls                              
\@bls=\baselineskip

\renewcommand\section{\@startsection{section}{1}{\z@}%
                                   {1.5\@bls  plus .3\@bls minus .1\@bls}%
                                   {0.01pt\@afterindentfalse}%
                                   {\normalsize\raggedright\protect\MakeTextUppercase}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {\@bls plus .3\@bls minus .1\@bls}%
                                     {0.01pt\@afterindentfalse}%
                                     {\itshape\normalsize\raggedright}}
%\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
%                                     {\@bls plus .2\@bls}%
%                                     {0.01\@bls\@afterindentfalse}%
%                                     {\bfseries\normalsize\raggedright}}

\def\enumerate{\ifnum \@enumdepth >3 \@toodeep\else
      \advance\@enumdepth \@ne
      \edef\@enumctr{enum\romannumeral\the\@enumdepth}\list
      {\csname label\@enumctr\endcsname}{\usecounter
        {\@enumctr}\itemsep 0pt\parsep 0pt
         \def\makelabel##1{\hss\llap{##1}}}\fi}

\let\endenumerate =\endlist

\def\itemize{\ifnum \@itemdepth >3 \@toodeep\else \advance\@itemdepth \@ne
\edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
\list{\csname\@itemitem\endcsname}{\itemsep 0pt\parsep 0pt
\def\makelabel##1{\hss\llap{##1}}}\fi}

\let\enditemize =\endlist

%\renewcommand{\thetable}{\Roman{table}}

\usepackage{caption}
\DeclareCaptionLabelSeparator{ICEperiod}{.\hspace*{1.0ex}}
\captionsetup[figure]{position=bottom,font=small,labelfont={bf},textfont=bf,labelsep=ICEperiod,justification=justified,singlelinecheck=false,name=Fig.}
\captionsetup[table]{position=top,font=small,labelfont={bf},textfont=bf,labelsep=ICEperiod,justification=justified,singlelinecheck=false}

\renewenvironment{thebibliography}{%
\section*{\refname}
\list{}{\topsep=0\p@\parsep=0\p@
\partopsep=0\p@\itemsep=1\p@\labelsep=0\p@\itemindent=-12\p@
\labelwidth=0\p@\leftmargin=20\p@
}\small\rm
\def\newblock{\ }
\sloppy\clubpenalty4000\widowpenalty4000
\sfcode`\.=1000\relax}{\endlist}

\usepackage{natbib}
\bibpunct{(}{)}{;}{}{,}{,}
\setlength{\bibsep}{1pt}
\setlength{\bibhang}{12pt}
\renewcommand{\bibfont}{\small}

\AtEndDocument{%
\label{LastPage}}

\pagestyle{ICEpage}
\twocolumn
\normalsize
\sloppy
