\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{researchlog}[2026/09/09 Research log entry class]

\LoadClass[11pt]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{hyperref}
\RequirePackage{geometry}
\RequirePackage{enumitem}

\geometry{margin=2.5cm}
\hypersetup{colorlinks=true, linkcolor=blue, urlcolor=blue}

\newcommand{\researchheader}[2]{%
    \textbf{Research date:} #1

    \textbf{Keyword:} #2
}
