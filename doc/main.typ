#import "../TUBAF_typst_template/tubaf_template.typ" as tubaf

#show: tubaf.report.with(
  type: "Belegarbeit",
  title: "Entwicklung Automatischer und Autonomer Systeme",
  subtitle: "Planung und Steuerung von Multirobotersystemen",
  authors: ((
    name: "Ben Weckend",
    studentID: "67551",
  ),(
    name: [\ Martin Werner],
    studentID: "67641"
  )),
  supervisors: ((
    title: "Univ.-Prof. Dr.-Ing.",
    name: "Robert Weidner",
  ),),
  examiners: ((
    title: "Univ.-Prof. Dr.-Ing.",
    name: "Robert Weidner",
  ),),
  lang: "de",
  //references: "references.bib"
)

#include "chapters/Systemanalyse.typ"