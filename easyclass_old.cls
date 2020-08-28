%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% easyclass.cls - LaTeX2e class for Lecture Note use.
%% To Make Lecture Note for Math Courses
%%	Version 1.00
%%  written by Alberto Chiarini and Pim van der Hoorn
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{easyclass}[5/3/2020 custom lecture note class]
\LoadClass[twoside=false]{scrbook}
\RequirePackage{mathtools,amssymb,amsthm,bbm,bbold,enumerate,wrapfig}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{hyperref,cleveref}
\RequirePackage{tikzsymbols}

\definecolor{theorem}{RGB}{214,0,74}
\definecolor{lemma}{RGB}{16,16,115}

\newcommand\myshade{90}
\colorlet{mylinkcolor}{NavyBlue}
\colorlet{mycitecolor}{Aquamarine}
\colorlet{myurlcolor}{Aquamarine}

\hypersetup{
  linkcolor  = mylinkcolor!\myshade!black,
  citecolor  = mycitecolor!\myshade!black,
  urlcolor   = myurlcolor!\myshade!black,
  colorlinks = true,
}

%--------------------------------------------------------------------
% Bibliography
\RequirePackage[]{natbib}
\bibliographystyle{chicago}

% Proof

\renewcommand{\qedsymbol}{\Laughey[1.4]}

%--------------------------------------------------------------------
% Theorem
%=================================
% pre-defined theorem environments
% custom theorem boxes
\RequirePackage[framemethod=TikZ]{mdframed}
\RequirePackage{amsthm}
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}{Proposition}
\newtheorem{corollary}{Corollary}[chapter]
\newtheorem{definition}{Definition}[chapter]
\newtheorem*{assumption}{Assumption}
\theoremstyle{remark}
\newtheorem{problem}{Problem}[chapter]
\newtheorem*{remark}{Remark}
\newtheorem{example}{Example}[chapter]
\theoremstyle{plain}


