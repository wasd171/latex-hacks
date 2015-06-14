% Sets minimal LaTeX version
\NeedsTeXFormat{LaTeX2e}

% Class name
\ProvidesClass{customArticle}

% Calls extarticle class and pass all customArticle class options
\LoadClassWithOptions{extarticle}

% Set fonts (XeLaTeX required)
	% Allows to load fonts
	\RequirePackage{fontspec}

	\setmainfont{Helvetica}

	% Use TeX ligatures, like ``something''
	\defaultfontfeatures{Mapping=tex-text}

% Handle Russian language properly
	\newfontfamily{\cyrillicfont}{Helvetica}

	% Customizes lists
	\RequirePackage{enumitem}

	% Sets cyrillic list labels. Usage example: \begin{enumerate}[label=\asbuk*)]
	\AddEnumerateCounter{\Asbuk}{\@Asbuk}{\CYRM}
	\AddEnumerateCounter{\asbuk}{\@asbuk}{\cyrm}

	% Support for Russian language
	\RequirePackage{polyglossia}
	\setdefaultlanguage[spelling=modern]{russian}

	% Sorry, non-Russian speakers :-)
	\setotherlanguage{english}

	% Allows babel-like shorthands, like Einstein"=Podolsky"=Rosen
	\setkeys{russian}{babelshorthands=true}

	% Sets a bit different spacing, required by Russian typography
	\frenchspacing

% Math setup
	% Generic math packages
	\RequirePackage{amsmath}
	\RequirePackage{amssymb}
	\RequirePackage{amsthm}
	\RequirePackage{mathtools}

	% Allows display breaks inside formulae
	\allowdisplaybreaks

	% Controls numeration of equations, figures, etc
	\RequirePackage{chngcntr}

	% Prints nice brackets
	\newcommand{\brround}[1]{\left( #1 \right)}
	\newcommand{\brsquare}[1]{\left[ #1 \right]}

	% Easy partial derivatives
		% Partial derivative with constant #3
		\newcommand{\partfrac}[3]{
		\brround{ \frac{\partial #1}{\partial #2} }_{#3}
		}

		% Partial derivative of a custom power
		\newcommand{\pwrpartfrac}[4]{
		\brround{ \frac{\partial^{#4} #1}{\partial #2^{#4}} }_{#3}
		}

		% Partial derivative of variation
		\newcommand{\dpartfrac}[3]{
		\brround{ \frac{\delta #1}{\partial #2} }_{#3}
		}

	
	% Use fancy vector signs
	\RequirePackage{esvect}

	% Scalar and vector products
	\newcommand{\scprod}[2]{\brround{ \vv{#1} \cdot \vv{#2}}}
	\newcommand{\vecprod}[2]{\brsquare{ \vv{#1} \times \vv{#2}}}

	% Why big Epsilon isn't implemented in standart?
	\newcommand{\Epsilon}[0]{\mathcal{E}}

	% Use nice surface integral signs like \oiint
	\RequirePackage{esint}