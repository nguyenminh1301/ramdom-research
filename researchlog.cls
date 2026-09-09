\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{researchlog}[2026/09/09 Research log entry class]

\LoadClass[11pt]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage[protrusion=true,expansion=true]{microtype}
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\RequirePackage{geometry}
\RequirePackage{enumitem}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}

\geometry{margin=2.5cm, headheight=14pt}
\definecolor{rlnavy}{RGB}{20,40,110}
\hypersetup{colorlinks=true, linkcolor=rlnavy, urlcolor=rlnavy}

\frenchspacing

\renewcommand{\thesection}{\arabic{section}.}
\titleformat{\section}{\normalfont\large\bfseries}{\thesection}{0.5em}{}[{\titlerule[0.6pt]}]
\titlespacing*{\section}{0pt}{1.4em}{0.8em}

\setlist[itemize]{leftmargin=*, itemsep=0.25em, topsep=0.4em}

\newcommand{\rl@date}{}
\newcommand{\rl@keyword}{}

\newcommand{\researchheader}[2]{%
    \renewcommand{\rl@date}{#1}%
    \renewcommand{\rl@keyword}{#2}%
    \noindent\rule{\linewidth}{0.8pt}\par
    \vspace{0.35em}
    \noindent\textbf{Research date:} #1 \hfill \textbf{Keyword:} #2\par
    \vspace{0.35em}
    \noindent\rule{\linewidth}{0.4pt}
}

\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhead[L]{\small\itshape\rl@keyword}
\fancyhead[R]{\small\rl@date}
\fancyfoot[C]{\small\thepage}
\AtBeginDocument{\thispagestyle{plain}}
\fancypagestyle{plain}{%
    \fancyhf{}
    \fancyfoot[C]{\small\thepage}
    \renewcommand{\headrulewidth}{0pt}
}
