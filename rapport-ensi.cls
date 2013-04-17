\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rapport-ensi}

% Classe utilisée : Report
% Classe crée par Jean-Baptiste Théou, pour coller au modèle donné pour la filière Informatique à l'ENSICAEN
\LoadClass[a4paper, 12pt]{report}

\newif\ifENSI@times


\DeclareOption{times}{%
  \ENSI@timestrue
}
\ProcessOptions

\ifENSI@times
  \RequirePackage{mathptmx}      % Times + times mathématiques
  \RequirePackage{helvet}        % Helvetica
  \renewcommand*\ttdefault{lmtt} % Latin Modern tt
  \def\jmath{j}                  % n'existe pas sous mathptmx
\fi

\RequirePackage{array}
\RequirePackage[utf8x]{inputenc}
\RequirePackage{textcomp}
\RequirePackage[frenchb]{babel}
\RequirePackage{graphicx}
\RequirePackage{fullpage}
\RequirePackage{titlesec}
\RequirePackage[font=small,format=plain,labelfont=bf,up,textfont=it,up]{caption}
\pdfoutput=1
\RequirePackage[linkcolor=black,citecolor=black,urlcolor=blue,anchorcolor=black,bookmarks=true,plainpages=false]{hyperref}
\pdfcompresslevel=9
\RequirePackage{fancyhdr}
\RequirePackage{glossaries}
\glossarystyle{altlist}
\def\docpdf{
\hypersetup{
  pdftitle={\@titre},
  pdfauthor={\@nom},
}}


\pagestyle{fancyplain}
\lhead{}
\rhead{}
\chead{}
\renewcommand{\headrulewidth}{0pt}

\titleformat{\chapter}[hang]{\bf\huge}{\thechapter}{2pc}{} 

\def\@titre{Non renseigné~!}
\def\titre#1{\def\@titre{#1}}

\def\@soustitre{}
\def\soustitre#1{\def\@soustitre{#1}}

\def\@specialite{Non renseigné~!}
\def\specialite#1{\def\@specialite{#1}}

\def\@annee{Non renseigné~!}
\def\annee#1{\def\@annee{#1}}

\def\@nom{Non renseigné~!}
\def\nom#1{\def\@nom{#1}}

\def\@nomentreprise{Non renseigné~!}
\def\nomentreprise#1{\def\@nomentreprise{#1}}

\def\@adresseentreprise{Non renseigné~!}
\def\adresseentreprise#1{\def\@adresseentreprise{#1}}

\def\@logoentreprise{Mettre un logo d'entreprise avec begin document}
\def\logoentreprise#1{\def\@logoentreprise{#1}}

\def\@type{Rapport de stage}
\def\type#1{\def\@type{#1}}

\def\@nomecole{ENSICAEN}
\def\nomecole#1{\def\@nomecole{#1}}

\def\@adresseecole{6, bd Maréchal Juin\newline
F - 14050 Caen Cedex 4}
\def\adresseecole#1{\def\@adresseecole{#1}}

\def\@imageannee{imageannee.jpg}
\def\imageannee#1{\def\@imageannee{#1}}

\def\@logoecole{logoecole.jpg}
\def\logoecole#1{\def\@logoecole{#1}}

\newlength{\widthecole}
\setlength{\widthecole}{5cm}
\newlength{\widthentreprise}
\setlength{\widthentreprise}{7cm}

\newcommand{\fairetitre}{
%Pas de numéro de page
\thispagestyle{empty}
  \begin{minipage}[c]{0.50\linewidth}
 \includegraphics[width=\widthecole]{\@logoecole} 
\end{minipage} 
\begin{minipage}[c]{0.50\linewidth}
 \includegraphics[width=\widthentreprise]{\@logoentreprise} 
\end{minipage}\par
\vspace{1cm}
\begin{minipage}[c]{0.50\linewidth}
\small{\@nomecole\par
 \@adresseecole\par}
\end{minipage}
\begin{minipage}[c]{0.50\linewidth}
 \small{\@nomentreprise\par
\@adresseentreprise \par}
\end{minipage}\par
\vspace{2cm}
\begin{flushright}
\large Spécialité \@specialite{} - \@annee{} Année\par\vspace{1cm}
\@type\par
\vspace{1cm}
\rule{0.85\linewidth}{0.5mm}\par
\vspace{1cm}
\Large \textbf{\@titre}\par
\@soustitre\par
\vspace{1cm}
\rule{0.85\linewidth}{0.5mm}\par
\vspace{1cm}
\@nom\par
\vspace{2cm}

\includegraphics[width=\linewidth]{\@imageannee}
\end{flushright}
}


