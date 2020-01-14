INPUT: $P\in\procsrecf$ with $P=\procres{a}{P'}$, $\relNames\subset\names$ finite
OUTPUT: $\tracesR{P}$

$T:=\mathtt{calc}(P',\relNames)$ // see %*\color{cdc_Green}{\refFig{fig_comp_comput}}*)
$T':=\emptyset$
foreach $a'\in\names\setminus\fn{\procres{a}{P'}}$ do
  $T'':=T\transp{a'}{a}$
  $T'':=\mathtt{bind}(a', T'')$
  $T'':=\set[\forall{}i\in\N: a'\in\sub{s_i} \Rightarrow \exists{}j\in\N: a'\in\bn{s_j}\wedge{}j<i]{s\in{}T''}$
  $T':=T'\cup T''$
od
return $T'$
