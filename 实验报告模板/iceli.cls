%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% iceli.cls
% IC定义模式
% 由eli制作
% version 2.71 [e]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 参考 ...
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iceli}[2022/02/26 v2.71 
The LaTeX template for Experiment Report in Modern Physics of MIC]
\typeout{Document Class `iceli' v2.71 by Eli }
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
%命令\ DeclareOption {} {}处理给定的选项。 它有两个参数，第一个是选项的名称，第二个是如果传递选项则要执行的代码。
%命令\ Declareoption * {}处理未明确定义的每个选项，即命令的默认选项。 它仅需一个参数，即传递未知选项时执行的代码。
\ProcessOptions\relax
%为每个选项执行代码，并且在键入所有选项处理命令之后必须将其插入。 该命令有一个加星标的版本，它将按照调用命令指定的确切顺序执行选项。
\LoadClass[twocolumn, twoside, a4paper, UTF8]{ctexart}
%给出了该类所继承的父类，一般宏包都是依托于其他宏包编写的。这里给出依托的其他类名，这样我们没有设置格式的其他文章结构都会使用父类默认的格式。

%-------------------------------------------------------
\usepackage{fancyhdr}%用于定义和修改页脚页眉等
\usepackage{amsmath,amsfonts,amssymb,graphicx}    % EPS 图片支持
\usepackage{subfigure}   % 使用子图形
\usepackage{indentfirst} % 中文段落首行缩进
\usepackage{bm}          % 公式中的粗体字符(用命令\boldsymbol）
\usepackage{indentfirst} % 中文首段缩进
\usepackage{abstract}    % 2栏文档，一栏摘要及关键字宏包
\usepackage{amsthm}      % 使用定理
\usepackage{booktabs}    % 使用表格
\usepackage{siunitx}     %可用于输入物理单位
\usepackage{tikz}        %用于绘制图形
\usepackage{titlesec}    %一个包，提供对 从各种标题样式中选择
\usepackage{times}       %正文中使用Times New Roman字体只需使用times宏包，但必须使用PDFLaTeX编译,
\usepackage{wasysym}     %The wasy (Waldi Symbol) font by Roland Waldi provides many glyphs like male and female symbols and astronomical symbols, as well as the complete lasy font set and other odds and ends. This package implements an easy to use interface for these symbols.
\usepackage{pifont}      %The package provides commands for Pi fonts (Dingbats, Symbol, etc.); all commands assume you know the character number within the font of the symbol within the font.
\usepackage{ccaption}    %A package providing commands for ‘continuation captions’, unnumbered captions, and also a non-specific legend heading for any environment. Methods are also provided to define captions for use outside float (e.g., figure and table) environments, and to define new float environments and Lists of Floats. Tools are provided for specifying your own captioning styles.
\usepackage{float}
\usepackage{calc}
\usetikzlibrary{calc}
\usepackage{environ}
\usepackage{lmodern}
\usepackage{unicode-math}
\usepackage[sort&compress]{gbt7714}
\usepackage{anyfontsize}
\usepackage{hyperref}
\usepackage{tabu}
\usepackage{longtable}
\usepackage{makecell}

%设置字体
\setmainfont{Times New Roman}

\newcommand{\erhao}{\fontsize{22pt}{\baselineskip}\selectfont}      % 字号设置
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}      % 字号设置
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}  % 字号设置
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}    % 字号设置
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}   % 字号设置
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}  % 字号设置
\newcommand{\myxiaoliuhao}{\fontsize{6.5pt}{\baselineskip}\selectfont}  % 字号设置
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}    % 字号设置

\renewcommand{\tablename}{表}
\renewcommand{\figurename}{图}
\captiondelim{~~}
\setlength{\abovecaptionskip}{2pt}
\setlength{\belowcaptionskip}{2pt}
%公式与上下文间距设置
\DeclareRobustCommand{\ttfamily}{\fontencoding{T1}\fontfamily{lmtt}\selectfont}
%可以用来定义新的命令。
%--------------------------------------------------------
% 重定义页面边距，使其符合中文刊物习惯。
\usepackage{lettrine}%lettrrine 包支持各种大写字母样式， 通常是法语排版书籍中描述的那些。
\setlength{\parindent}{2em}
\setlength{\voffset}{-4mm}
\setlength{\parskip}{1pt}
\renewcommand{\baselinestretch}{1.15} %定义行间距1.15
\setcounter{page}{1} \makeatletter
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {1.5ex }%
                                   {1.5ex}%
                                   {\normalfont\bfseries\sihao}}
\renewcommand\subsection{\@startsection {subsection}{1}{\z@}%
                                   {-1pt }%
                                   {1pt}%
                                   {\normalfont\bfseries\heiti\wuhao}}
\renewcommand\subsubsection{\@startsection {subsubsection}{1}{\z@}%
                                   {-1pt }%
                                   {1pt}%
                                   {\normalfont\wuhao}}

 

\usepackage{geometry}
\newgeometry{
  top=25.4mm, bottom=22.5mm, left=20mm, right=20mm,
  headsep=5mm, headheight=10mm, footskip=10mm,
}
\savegeometry{mastergeometry}
\loadgeometry{mastergeometry}

\setlength{\columnsep}{10mm}


\newcommand{\positiontextbox}[4][]{
  \begin{tikzpicture}[remember picture,overlay]
    \node[inner sep=0pt,right,align=left, #1] at ($(current page.north west) + (#2,-#3)$) {#4};
  \end{tikzpicture}
}

%The package offers tools for collecting and executing an environment’s body.
\NewEnviron{empAbstract}{
\vspace{-3em}
\begin{center}
\parbox{\textwidth}{
\wuhao\setlength{\parindent}{2em}
\newlength{\somelength}

{\heiti\wuhao \makebox[\widthof{【关键词】}][s]{【摘 要】}}
{\xiaowuhao 
\BODY
}

{\heiti\wuhao \makebox[\widthof{【关键词】}][s]{【关键词】}} \heiti \wuhao \empKeyword

\vspace*{1.3cm}}
\end{center}
}

\def\empKeyword{}
\newcommand{\Keyword}[1]{
    \def\empKeyword{#1}
}


%%题目
\newcommand\emptitle[1]{
\title{
\vspace{0.5cm} \erhao #1 \vspace{-0.2cm}
}
}

%%作者
\newcommand\empauthor[2]{
\author{
\sihao\kaishu #1\makebox{$^{\text{*}}$} \\[0.1cm]
\liuhao \kaishu ~~华中科技大学~~物理系，武汉\ 
}
}

\date{}

%%首页脚注
\newcommand\empfirstfoot[4]{
\positiontextbox{2.0cm}{27cm}{
\noindent\rule{4cm}{.5pt}\\[0.5ex]%
\hspace*{1em} \liuhao \linespread{0.8}\selectfont
\parbox{\textwidth}{
\heiti\makebox[\widthof{\makebox{*}实}][r]{实}验时间: #1\\
\heiti\makebox[\widthof{\makebox{*}实}][r]{报}告时间: #2\\
\heiti\makebox[\widthof{\makebox{*}实}][r]{\makebox{*}学}号：#3 \\
\heiti\makebox[\widthof{\makebox{*}实}][r]{\makebox{*}E-}mail：#4 \\
}}
}

%--------------------------------------------------------
% 首页页眉页脚定义
\fancypagestyle{plain}{ \fancyhf{}\vspace{10pt}
\lhead{}
\chead{\vspace{0.6cm}\centering{{\heiti\xiaowuhao 华\ 中\ 科\ 技\ 大\ 学\ 近\ 代\ 物\ 理\ 实\ 验}\\[-0.5ex]
{{\xiaowuhao Experiments in Modern Physics, Huazhong University of Science and Technology}}}}
\rhead{}
\lfoot{}
\cfoot{}
\rfoot{}
\renewcommand{\headrule}{%
\hrule height0.4pt width \headwidth \vskip1.0pt%
\hrule height0.4pt width \headwidth \vskip-2pt}}
%----------------------------------------------------
\pagestyle{fancy} 
\fancyhf{}
\fancyhead[CE]{{\footnotesize 华中科技大学近代物理实验}}
\fancyhead[LE,RO]{~~~\footnotesize\thepage ~~~}
\lfoot{}
\cfoot{}
\rfoot{}


\DeclareMathSizes{10.5}{10}{6.8}{4.2}
\setlength{\abovedisplayskip}{2.5mm}
\setlength{\belowdisplayskip}{2.5mm}
