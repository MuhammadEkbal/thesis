INPUT: $P\in\procsrecf$ with $P=\procpar{P_1}{P_2}$, $\relNames\subset\names$ finite
OUTPUT: $\tracesR{P}$

$T_1':=\mathtt{calc}(P_1,\relNames)$ // see %*\color{cdc_Green}{\refFig{fig_comp_comput}}*)
$T_2':=\mathtt{calc}(P_2,\relNames)$ // see %*\color{cdc_Green}{\refFig{fig_comp_comput}}*)
$T_1':=\mathtt{idx}(T_1')$ // adding indices $\color{cdc_Green}{I_P}$ to $\color{cdc_Green}{T_1'}$
$T_2':=\mathtt{idx}(T_2')$ // adding indices $\color{cdc_Green}{I_Q}$ to $\color{cdc_Green}{T_2'}$

$T_0:=\set[i_P\in{}I_P,i_Q\in{}I_Q]{\left(\left(\left(i_P,0\right),\left(i_Q,0\right)\right),\eseq\right)}$
$i:=1$
$finish := false$
while $\neg finish$ do
  $finish := true$
  foreach $((i_P,j_P'),(i_Q,j_Q'),t')\in{}T_{i-1}$ do
    Let $(i_P,s)\in{}T_1'$ and $(i_Q,t)\in{}T_2'$.
    if $j_P'+1\leq\len{s}$ then
      add $((i_P,j_P'+1),(i_Q,j_Q'),\seqconc{t'}{\seq{s_{j_P'+1}}})$ to $T_i$
      $finish := false$
    fi
    if $j_Q'+1\leq\len{t}$ then
      add $((i_P,j_P'),(i_Q,j_Q'+1),\seqconc{t'}{\seq{t_{j_Q'+1}}})$ to $T_i$
      $finish := false$
    fi
    if $j_P'+1\leq\len{s} \wedge j_Q'+1\leq\len{t} \wedge s_{j_P'+1}=\conj{t_{j_Q'+1}}$ then
      add $((i_P,j_P'+1),(i_Q,j_Q'+1),t')$ to $T_i$
      $finish := false$
    fi
  od
  $i:=i+1$
od
return $\set[\exists\left(\cdot,s\right)\in\bigcup_{n\in\N}\tracesI{n}{P}{Q}]{s\in\tr}$
