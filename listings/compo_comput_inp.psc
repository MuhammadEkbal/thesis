INPUT: C an OZ class
OUTPUT: $P\in\procs$

$Tr:=\mathtt{calc}(P',\relNames)$ // see %*\color{cdc_Green}{\refFig{fig_comp_comput}}*)

$T:=\emptyset$
foreach $n\in\relNames\cup\fn{P}$ do
  if $n\nin\fn{P'}$ then 
    $T':=Tr\transp{n}{x}$ // cf. %*\color{cdc_Green}{\refCor{cor_subst_trace_inclusion}}*)
  else if $n=x$ then
    $T':=Tr$
  else
    $P'':= P'\subs{n}{x}$
    $T':= \mathtt{calc}(P'',\relNames)$ // see %*\color{cdc_Green}{\refFig{fig_comp_comput}}*)
  fi
  $T := T \cup \set{\eseq} \cup \seqconc{\set{\seq{\inpa{a}{n}}}}{T'}$
od
return $T$
