#import "../TUBAF_typst_template/tubaf_template.typ" as tubaf

#show: tubaf.report.with(
  type: "Belegarbeit",
  subtitle: "Entwicklung Automatischer und Autonomer Systeme",
  title: "Planung und Ausführung kollaborativer Bewegungen von Multirobotersystemen in dynamischen Umgebungen",
  authors: ((
    name: "Ben Weckend",
    studentID: "67551",
  ),(
    name: "Martin Werner",
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
  decl_authenticity: false,
  images_outlined: false,
  tables_outlined: false,
  references: "../doc/references.bib"
)

#include "chapters/Systemanalyse.typ"