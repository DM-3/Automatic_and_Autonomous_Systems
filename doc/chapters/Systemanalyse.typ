= Systemanalyse

== Anwendungsproblem

_Idee 1:_ 

// Kollaboration von zwei Cobots zur Erfüllung einer gemeinsamen Aufgabe.
*Kiste*
Zwei Cobots greifen zusammen eine Kiste, welche an einer fest-definierten Position steht, und bewegen diese zu einer anderen Position.
Optional:
- Objekterkennung mit Kamera
- Roboter führen noch andere Einzelaufgaben aus
- Kiste auskippen
- Hindernisse im Arbeitsraum beider Cobots

_Idee 2:_

Zwei Cobots tragen ein Objekt zusammen und lassen sich beliebig in der Schnittsumme iherer beiden Arbeitsräume bewegen.

+ Ziel ist ein Tool zu eintwickel über welches man beide Roboter ansprechen kann für das Manipulieren eines Objektes
+ mit GUI

_Idee 3:_

Ein Cobot hält eine Kugel, der Andere zeichnet mit einem Stift auf die genannte Kugel.

(Welches Anwendungsscenario?)


=== Ausformulierung Idee 2

*Szenario*

In einer Lagerhalle müssen Kisten aus einem Regal ausgeräumt, beziehungsweise in ein Regal eingeräumt werden. Eine mobile Roboterplattform (AGV) realisiert die allgemeine Fortbewegung durch die Lagerhalle. Für das Handling der Kisten kann ein industrieller Roboterarm genutzt werden, der auf dem AGV montiert wird. Form und Gewicht der Kisten stellen für einen einzelnen Roboterarm jedoch eine große Herausforderung dar, weshalb das Handling durch die Zusammenarbeit von zwei Roboterarmen umgesetzt werden soll. Die Aufgabe wird dadurch erschwert, dass die genaue Position der Kisten dem System dynamisch mitgeteilt wird, beispielsweise durch eine Kamera mit Objekterkennung. Für die Bewegungsplanung des Robotersystems ergibt sich somit als Anforderung die gemeinsame, kollisionsfreie Manipulation der Kiste innerhalb kurzer Zeit effizient neu planen zu können. 

- welche Werkstücke? \ Kiste mit beliebigem Inhalt (schwer / unbefestigt)

- welche Leistung? \ Manipulation der Kiste: Hebung, Translation, Rotation

- welche Umgebung? \ Lagerhalle mit gefüllten Regalen - keine Menschen

- welche Randbedingungen? \ mobile Roboterplattform liegt außerhalb der Betrachtung\ Quelle der dynamischen Zielvorgaben liegt außerhalb der Betrachtung

- welche Qualität? \ Genauigkeit der Bewegungen zu einem Grad der jegliche Beschädigung der Werkstücke oder des Robotersystems vermeidet.


*Distillation*

Zwei Cobots tragen ein Objekt zusammen und lassen sich beliebig in der Schnittmenge iherer beiden Arbeitsräume bewegen.

Projektziele:
+ gleichzeitige Bewegungsplanung für beide Roboter
  - keine Kollisionen zwischen Roboter und Umgebung
  - keine Kollisionen zwischen Roboter und Roboter
  - $->$ Zusammenfassung zu einem System mit 12 Freiheitsgraden
+ Ansteuerung beider Roboter
  - idealerweise über Open-Source Alternativen
+ Modellierung von Constraints...
  - in der relativen Pose zwischen den Robotern (gemeinsames Halten der Kiste)
  - in der absoluten Pose (aufrechtes Halten der Kiste)
+ GUI zur Vorgabe von Zielposen
