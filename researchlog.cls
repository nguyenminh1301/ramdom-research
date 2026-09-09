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

\geometry{margin=2.5cm}
\hypersetup{colorlinks=true, linkcolor=blue, urlcolor=blue}

\titleformat{\section}{\normalfont\Large\bfseries}{\thesection}{0pt}{}[{\color{black!30}\titlerule}]
\titlespacing*{\section}{0pt}{1.4em}{0.8em}

\setlist[itemize]{leftmargin=*, itemsep=0.25em, topsep=0.4em}

\newcommand{\researchheader}[2]{%
    \textbf{Research date:} #1

    \textbf{Keyword:} #2
}
