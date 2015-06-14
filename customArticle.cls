% Set minimal LaTeX version
\NeedsTeXFormat{LaTeX2e}

% Class name
\ProvidesClass{customArticle}

% Call extarticle class and pass all customArticle class options
\LoadClassWithOptions{extarticle}

% Set fonts (XeLaTeX required)
	% Allow to load fonts
	\usepackage{fontspec}

	\setmainfont{Helvetica} 