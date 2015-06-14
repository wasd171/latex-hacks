% Set minimal LaTeX version
\NeedsTeXFormat{LaTeX2e}

% Class name
\ProvidesClass{customArticle}

% Call extarticle class and pass all customArticle class options
\LoadClassWithOptions{extarticle}

% Set fonts (XeLaTeX required)
	% Allow to load fonts
	\RequirePackage{fontspec}

	\setmainfont{Helvetica}

	% Use TeX ligatures, like ``something''
	\defaultfontfeatures{Mapping=tex-text}

% Handle Russian language properly
	\newfontfamily{\cyrillicfont}{Helvetica}

	% Customize lists
	\RequirePackage{enumitem}

	% Set cyrillic list labels. Usage example: \begin{enumerate}[label=\asbuk*)]
	\AddEnumerateCounter{\Asbuk}{\@Asbuk}{\CYRM}
	\AddEnumerateCounter{\asbuk}{\@asbuk}{\cyrm}

	% Support for Russian language
	\RequirePackage{polyglossia}
	\setdefaultlanguage[spelling=modern]{russian}

	% Sorry, non-Russian speakers :-)
	\setotherlanguage{english}

	% Allow babel-like shorthands, like Einstein"=Podolsky"=Rosen
	\setkeys{russian}{babelshorthands=true}

	% Sets a bit different spacing, required by Russian typography
	\frenchspacing