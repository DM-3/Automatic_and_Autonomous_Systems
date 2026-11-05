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

#pagebreak()
*Schritte - Umsetzung mit ROS*
+ Roboter grob kennenlernen: Bedienung Teaching Panel
+ remote Kommunikation mit einem Roboter
+ Ansteuerung eines Roboters über ROS2
+ Darstellung eines Roboters in RViz
+ Bewegungsplanung für einen Roboter
  - planning scene für UR Roboter & Umgebung
  - MoveIt Task Constructor, OMPL
+ Ansteuerung beider Roboter über ROS2
+ Darstellung beider Roboter in RViz
+ Bewegungsplanung für beide Roboter
  - Kombination beider Roboter zu einer planning scene
  - OMPL Planung in 12 dimensionalem Planungsraum
  - (Module für MTC)
+ Constraints
  - relativ in Pose zwischen Endeffektoren zum Greifen der Kiste
  - absolut in Pose zum aufrechten Halten der Kiste
+ Einbau des Greifers
  - Modellierung mit CAD + 3D Druck
+ Erweiterung der Szene
  - Einfügen der Kiste
  - Einfügen des Greifers
+ GUI zur Eingabe von Zielposen
