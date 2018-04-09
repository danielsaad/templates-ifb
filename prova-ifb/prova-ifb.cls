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



%%para inclusão de figuras: jpg, pdf, mps, png
\RequirePackage[pdftex]{graphicx}
\RequirePackage{cancel}%%\cancelto{<value>}{<expression>}
%\newcommand{\docdate}{\today}
%\renewcommand{\solutiontitle}{\noident\textbf{Solução:}}\par\noident
\pagestyle{headandfoot}
\runningheadrule

\footer{$\star$ Certifique-se de assinar todas as folhas de resposta.}{}%
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

\newcommand{\citacao}[2]{{\iflastpage{\vfill \epigraph{#1}{#2}\extrafootheight{10mm}}{\hfill Continua \ldots}}}
\newcommand{\data}[1][\today]{#1}
\newcommand{\instituto}[1][Instituto Federal de Educação, Ciência e Tecnologia de Brasília]{#1}
\newcommand{\campus}[1][Câmpus Taguatinga]{#1}
\newcommand{\curso}[1][Ciência da Computação]{#1}
\newcommand{\disciplina}[1][Estrutura de Dados e Algoritmos]{#1}
\newcommand{\assunto}{Algoritmos, Alocação Dinâmica e Ordenação}
\newcommand{\professor}{Prof. Daniel Saad Nogueira Nunes}
\newcommand{\semestre}{1$^\circ$/2017}
\newcommand{\duracao}{Duração da prova: 100 minutos}
\newcommand{\prova}{Prova I}
\newcommand{\cabecalho}{
	
	\instituto{} -- \campus\\
	\curso{} -- \disciplina\\
	\prova{} -- \semestre{} -- \assunto\\
	\professor
}



\SetKwFor{For}{for$($}{$)$}{}
\SetKwFor{ForAll}{for all$($}{$)$}{}
\SetKwFor{If}{if$($}{$)$}{}
\SetKwFor{ElseIf}{else if$($}{$)$}{}
\newcommand{\true}{\textbf{true}}
\newcommand{\false}{\textbf{false}}
\newcommand{\Call}[2]{\textsc{#1}(#2)}
\SetFuncSty{textsc}
\DontPrintSemicolon



