# AsciiDoc Sources

This folder contains the AsciiDoc sources of the English translation of the _Git-Buch_.

> __STATUS__ — Adapting German sources to __[Asciidoctor]__ toolchain.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Sources Adaptation](#sources-adaptation)
    - [Upstream Correspondence](#upstream-correspondence)

<!-- /MarkdownTOC -->

-----

# Sources Adaptation

The upstream repository used __[AsciiDoc]__ (Python) to build the _Git-Buch_, whereas this repository uses __[Asciidoctor]__ (Ruby), therefore some adaptations were applied to the sources formatting and conventions due to slight differences between the two AsciiDoc implementations and in order to benefit from the additional features of Asciidoctor.

All sources were renamed using a two-digits counter indicating their order of appearance in the book; furthermore all files extensions where changed from `.txt` to `.adoc`, with the exception of the main entry file which assigned the `.asciidoc` extension to distinguish it from the other sources which are imported via the `include::` directive.

Some unbalanced block delimiters errors had to be fixed in the original sources for they were breaking the document.

## Upstream Correspondence

The following table shows the correspondence between the current sources and their original counterparts on the upstream repository.

|              source file               |                 adapted from                 |   description    |
|----------------------------------------|----------------------------------------------|------------------|
| [`gitbuch.asciidoc`][gitbuch.asciidoc] | [`git.txt`][git.txt]                         | main entry file. |
| [`gitbuch_00.adoc`][gitbuch_00.adoc]   | [`vorwort.txt`][vorwort.txt]                 | Preface          |
| [`gitbuch_01.adoc`][gitbuch_01.adoc]   | [`erste_schritte.txt`][erste_schritte.txt]   | Ch. 1            |
| [`gitbuch_02.adoc`][gitbuch_02.adoc]   | [`grundlagen.txt`][grundlagen.txt]           | Ch. 2            |
| [`gitbuch_03.adoc`][gitbuch_03.adoc]   | [`praxis.txt`][praxis.txt]                   | Ch. 3            |
| [`gitbuch_04.adoc`][gitbuch_04.adoc]   | [`advanced.txt`][advanced.txt]               | Ch. 4            |
| [`gitbuch_05.adoc`][gitbuch_05.adoc]   | [`remote.txt`][remote.txt]                   | Ch. 5            |
| [`gitbuch_06.adoc`][gitbuch_06.adoc]   | [`workflows.txt`][workflows.txt]             | Ch. 6            |
| [`gitbuch_07.adoc`][gitbuch_07.adoc]   | [`server.txt`][server.txt]                   | Ch. 7            |
| [`gitbuch_08.adoc`][gitbuch_08.adoc]   | [`automatisierung.txt`][automatisierung.txt] | Ch. 8            |
| [`gitbuch_09.adoc`][gitbuch_09.adoc]   | [`zusammenspiel.txt`][zusammenspiel.txt]     | Ch. 9            |
| [`gitbuch_10.adoc`][gitbuch_10.adoc]   | [`shell.txt`][shell.txt]                     | Ch. 10           |
| [`gitbuch_11.adoc`][gitbuch_11.adoc]   | [`github.txt`][github.txt]                   | Ch. 11           |
| [`gitbuch_12.adoc`][gitbuch_12.adoc]   | [`installation.txt`][installation.txt]       | App. A           |
| [`gitbuch_13.adoc`][gitbuch_13.adoc]   | [`gitdir.txt`][gitdir.txt]                   | App. B           |




<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[AsciiDoc]: https://asciidoc.org "Visit AsciiDoc (Python) website"
[Asciidoctor]: https://asciidoctor.org "Visit Asciidoctor (Ruby) website"

<!-- ADoc sources -->

[gitbuch.asciidoc]: ./gitbuch.asciidoc "View source file"
[gitbuch_00.adoc]: ./gitbuch_00.adoc "View source file"
[gitbuch_01.adoc]: ./gitbuch_01.adoc "View source file"
[gitbuch_02.adoc]: ./gitbuch_02.adoc "View source file"
[gitbuch_03.adoc]: ./gitbuch_03.adoc "View source file"
[gitbuch_04.adoc]: ./gitbuch_04.adoc "View source file"
[gitbuch_05.adoc]: ./gitbuch_05.adoc "View source file"
[gitbuch_06.adoc]: ./gitbuch_06.adoc "View source file"
[gitbuch_07.adoc]: ./gitbuch_07.adoc "View source file"
[gitbuch_08.adoc]: ./gitbuch_08.adoc "View source file"
[gitbuch_09.adoc]: ./gitbuch_09.adoc "View source file"
[gitbuch_10.adoc]: ./gitbuch_10.adoc "View source file"
[gitbuch_11.adoc]: ./gitbuch_11.adoc "View source file"
[gitbuch_12.adoc]: ./gitbuch_12.adoc "View source file"
[gitbuch_13.adoc]: ./gitbuch_13.adoc "View source file"

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
