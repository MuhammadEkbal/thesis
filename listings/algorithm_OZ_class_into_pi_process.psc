INPUT: $C\in \ozclasses$
OUTPUT: $P\in\procs$

$P:=0$
$M:=0$

foreach $op\in  Operations_C$ do
  if $op.type = 'output'$ then
	$M:= M + \tau.op.name<op.params>.P$
  else if $op.type = input$ then
	$M:= M + op.name(op.params).P$
  else if $op.type = mixed$ then
	$error$
  fi
od
$P:=M$
return $P$




INPUT: $C\in OZ\ classes$
OUTPUT: $P\in\procs$

$P(v\_st):=0$
$M:=0$

foreach $op\in  Operations_C$ do
  if $op.type = 'output'$ then
	$M:= M + (op.preCond)op.name<op.params>.\ \sum_{v\_st'}P(v\_st')$
  else if $op.type = input$ then
	$M:= M + (op.preCond)op.name(op.params).\ \sum_{v\_st'}P(v\_st')$
  else if $op.type = mixed$ then
	$error$
  fi
od
$P:=M$
return $P$
