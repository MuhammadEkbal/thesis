INPUT: $P\in\procsrecf$, $\relNames\subset\names$ finite
OUTPUT: $\tracesR{P}$

$P':= \mathtt{esf}(P)$ // to extended standard form
switch $P'$ do
  case $P'=\proczero$: return $\set{\eseq}$
  case $P'=\tau.P''$: return $\mathtt{calc}(P'',\relNames)$
  case $P'=\out{a}{x}.P''$: $T:=\mathtt{calc}(P'',\relNames)$
                   return $\set{\eseq{}}\cup\seqconc{\set{\outa{a}{x}}}{T}$
  case $P'=\inp{a}{x}.P''$: return $\mathtt{calc}_{\mathtt{inp}}(P',\relNames)$ // see %*\color{cdc_Green}{\refFig{fig_comp_comput_inp}}*)
  case $P'=\procchoice{M_1}{M_2}$: $T_1:=\mathtt{calc}(M_1,\relNames)$
                   $\;T_2:=\mathtt{calc}(M_2,\relNames)$
                   return $M_1\cup{}M_2$
  case $P'=\procpar{P_1}{P_2}$: return $\mathtt{calc}_{\mathtt{par}}(P',\relNames)$ // see %*\color{cdc_Green}{\refFig{fig_comp_comput_par}}*)
  case $P'=\procres{a}{P''}$: return $\mathtt{calc}_{\mathtt{res}}(P',\relNames)$ // see %*\color{cdc_Green}{\refFig{fig_comp_comput_res}}*)
od
