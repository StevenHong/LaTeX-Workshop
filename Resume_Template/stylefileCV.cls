\NeedsTeXFormat{LaTeX2e} %This is the version of Latex that we are using (it is the current standard version)
\ProvidesClass{stylefileCV}[2014/2/27 My custom CV class]
\LoadClass{article} %Now we don't have to declare a class environment in our actual CV.tex file

%For style files, instead of using \includepackage, you want to use the command \RequirePackage
\RequirePackage[margin=.75in]{geometry} %sets up my margins
\RequirePackage{setspace} 
\RequirePackage{hyperref} 
\RequirePackage{enumitem}%To create new environments
\RequirePackage{fancyhdr} %This allows me to create nice header and footer
\RequirePackage{lastpage} %This package allows my latex file to know how many pages I have, and allows me to reference the final page in my document (see \lastpage command)
\RequirePackage{everypage}
\RequirePackage{url}%insert a URL

%STYLING COMMANDS for text
%    \bf, \it - make the heading bold or italic,
%    \scshape - small capitals,
%    \small, \normalsize, \large, \Large, \LARGE, \huge, \Huge - set the font size,
%    \rmfamily, \sffamily, \ttfamily - set the font type to serifed, san serifed or typewriter respectively.

%**********************New commands************************************************
\newcommand{\lineunder}{\vspace*{-8pt} \\ \hspace*{-18pt} \hrulefill \\}
\newcommand{\header}[1]{{\hspace*{-15pt}\vspace*{6pt} \Large \textsc{#1}} \vspace*{-6pt}\lineunder\vspace*{-12pt}}

%**********************Header and footer **********************************************
\newcommand{\insertheaderandfooter}{
\fancyhf{} % clear all header and footer fields
\renewcommand\headrulewidth{0pt} %gets rid of line in the header
\pagestyle{fancy} %allows us to use \lhead, \chead, etc

	{ 
	\lhead{}
	\chead{}
	\rhead{}
	\lfoot{}
	\cfoot{}
	\rfoot{\small\textit{Page \thepage\ of  \pageref{LastPage}}} 
 	\renewcommand\footrulewidth{0pt} %can control spacing of where footer lands
	}
}

%**********************Name and contact info *************************************************************

\newcommand{\name}[1]{
 \centerline{\selectfont\scshape\Huge{#1}}
  \vspace*{-6pt}\hrulefill
}

% For address, we have #1 address, #2 city & state, #3 zip code & country 
\newcommand{\address}[3]{
   \centerline
   {
   	#1, #2, #3
    }
}

% For contact, we have e-mail, phone number (and you could potentially add a website too)
\newcommand{\contact}[2]{   
  \centerline
  {
	E-mail: #1 $\bullet$ Phone: #2 
  }
}

%********************** Environments for different sections of resume*************************************

%%%%This section sets of the special spacing you can use for your different environments (i.e. indentations and separation between items in the environment--notice that for the references, to have a left-hanging indent, you must use the negative sign)
\newlength{\newindent}
\setlength{\newindent}{10 pt}
\newlength{\itemsepnew}
\setlength{\itemsepnew}{0.2 em}
\newlength{\refsep}
\setlength{\refsep}{0.1 in}

\newenvironment{education}{\begin{list}{}{\setlength\leftmargin{2\newindent} \setlength\topsep{0pt} \setlength\itemsep{\itemsepnew} \setlength{\itemindent}{-\newindent}}}{\vspace*{0pt}\end{list}\vspace*{12pt}}

\newenvironment{references}{\begin{enumerate}{}{\setlength\leftmargin{2\newindent} \setlength\topsep{0pt} \setlength\itemsep{\refsep} \setlength{\itemindent}{-\newindent}}}{\vspace*{0pt}\end{enumerate}\vspace*{6pt}}

\newenvironment{experience}{\begin{list}{}{\setlength\leftmargin{2\newindent} \setlength\topsep{0pt} \setlength\itemsep{\itemsepnew} \setlength{\itemindent}{-\newindent}}}{\vspace*{0pt}\end{list}\vspace*{6pt}}

\newenvironment{experiencedetail}{\begin{list}{}{\setlength\leftmargin{2.5\newindent} \setlength\topsep{0pt} \setlength\itemsep{-\itemsepnew} \setlength{\itemindent}{-\newindent}}}{\vspace*{0pt}\end{list}\vspace*{6pt}}

\newenvironment{achievements}{\begin{list}{}{\setlength\leftmargin{\newindent} \setlength\topsep{0pt} \setlength\itemsep{\itemsepnew}}}{\vspace*{0pt}\end{list}\vspace*{6pt}}


%********************** Body commands****************************************************************************

%for school, we have the university, the location, the year, and the degree
\newcommand{\school}[4]{\textbf{#1} #2  \hfill \textit{#3} \newline #4}
%for award, we have the award, from who, the description, and the year
\newcommand{\award}[4]{$\bullet$ \textbf{#1}, \textit{#2}#3. \hfill \textit{#4}}
%for experience, we have company, location, years worked there
\newcommand{\experienceitem}[3]{\textbf{#1}, #2 \hfill \textit{#3}}
%for experiencesubitem, we have just description of something we did
\newcommand{\experiencesubitem}[1]{$\bullet$ #1}





