%Theorem
\newcounter{theo}[chapter] \setcounter{theo}{0}
\renewcommand{\thetheo}{\arabic{chapter}.\arabic{theo}}
\newenvironment{theo}[2][]{%
\refstepcounter{theo}%
\ifstrempty{#1}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=theorem]
{\strut {\color{white}Theorem~\thetheo}};}}
}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=theorem]
{\strut {\color{white}Theorem~\thetheo:~#1}};}}%
}%
\mdfsetup{innertopmargin=10pt, innerbottommargin=10pt,linecolor=theorem,%
linewidth=2pt,topline=true,%
frametitleaboveskip=\dimexpr-\ht\strutbox\relax
}
\begin{mdframed}[]\relax%
\label{#2}}{\end{mdframed}}


%Lemma
\newcounter{lem}[theo] %\setcounter{lem}{0}
\renewcommand{\thelem}{\arabic{chapter}.\arabic{theo}}
\newenvironment{lem}[2][]{%
\refstepcounter{theo}%
\ifstrempty{#1}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=lemma]
{\strut {\color{white} Lemma~\thelem}};}}
}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=lemma]
{\strut Lemma~\thelem:~#1};}}%
}%
\mdfsetup{innertopmargin=10pt, innerbottommargin=10pt, linecolor=lemma,%
linewidth=2pt,topline=true,%
frametitleaboveskip=\dimexpr-\ht\strutbox\relax
}
\begin{mdframed}[]\relax%
\label{#2}}{\end{mdframed}}


%Proof
\newcounter{prf}[theo]%\setcounter{prf}{0}
\renewcommand{\theprf}{\arabic{chapter}.\arabic{theo}}
\newenvironment{prf}[2][]{%
\refstepcounter{prf}%
\ifstrempty{#1}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=blue!20]
{\strut Proof~\theprf};}}
}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=blue!20]
{\strut Proof~\theprf:~#1};}}%
}%
\mdfsetup{innertopmargin=10pt,linecolor=blue!20,%
linewidth=2pt,topline=true,%
frametitleaboveskip=\dimexpr-\ht\strutbox\relax
}
\begin{mdframed}[]\relax%
\label{#2}}{\qed\end{mdframed}}

%=================================
% itemize

\renewcommand\labelitemi{$\blacktriangleright$}

%=================================
% convenient notations

\newcommand{\lip}{\mathrm{Lip}}
\newcommand{\IND}{\mathbbm{1}}
\newcommand{\argmin}{\mathrm{argmin}}
\newcommand{\capa}{\mathrm{cap}}
\DeclareMathOperator{\supp}{\mathrm{supp}}
\newcommand{\var}{\mathrm{Var}}
\newcommand{\ent}{\mathrm{Ent}}
\newcommand{\tr}{\mathrm{tr}}
\newcommand{\cay}{\mathrm{Cay}}
\newcommand{\De}{\mathrm{d}}

% Calligraphic letters

\newcommand{\cA}{\ensuremath{\mathcal A}}
\newcommand{\cB}{\ensuremath{\mathcal B}}
\newcommand{\cC}{\ensuremath{\mathcal C}}
\newcommand{\cD}{\ensuremath{\mathcal D}}
\newcommand{\cE}{\ensuremath{\mathcal E}}
\newcommand{\cF}{\ensuremath{\mathcal F}}
\newcommand{\cG}{\ensuremath{\mathcal G}}
\newcommand{\cH}{\ensuremath{\mathcal H}}
\newcommand{\cI}{\ensuremath{\mathcal I}}
\newcommand{\cJ}{\ensuremath{\mathcal J}}
\newcommand{\cK}{\ensuremath{\mathcal K}}
\newcommand{\cL}{\ensuremath{\mathcal L}}
\newcommand{\cM}{\ensuremath{\mathcal M}}
\newcommand{\cN}{\ensuremath{\mathcal N}}
\newcommand{\cO}{\ensuremath{\mathcal O}}
\newcommand{\cP}{\ensuremath{\mathcal P}}
\newcommand{\cQ}{\ensuremath{\mathcal Q}}
\newcommand{\cR}{\ensuremath{\mathcal R}}
\newcommand{\cS}{\ensuremath{\mathcal S}}
\newcommand{\cT}{\ensuremath{\mathcal T}}
\newcommand{\cU}{\ensuremath{\mathcal U}}
\newcommand{\cV}{\ensuremath{\mathcal V}}
\newcommand{\cW}{\ensuremath{\mathcal W}}
\newcommand{\cX}{\ensuremath{\mathcal X}}
\newcommand{\cY}{\ensuremath{\mathcal Y}}
\newcommand{\cZ}{\ensuremath{\mathcal Z}}

% Blackboard letters

\newcommand{\bbA}{\ensuremath{\mathbb A}}
\newcommand{\bbB}{\ensuremath{\mathbb B}}
\newcommand{\bbC}{\ensuremath{\mathbb C}}
\newcommand{\bbD}{\ensuremath{\mathbb D}}
\newcommand{\bbE}{\ensuremath{\mathbb E}}
\newcommand{\bbF}{\ensuremath{\mathbb F}}
\newcommand{\bbG}{\ensuremath{\mathbb G}}
\newcommand{\bbH}{\ensuremath{\mathbb H}}
\newcommand{\bbI}{\ensuremath{\mathbb I}}
\newcommand{\bbJ}{\ensuremath{\mathbb J}}
\newcommand{\bbK}{\ensuremath{\mathbb K}}
\newcommand{\bbL}{\ensuremath{\mathbb L}}
\newcommand{\bbM}{\ensuremath{\mathbb M}}
\newcommand{\bbN}{\ensuremath{\mathbb N}}
\newcommand{\bbO}{\ensuremath{\mathbb O}}
\newcommand{\bbP}{\ensuremath{\mathbb P}}
\newcommand{\bbQ}{\ensuremath{\mathbb Q}}
\newcommand{\bbR}{\ensuremath{\mathbb R}}
\newcommand{\bbS}{\ensuremath{\mathbb S}}
\newcommand{\bbT}{\ensuremath{\mathbb T}}
\newcommand{\bbU}{\ensuremath{\mathbb U}}
\newcommand{\bbV}{\ensuremath{\mathbb V}}
\newcommand{\bbW}{\ensuremath{\mathbb W}}
\newcommand{\bbX}{\ensuremath{\mathbb X}}
\newcommand{\bbY}{\ensuremath{\mathbb Y}}
\newcommand{\bbZ}{\ensuremath{\mathbb Z}}

% Frakur letters

\newcommand{\frA}{\ensuremath{\mathfrak A}}
\newcommand{\frB}{\ensuremath{\mathfrak B}}
\newcommand{\frC}{\ensuremath{\mathfrak C}}
\newcommand{\frD}{\ensuremath{\mathfrak D}}
\newcommand{\frE}{\ensuremath{\mathfrak E}}
\newcommand{\frF}{\ensuremath{\mathfrak F}}
\newcommand{\frG}{\ensuremath{\mathfrak G}}
\newcommand{\frH}{\ensuremath{\mathfrak H}}
\newcommand{\frI}{\ensuremath{\mathfrak I}}
\newcommand{\frJ}{\ensuremath{\mathfrak J}}
\newcommand{\frK}{\ensuremath{\mathfrak K}}
\newcommand{\frL}{\ensuremath{\mathfrak L}}
\newcommand{\frM}{\ensuremath{\mathfrak M}}
\newcommand{\frN}{\ensuremath{\mathfrak N}}
\newcommand{\frO}{\ensuremath{\mathfrak O}}
\newcommand{\frP}{\ensuremath{\mathfrak P}}
\newcommand{\frQ}{\ensuremath{\mathfrak Q}}
\newcommand{\frR}{\ensuremath{\mathfrak R}}
\newcommand{\frS}{\ensuremath{\mathfrak S}}
\newcommand{\frT}{\ensuremath{\mathfrak T}}
\newcommand{\frU}{\ensuremath{\mathfrak U}}
\newcommand{\frV}{\ensuremath{\mathfrak V}}
\newcommand{\frW}{\ensuremath{\mathfrak W}}
\newcommand{\frX}{\ensuremath{\mathfrak X}}
\newcommand{\frY}{\ensuremath{\mathfrak Y}}
\newcommand{\frZ}{\ensuremath{\mathfrak Z}}
\newcommand{\fra}{\ensuremath{\mathfrak a}}
\newcommand{\frb}{\ensuremath{\mathfrak b}}
\newcommand{\frc}{\ensuremath{\mathfrak c}}
\newcommand{\frd}{\ensuremath{\mathfrak d}}
\newcommand{\fre}{\ensuremath{\mathfrak e}}
\newcommand{\frf}{\ensuremath{\mathfrak f}}
\newcommand{\frg}{\ensuremath{\mathfrak g}}
\newcommand{\frh}{\ensuremath{\mathfrak h}}
\newcommand{\fri}{\ensuremath{\mathfrak i}}
\newcommand{\frj}{\ensuremath{\mathfrak j}}
\newcommand{\frk}{\ensuremath{\mathfrak k}}
\newcommand{\frl}{\ensuremath{\mathfrak l}}
\newcommand{\frm}{\ensuremath{\mathfrak m}}
\newcommand{\frn}{\ensuremath{\mathfrak n}}
\newcommand{\fro}{\ensuremath{\mathfrak o}}
\newcommand{\frp}{\ensuremath{\mathfrak p}}
\newcommand{\frr}{\ensuremath{\mathfrak r}}
\newcommand{\frs}{\ensuremath{\mathfrak s}}
\newcommand{\frt}{\ensuremath{\mathfrak t}}
\newcommand{\fru}{\ensuremath{\mathfrak u}}
\newcommand{\frv}{\ensuremath{\mathfrak v}}
\newcommand{\frw}{\ensuremath{\mathfrak w}}
\newcommand{\frx}{\ensuremath{\mathfrak x}}
\newcommand{\fry}{\ensuremath{\mathfrak y}}
\newcommand{\frz}{\ensuremath{\mathfrak z}}

% Bold letters

\newcommand{\bfA}{\ensuremath{\mathbf A}}
\newcommand{\bfB}{\ensuremath{\mathbf B}}
\newcommand{\bfC}{\ensuremath{\mathbf C}}
\newcommand{\bfD}{\ensuremath{\mathbf D}}
\newcommand{\bfE}{\ensuremath{\mathbf E}}
\newcommand{\bfF}{\ensuremath{\mathbf F}}
\newcommand{\bfG}{\ensuremath{\mathbf G}}
\newcommand{\bfH}{\ensuremath{\mathbf H}}
\newcommand{\bfI}{\ensuremath{\mathbf I}}
\newcommand{\bfJ}{\ensuremath{\mathbf J}}
\newcommand{\bfK}{\ensuremath{\mathbf K}}
\newcommand{\bfL}{\ensuremath{\mathbf L}}
\newcommand{\bfM}{\ensuremath{\mathbf M}}
\newcommand{\bfN}{\ensuremath{\mathbf N}}
\newcommand{\bfO}{\ensuremath{\mathbf O}}
\newcommand{\bfP}{\ensuremath{\mathbf P}}
\newcommand{\bfQ}{\ensuremath{\mathbf Q}}
\newcommand{\bfR}{\ensuremath{\mathbf R}}
\newcommand{\bfS}{\ensuremath{\mathbf S}}
\newcommand{\bfT}{\ensuremath{\mathbf T}}
\newcommand{\bfU}{\ensuremath{\mathbf U}}
\newcommand{\bfV}{\ensuremath{\mathbf V}}
\newcommand{\bfW}{\ensuremath{\mathbf W}}
\newcommand{\bfX}{\ensuremath{\mathbf X}}
\newcommand{\bfY}{\ensuremath{\mathbf Y}}
\newcommand{\bfZ}{\ensuremath{\mathbf Z}}
\newcommand{\bfa}{\ensuremath{\mathbf a}}
\newcommand{\bfb}{\ensuremath{\mathbf b}}
\newcommand{\bfc}{\ensuremath{\mathbf c}}
\newcommand{\bfd}{\ensuremath{\mathbf d}}
\newcommand{\bfe}{\ensuremath{\mathbf e}}
\newcommand{\bff}{\ensuremath{\mathbf f}}
\newcommand{\bfg}{\ensuremath{\mathbf g}}
\newcommand{\bfh}{\ensuremath{\mathbf h}}
\newcommand{\bfi}{\ensuremath{\mathbf i}}
\newcommand{\bfj}{\ensuremath{\mathbf j}}
\newcommand{\bfk}{\ensuremath{\mathbf k}}
\newcommand{\bfl}{\ensuremath{\mathbf l}}
\newcommand{\bfm}{\ensuremath{\mathbf m}}
\newcommand{\bfn}{\ensuremath{\mathbf n}}
\newcommand{\bfo}{\ensuremath{\mathbf o}}
\newcommand{\bfp}{\ensuremath{\mathbf p}}
\newcommand{\bfq}{\ensuremath{\mathbf q}}
\newcommand{\bfr}{\ensuremath{\mathbf r}}
\newcommand{\bfs}{\ensuremath{\mathbf s}}
\newcommand{\bft}{\ensuremath{\mathbf t}}
\newcommand{\bfu}{\ensuremath{\mathbf u}}
\newcommand{\bfv}{\ensuremath{\mathbf v}}
\newcommand{\bfw}{\ensuremath{\mathbf w}}
\newcommand{\bfx}{\ensuremath{\mathbf x}}
\newcommand{\bfy}{\ensuremath{\mathbf y}}
\newcommand{\bfz}{\ensuremath{\mathbf z}}

% Bold Symbol letters

\newcommand{\bsA}{\ensuremath{\boldsymbol A}}
\newcommand{\bsB}{\ensuremath{\boldsymbol B}}
\newcommand{\bsC}{\ensuremath{\boldsymbol C}}
\newcommand{\bsD}{\ensuremath{\boldsymbol D}}
\newcommand{\bsE}{\ensuremath{\boldsymbol E}}
\newcommand{\bsF}{\ensuremath{\boldsymbol F}}
\newcommand{\bsG}{\ensuremath{\boldsymbol G}}
\newcommand{\bsH}{\ensuremath{\boldsymbol H}}
\newcommand{\bsI}{\ensuremath{\boldsymbol I}}
\newcommand{\bsJ}{\ensuremath{\boldsymbol J}}
\newcommand{\bsK}{\ensuremath{\boldsymbol K}}
\newcommand{\bsL}{\ensuremath{\boldsymbol L}}
\newcommand{\bsM}{\ensuremath{\boldsymbol M}}
\newcommand{\bsN}{\ensuremath{\boldsymbol N}}
\newcommand{\bsO}{\ensuremath{\boldsymbol O}}
\newcommand{\bsP}{\ensuremath{\boldsymbol P}}
\newcommand{\bsQ}{\ensuremath{\boldsymbol Q}}
\newcommand{\bsR}{\ensuremath{\boldsymbol R}}
\newcommand{\bsS}{\ensuremath{\boldsymbol S}}
\newcommand{\bsT}{\ensuremath{\boldsymbol T}}
\newcommand{\bsU}{\ensuremath{\boldsymbol U}}
\newcommand{\bsV}{\ensuremath{\boldsymbol V}}
\newcommand{\bsW}{\ensuremath{\boldsymbol W}}
\newcommand{\bsX}{\ensuremath{\boldsymbol X}}
\newcommand{\bsY}{\ensuremath{\boldsymbol Y}}
\newcommand{\bsZ}{\ensuremath{\boldsymbol Z}}
\newcommand{\bsa}{\ensuremath{\boldsymbol a}}
\newcommand{\bsb}{\ensuremath{\boldsymbol b}}
\newcommand{\bsc}{\ensuremath{\boldsymbol c}}
\newcommand{\bsd}{\ensuremath{\boldsymbol d}}
\newcommand{\bse}{\ensuremath{\boldsymbol e}}
\newcommand{\bsf}{\ensuremath{\boldsymbol f}}
\newcommand{\bsg}{\ensuremath{\boldsymbol g}}
\newcommand{\bsh}{\ensuremath{\boldsymbol h}}
\newcommand{\bsi}{\ensuremath{\boldsymbol i}}
\newcommand{\bsj}{\ensuremath{\boldsymbol j}}
\newcommand{\bsk}{\ensuremath{\boldsymbol k}}
\newcommand{\bsl}{\ensuremath{\boldsymbol l}}
\newcommand{\bsm}{\ensuremath{\boldsymbol m}}
\newcommand{\bsn}{\ensuremath{\boldsymbol n}}
\newcommand{\bso}{\ensuremath{\boldsymbol o}}
\newcommand{\bsp}{\ensuremath{\boldsymbol p}}
\newcommand{\bsq}{\ensuremath{\boldsymbol q}}
\newcommand{\bsr}{\ensuremath{\boldsymbol r}}
\newcommand{\bss}{\ensuremath{\boldsymbol s}}
\newcommand{\bst}{\ensuremath{\boldsymbol t}}
\newcommand{\bsu}{\ensuremath{\boldsymbol u}}
\newcommand{\bsv}{\ensuremath{\boldsymbol v}}
\newcommand{\bsw}{\ensuremath{\boldsymbol w}}
\newcommand{\bsx}{\ensuremath{\boldsymbol x}}
\newcommand{\bsy}{\ensuremath{\boldsymbol y}}
\newcommand{\bsz}{\ensuremath{\boldsymbol z}}

% tilde

\newcommand{\tU}{\tilde{U}}
\newcommand{\tV}{\tilde{V}}
\newcommand{\tb}{\tilde{b}}
\newcommand{\tx}{\tilde{x}}
\newcommand{\ty}{\tilde{y}}
\newcommand{\tp}{\tilde{p}}
\newcommand{\tm}{\tilde{m}}

% Scr symbols

\newcommand{\scrA}{\mathscr{A}}
\newcommand{\scrN}{\mathscr{N}}
\newcommand{\scrU}{\mathscr{U}}
\newcommand{\scrV}{\mathscr{V}}

%=================================
% useful commands


% Probability

\newcommand{\Prob}[1]{\bbP\left(#1\right)}					%	Standard probability command, argument is event
\newcommand{\Probn}[1]{\bbP_n\left(#1\right)}				%	Probability command with subscript n
\newcommand{\CProb}[2]{\bbP\left(\left.#1\right|#2\right)}	%	Conditional probability command, second argument is conditioned event/random variable


% Expectation

\newcommand{\Exp}[1]{\bbE\left[#1\right]}					%	Standard expectation command, argument is random variable
\newcommand{\Expn}[1]{\bbE_n\left[#1\right]}				%	Expectation with subscript n
\newcommand{\CExp}[2]{\bbE\left[\left.#1\right|#2\right]}	%	Conditional expectation, second argument is conditioned event/random variable.


% Probabilistic limits

\newcommand{\plim}{\ensuremath{\stackrel{\bbP}{\rightarrow}}}			%	Convergence in probability
\newcommand{\dlim}{\ensuremath{\stackrel{d}{\rightarrow}}}				%	Convergence in distribution
\newcommand{\aslim}{\ensuremath{\stackrel{\mathrm{a.s.}}{\rightarrow}}}	%	Almost sure convergence
\newcommand{\llim}{\ensuremath{\stackrel{L^1}{\rightarrow}}}			%	L1 convergence

% Scaling notations

\newcommand{\bigO}[1]{O\left(#1\right)}				%	Big O notation
\newcommand{\smallO}[1]{o\left(#1\right)}			%	Small o notation
\newcommand{\bigT}[1]{\Theta\left(#1\right)}		%	Theta notation
\newcommand{\bigOp}[1]{O_\pr \left(#1\right)}		%	Probabilistic big O notation
\newcommand{\smallOp}[1]{o_\pr \left(#1\right)}		%	Probabilistic little o notation

% Indicator command

\newcommand{\ind}[1]{\mathbbm{1}_{\left\{#1\right\}}}	%	Command for indicator where argument is a condition
\newcommand{\indE}[1]{\mathbbm{1}_{#1}}					%	Command for indicator where the argument is an event 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Typography, change document font

\RequirePackage{libertine}
\RequirePackage[cal=rsfso, scr=boondoxo, bb=ams]{mathalfa}
\RequirePackage[T1]{fontenc}

\RequirePackage[protrusion=true,expansion=true]{microtype}

%=================================
% header and footer
\RequirePackage{scrlayer-scrpage}
\pagestyle{scrheadings}
\deftriplepagestyle{pagestyle}
%   [0.5pt]
%   [0.3pt]
  {}
  {}
  {\headmark}
  {}
  {\pagemark}
  {}

\pagestyle{pagestyle}
\renewcommand{\chapterpagestyle}{pagestyle}


%=================================
% draw pictures
\RequirePackage{tikz}
\usetikzlibrary{arrows,positioning,calc} 
\tikzstyle{labeled}=[execute at begin node=$\scriptstyle,
   execute at end node=$]
\RequirePackage{graphicx}

%=================================
% title page
% define university 
\def\@university{no university}
\newcommand{\university}[1]{
  \def\@university{#1}
}
% define course id
\def\@courseid{CS 000}
\newcommand{\courseid}[1]{
  \def\@courseid{#1}
}
% define version
\def\@version{Great Year}
\newcommand{\version}[1]{
  \def\@version{#1}
}
% define instructor info
\def\@instructor{Instructor}
\newcommand{\instructor}[1]{
  \def\@instructor{#1}
}
% make title
\renewcommand{\maketitle}{
    \centering
    {\scshape{\Large  \@university, \@courseid} \par}
    \vspace{1.5cm}
    {\huge\bfseries{\@title} \par}
    \vspace{2cm}
    \includegraphics[width=0.25\textwidth]{figures/TUe_logo.png}
    \vfill
    % Bottom of the page
    {\Large\itshape \@author \par}
    {\large \@version \par}
}

%=================================
% add current instructor info 
% on the right
\newcommand{\curinstructor}[1]{
    % instructor info
    \vfill
    \begin{flushright}
    Instructor: #1
    \end{flushright}
}

%=================================
% quote environment

\makeatletter
\newenvironment{chapquote}[2][2em]
  {\setlength{\@tempdima}{#1}%
   \def\chapquote@author{#2}%
   \parshape 1 \@tempdima \dimexpr\textwidth-2\@tempdima\relax%
   \itshape}
  {\par\normalfont\hfill--\ \chapquote@author\hspace*{\@tempdima}\par\bigskip}
\makeatother