% Classe LaTeX para prova do IFB. Baseada na classe 'exam'.
% Copyright (C) 2018  Daniel Saad Nogueira Nunes (daniel.nunes@ifb.edu.br)

% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.

% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.

% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{prova-ifb}[2018/04/10 Classe para provas do IFB]
% Extenderemos a classe Beamer
\LoadClass[12pt,addpoints,a4paper]{exam}



\RequirePackage{epigraph}
\RequirePackage[english,brazil]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{datetime}
\RequirePackage{enumerate}
\RequirePackage{url}
\RequirePackage[boxed,algoruled,linesnumbered,vlined,longend]{algorithm2e}
\RequirePackage{amsfonts,amsmath,amssymb}
\RequirePackage{color,colortbl}
\RequirePackage{calc}

%%para inclusão de figuras: jpg, pdf, mps, png
\RequirePackage[pdftex]{graphicx}
\RequirePackage{cancel}%%\cancelto{<value>}{<expression>}
%\newcommand{\docdate}{\today}
%\renewcommand{\solutiontitle}{\noident\textbf{Solução:}}\par\noident
\pagestyle{headandfoot}
\runningheadrule

\footer{$\star$ Certifique-se de assinar todas as folhas de respostas.\\ \begin{flushright}
	Página \thepage{} de \numpages
\end{flushright}}{}%
{\iflastpage{}{}}
\extrafootheight{10mm}

\extrawidth{10mm}
\shadedsolutions
%\boxedpoints2
%\nopointsinmargin
\pointpoints{ ponto}{ pontos}
\pointname{ \points}
%\marginpointname{ \points}
\qformat{\textbf{\large{Questão} \thequestion} \quad (\thepoints)\hfill}

\hpword{Pontos:}
\vpword{Pontos}
\htword{Total}
\vtword{Total}
\vsword{Nota}
\vqword{Questão}

\newcommand{\mostracitacao}[2]{{\iflastpage{\vfill \epigraph{#1}{#2}\extrafootheight{10mm}}{\hfill Continua \ldots}}}
\newcommand{\mostradata}[1][\today]{#1}
\newcommand{\mostrainstituto}[1][Instituto Federal de Educação, Ciência e Tecnologia de Brasília]{#1}
\newcommand{\mostracampus}[1][Campus Taguatinga]{#1}
\newcommand{\mostracurso}[1][Ciência da Computação]{#1}
\newcommand{\mostradisciplina}[1][Teoria da Computação]{#1}
\newcommand{\mostraassunto}[1][Máquinas de Turing]{#1}
\newcommand{\mostraprofessor}[1][Prof. Daniel Saad Nogueira Nunes]{#1}
\newcommand{\mostrasemestre}[1][1$^\circ$/2017]{#1}
\newcommand{\mostraduracao}[1][Duração da prova: 100 minutos]{Duração da prova: {#1} minutos}
\newcommand{\mostraprova}[1][Prova I]{Prova {#1}}
\newcommand{\cabecalho}{	
	\mostrainstituto{} -- \mostracampus\\
	\mostradisciplina{} -- \mostracurso \\
	\mostraprova{} -- \mostrasemestre{} -- \mostraassunto{}\\
	\mostraprofessor
}

\newcommand{\data}[1]{\renewcommand{\mostradata}{#1}}
\newcommand{\instituto}[1]{\renewcommand{\mostrainstituto}{#1}}
\newcommand{\campus}[1]{\renewcommand{\mostracampus}{#1}}
\newcommand{\curso}[1]{\renewcommand{\mostracurso}{#1}}
\newcommand{\disciplina}[1]{\renewcommand{\mostradisciplina}{#1}}
\newcommand{\assunto}[1]{\renewcommand{\mostraassunto}{#1}}
\newcommand{\professor}[1]{\renewcommand{\mostraprofessor}{#1}}
\newcommand{\semestre}[1]{\renewcommand{\mostrasemestre}{#1}}
\newcommand{\duracao}[1]{\renewcommand{\mostraduracao}{Duração: #1 minutos}}
\newcommand{\prova}[1]{\renewcommand{\mostraprova}{Prova #1}}
\newcommand{\citacao}[2]{\mostracitacao{#1}{#2}}


\SetKwFor{For}{for$($}{$)$}{}
\SetKwFor{ForAll}{for all$($}{$)$}{}
\SetKwFor{If}{if$($}{$)$}{}
\SetKwFor{ElseIf}{else if$($}{$)$}{}
\newcommand{\true}{\textbf{true}}
\newcommand{\false}{\textbf{false}}
\newcommand{\Call}[2]{\textsc{#1}(#2)}
\SetFuncSty{textsc}
\DontPrintSemicolon

\renewcommand{\maketitle}{
		\begin{coverpages}
		\begin{titlepage}
		\begin{center}
			\includegraphics[scale=0.3]{IFBVertical.png}


			\cabecalho
		\end{center}
		\begin{minipage}[b]{1.0\linewidth}
			Aluno:\enspace\hbox to 110mm{\hrulefill}\\
			Matrícula:\enspace\hbox to 104mm{\hrulefill}\\
			Data: \mostradata
		\end{minipage}

		\begin{center}
			\fbox{\mostraduracao}
		\end{center}

		\begin{center}
			Tabela de notas (uso exclusivo do professor)\\
			\addpoints
			\gradetable[v][questions]
		\end{center}


		\subsection*{Observações}
		\begin{itemize}
			\item Esta prova tem o total de \totalnumpages{} páginas (excluindo a capa) e \numquestions\ questões.
			\item O número total de pontos é \numpoints.
			\item Certifique-se de assinar todas as folhas de respostas bem como a capa da prova.
			\item Leia atentamente todas as questões da prova. A interpretação do problema é crucial para o desenvolvimento correto da resposta.
			\item Resoluções sem justificativa não serão consideradas.
			\item É vedado o uso de equipamentos eletrônicos, como celulares, notebooks entre outros.
			\item A prova será \textbf{anulada} e medidas disciplinares serão tomadas nos casos de de plágio.
			
		\end{itemize}
	\end{titlepage}
\end{coverpages}
}
