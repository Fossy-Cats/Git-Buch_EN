# AsciiDoc Sources

This folder contains the AsciiDoc sources of the English translation of the _Git-Buch_.

> __STATUS__ — Adapting German sources to __[Asciidoctor]__ toolchain.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
- [Sources Adaptation](#sources-adaptation)
    - [Upstream Correspondence](#upstream-correspondence)

<!-- /MarkdownTOC -->

-----

# Folder Contents

- [`/images/`][images] — required book images.
- [`build.sh`][build.sh] — generates HTML5 book via Asciidoctor:
    + [`Git-Buch_EN.html`][gb.html] — HTML5 book.
- [`gitbuch.asciidoc`][gb.adoc] — main book source that imports all others:
    + [`gitbuch_00.adoc`][gb00] — Preface
    + [`gitbuch_01.adoc`][gb01] — 1. Introduction and First Steps
    + [`gitbuch_02.adoc`][gb02] — 2. The Basics
    + [`gitbuch_03.adoc`][gb03] — 3. Practical Version Control
    + [`gitbuch_04.adoc`][gb04] — 4. Advanced Concepts
    + [`gitbuch_05.adoc`][gb05] — 5. Distributed Git
    + [`gitbuch_06.adoc`][gb06] — 6. Workflows
    + [`gitbuch_07.adoc`][gb07] — 7. Git Servers
    + [`gitbuch_08.adoc`][gb08] — 8. Git Automation
    + [`gitbuch_09.adoc`][gb09] — 9. Interacting with Other Version Control Systems
    + [`gitbuch_10.adoc`][gb10] — 10. Shell-Integration
    + [`gitbuch_11.adoc`][gb11] — 11. GitHub
    + [`gitbuch_12.adoc`][gb12] — App. A. Installation
    + [`gitbuch_13.adoc`][gb13] — App. B. Repository Structure

# Sources Adaptation

The upstream repository used __[AsciiDoc]__ (Python) to build the _Git-Buch_, whereas this repository uses __[Asciidoctor]__ (Ruby), therefore some adaptations were applied to the sources formatting and conventions due to slight differences between the two AsciiDoc implementations and in order to benefit from the additional features of Asciidoctor.

All sources were renamed using a two-digits counter indicating their order of appearance in the book; furthermore all files extensions where changed from `.txt` to `.adoc`, with the exception of the main entry file which assigned the `.asciidoc` extension to distinguish it from the other sources which are imported via the `include::` directive.

Some unbalanced block delimiters errors had to be fixed in the original sources for they were breaking the document.

## Upstream Correspondence

The following table shows the correspondence between the current sources and their original counterparts on the upstream repository.

|          source file          |                 adapted from                 |          chapter title / file description         |
|-------------------------------|----------------------------------------------|---------------------------------------------------|
| [`gitbuch.asciidoc`][gb.adoc] | [`git.txt`][git.txt]                         | main entry file.                                  |
| [`gitbuch_00.adoc`][gb00]     | [`vorwort.txt`][vorwort.txt]                 | Preface                                           |
| [`gitbuch_01.adoc`][gb01]     | [`erste_schritte.txt`][erste_schritte.txt]   | 1. Introduction and First Steps                   |
| [`gitbuch_02.adoc`][gb02]     | [`grundlagen.txt`][grundlagen.txt]           | 2. The Basics                                     |
| [`gitbuch_03.adoc`][gb03]     | [`praxis.txt`][praxis.txt]                   | 3. Practical Version Control                      |
| [`gitbuch_04.adoc`][gb04]     | [`advanced.txt`][advanced.txt]               | 4. Advanced Concepts                              |
| [`gitbuch_05.adoc`][gb05]     | [`remote.txt`][remote.txt]                   | 5. Distributed Git                                |
| [`gitbuch_06.adoc`][gb06]     | [`workflows.txt`][workflows.txt]             | 6. Workflows                                      |
| [`gitbuch_07.adoc`][gb07]     | [`server.txt`][server.txt]                   | 7. Git Servers                                    |
| [`gitbuch_08.adoc`][gb08]     | [`automatisierung.txt`][automatisierung.txt] | 8. Git Automation                                 |
| [`gitbuch_09.adoc`][gb09]     | [`zusammenspiel.txt`][zusammenspiel.txt]     | 9. Interacting with Other Version Control Systems |
| [`gitbuch_10.adoc`][gb10]     | [`shell.txt`][shell.txt]                     | 10. Shell-Integration                             |
| [`gitbuch_11.adoc`][gb11]     | [`github.txt`][github.txt]                   | 11. GitHub                                        |
| [`gitbuch_12.adoc`][gb12]     | [`installation.txt`][installation.txt]       | App. A. Installation                              |
| [`gitbuch_13.adoc`][gb13]     | [`gitdir.txt`][gitdir.txt]                   | App. B. Repository Structure                      |




<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[AsciiDoc]: https://asciidoc.org "Visit AsciiDoc (Python) website"
[Asciidoctor]: https://asciidoctor.org "Visit Asciidoctor (Ruby) website"

<!-- project files -->

[images]: ./images/ "Navigate to book images folder"
[build.sh]: ./build.sh "View script source"

<!-- ADoc sources & HTML -->

[gb.html]: ./Git-Buch_EN.html "View HTML document"
[gb.adoc]: ./gitbuch.asciidoc "View AsciiDoc source file"
[gb00]: ./gitbuch_00.adoc "View AsciiDoc source file"
[gb01]: ./gitbuch_01.adoc "View AsciiDoc source file"
[gb02]: ./gitbuch_02.adoc "View AsciiDoc source file"
[gb03]: ./gitbuch_03.adoc "View AsciiDoc source file"
[gb04]: ./gitbuch_04.adoc "View AsciiDoc source file"
[gb05]: ./gitbuch_05.adoc "View AsciiDoc source file"
[gb06]: ./gitbuch_06.adoc "View AsciiDoc source file"
[gb07]: ./gitbuch_07.adoc "View AsciiDoc source file"
[gb08]: ./gitbuch_08.adoc "View AsciiDoc source file"
[gb09]: ./gitbuch_09.adoc "View AsciiDoc source file"
[gb10]: ./gitbuch_10.adoc "View AsciiDoc source file"
[gb11]: ./gitbuch_11.adoc "View AsciiDoc source file"
[gb12]: ./gitbuch_12.adoc "View AsciiDoc source file"
[gb13]: ./gitbuch_13.adoc "View AsciiDoc source file"

<!-- upstream sources -->

[advanced.txt]: https://github.com/gitbuch/gitbuch_cc/blob/master/advanced.txt "View upstream source file"
[automatisierung.txt]: https://github.com/gitbuch/gitbuch_cc/blob/master/automatisierung.txt "View upstream source file"
[erste_schritte.txt]: https://github.com/gitbuch/gitbuch_cc/blob/master/erste_schritte.txt "View upstream source file"
[git.txt]: https://github.com/gitbuch/gitbuch_cc/blob/master/git.txt "View upstream source file"
[gitdir.txt]: https://github.com/gitbuch/gitbuch_cc/blob/master/gitdir.txt "View upstream source file"
[github.txt]: https://github.com/gitbuch/gitbuch_cc/blob/master/github.txt "View upstream source file"
[grundlagen.txt]: https://github.com/gitbuch/gitbuch_cc/blob/master/grundlagen.txt "View upstream source file"
[installation.txt]: https://github.com/gitbuch/gitbuch_cc/blob/master/installation.txt "View upstream source file"
[praxis.txt]: https://github.com/gitbuch/gitbuch_cc/blob/master/praxis.txt "View upstream source file"
[remote.txt]: https://github.com/gitbuch/gitbuch_cc/blob/master/remote.txt "View upstream source file"
[server.txt]: https://github.com/gitbuch/gitbuch_cc/blob/master/server.txt "View upstream source file"
[shell.txt]: https://github.com/gitbuch/gitbuch_cc/blob/master/shell.txt "View upstream source file"
[vorwort.txt]: https://github.com/gitbuch/gitbuch_cc/blob/master/vorwort.txt "View upstream source file"
[workflows.txt]: https://github.com/gitbuch/gitbuch_cc/blob/master/workflows.txt "View upstream source file"
[zusammenspiel.txt]: https://github.com/gitbuch/gitbuch_cc/blob/master/zusammenspiel.txt "View upstream source file"

<!-- EOF -->
