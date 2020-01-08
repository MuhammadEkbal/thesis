Kurzhinweise zu bestimmten, wiederkehrenden Problemen:
Deutsche Anführungszeichen oben: "' (nicht einfach nur " oder aus Word ein Unicode-Zeichen kopieren)
Deutsche Anführungszeichen unten: "` (nicht einfach nur " oder aus Word ein Unicode-Zeichen kopieren)
Bindestrich im Wort: "= (IoT"=Plattform, nicht IoT-Plattform, da ein explizit angegebener Bindestrich die weitere Worttrennung verhindert)
Deppenleerzeichen vermeiden: Sensorknoten"=Firmware oder Sensorknotenfirmware, nicht Sensorknoten Firmware (einheitlich halten)
Fancyref nutzen: ... siehe \Fig{abbildung1} anstatt ... siehe Abbildung \ref{fig:abbildung1}
Fancyref nutzen: ... siehe \Tbl{tabelle1} anstatt ... siehe Tabelle \ref{tbl:tabelle1}
Fancyref nutzen: ... siehe \Fref{sec:arch:iot:ssk} anstatt ... siehe Kapitel \ref{sec:arch:iot:ssk} (Wobei Kapitel dann auch noch falsch ist, da es sich um einen Abschnitt handelt)
Labels ordentlich präfixen (für fancyref): fig für Abbildungen, tbl für Tabellen, cha für Kapitel (\chapter), sec für Abschnitte (\section, \subsection, ...)
Aufzählungen explizit angeben: \begin{itemize} \end{itemize} oder \begin{enumeration} \end{enumeration} (Keine Unicode Characters aus Word nehmen, Wenn vereinzelt ein Dot benötigt wird $\cdot$ (kleiner Punkt) oder $\bullet$ (großer Punkt) verwenden)


ngerman
utf8
official
graphicx
placeins
hyperref 	% Links
tikz-uml 	% Definition von UML-Diagrammen (Muss aus dem Internet geladen werden, nicht über MikTex verfügbar)
here 		%großes H um Bilder an genau der Stelle zu erzwingen
