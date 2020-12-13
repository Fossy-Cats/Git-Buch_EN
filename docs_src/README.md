# AsciiDoc Sources

This folder contains the AsciiDoc sources of the English translation of the _Git-Buch_.

> __[STATUS]__ — Polishing the draft-translation (created via [DeepL]) and adapting images.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
- [Translation Status](#translation-status)
    - [Methodology Notes](#methodology-notes)
- [Sources Adaptation](#sources-adaptation)
    - [Upstream Correspondences](#upstream-correspondences)
- [Look-Up Tables](#look-up-tables)
    - [Footnotes](#footnotes)
    - [Figures](#figures)

<!-- /MarkdownTOC -->

-----

# Folder Contents

- [`/images/`][images] — required book images.
- [`build.sh`][build.sh] — generates HTML5 book via Asciidoctor:
    + [`Git-Buch_EN.html`][gb.html] — [HTML5 book].
- [`gitbuch.asciidoc`][gb.adoc] — main book source that imports all others:
    + [`gitbuch_00.adoc`][gb00] — [_Preface_][Preface]
    + [`gitbuch_01.adoc`][gb01] — [1. _Introduction and First Steps_][Ch1]
    + [`gitbuch_02.adoc`][gb02] — [2. _The Basics_][Ch2]
    + [`gitbuch_03.adoc`][gb03] — [3. _Practical Version Control_][Ch3]
    + [`gitbuch_04.adoc`][gb04] — [4. _Advanced Concepts_][Ch4]
    + [`gitbuch_05.adoc`][gb05] — [5. _Distributed Git_][Ch5]
    + [`gitbuch_06.adoc`][gb06] — [6. _Workflows_][Ch6]
    + [`gitbuch_07.adoc`][gb07] — [7. _Git Servers_][Ch7]
    + [`gitbuch_08.adoc`][gb08] — [8. _Git Automation_][Ch8]
    + [`gitbuch_09.adoc`][gb09] — [9. _Interacting with Other Version Control Systems_][Ch9]
    + [`gitbuch_10.adoc`][gb10] — [10. _Shell-Integration_][Ch10]
    + [`gitbuch_11.adoc`][gb11] — [11. _GitHub_][Ch11]
    + [`gitbuch_12.adoc`][gb12] — [App. A. _Installation_][AppA]
    + [`gitbuch_13.adoc`][gb13] — [App. B. _Repository Structure_][AppB]

# Translation Status

- [ ]  [_Preface_][Preface]
    + [ ] Polish:
        * [ ] Manually revise translation.
        * [ ] Adapt or remove German-specific contents.
        * [ ] Remove commented German text.
- [ ]  [1. _Introduction and First Steps_][Ch1]
    + [ ] Polish:
        * [ ] Manually revise translation.
        * [ ] Adapt or remove German-specific contents.
        * [ ] Remove commented German text.
- [ ]  [2. _The Basics_][Ch2]
    + [ ] Adapt images (1-8):
        * [ ] Fig. 1: `index.png`
        * [ ] Fig. 2: `objektmodell-programm-crop.png`
        * [ ] Fig. 3: `sha.png`
        * [ ] Fig. 4: `objekte.png`
        * [ ] Fig. 5: `objekte-zusammenhang.png`
        * [ ] Fig. 6: `struktur.png`
        * [ ] Fig. 7: `graph.png`
        * [ ] Fig. 8: `graph-mit-refs.png`
    + [ ] Polish:
        * [ ] Manually revise translation.
        * [ ] Adapt or remove German-specific contents.
        * [ ] Remove commented German text.
- [ ]  [3. _Practical Version Control_][Ch3]
    + [ ] Adapt images (9-21):
        * [ ] Fig. 9: `gitk-basic.png`
        * [ ] Fig. 10: `commit.png`
        * [ ] Fig. 11: `relative-refs.png`
        * [ ] Fig. 12: `tags.png`
        * [ ] Fig. 13: `tag-screenshot.png`
        * [ ] Fig. 14: `describe-screenshot.png`
        * [ ] Fig. 15: `merge-base-commit.png`
        * [ ] Fig. 16: `ff-vorher.png`
        * [ ] Fig. 17: `ff-nachher.png`
        * [ ] Fig. 18: `ff-no-ff-vergleich.png`
        * [ ] Fig. 19: `meld-example.png`
        * [ ] Fig. 20: `revision-list-commit-graph-gitk.png`
        * [ ] Fig. 21: `gitk.png`
    + [ ] Polish:
        * [ ] Manually revise translation.
        * [ ] Adapt or remove German-specific contents.
        * [ ] Remove commented German text.
- [ ]  [4. _Advanced Concepts_][Ch4]
    + [ ] Adapt images (22-29):
        * [ ] Fig. 22: `rebase-vorher.png`
        * [ ] Fig. 23: `rebase-nachher.png`
        * [ ] Fig. 24: `screenshot-rebase-vorher.png`
        * [ ] Fig. 25: `screenshot-rebase-nachher.png`
        * [ ] Fig. 26: `rebase-onto-vorher.png`
        * [ ] Fig. 27: `rebase-onto-nachher.png`
        * [ ] Fig. 28: `git-gui-blame.png`
        * [ ] Fig. 29: `stash-screenshot.png`
    + [ ] Polish:
        * [ ] Manually revise translation.
        * [ ] Adapt or remove German-specific contents.
        * [ ] Remove commented German text.
- [ ]  [5. _Distributed Git_][Ch5]
    + [ ] Adapt images (30-40):
        * [ ] Fig. 30: `zentral.png`
        * [ ] Fig. 31: `clone.png`
        * [ ] Fig. 32: `remote-tracking-gitk.png`
        * [ ] Fig. 33: `fetch.png`
        * [ ] Fig. 34: `pull.png`
        * [ ] Fig. 35: `pull_rebase.png`
        * [ ] Fig. 36: `push.png`
        * [ ] Fig. 37: `developer-public.png`
        * [ ] Fig. 38: `gitk-screen-format-patch.png`
        * [ ] Fig. 39: `mail-thread.png`
        * [ ] Fig. 40: `patches-per-mail.png`
    + [ ] Polish:
        * [ ] Manually revise translation.
        * [ ] Adapt or remove German-specific contents.
        * [ ] Remove commented German text.
- [ ]  [6. _Workflows_][Ch6]
    + [ ] Adapt images (41):
        * [ ] Fig. 41: `branch-model.png`
    + [ ] Polish:
        * [ ] Manually revise translation.
        * [ ] Adapt or remove German-specific contents.
        * [ ] Remove commented German text.
- [ ]  [7. _Git Servers_][Ch7]
    + [ ] Adapt images (42-45):
        * [ ] Fig. 42: `gitweb-overview.png`
        * [ ] Fig. 43: `gitweb-commitdiff.png`
        * [ ] Fig. 44: `cgit-overview.png`
        * [ ] Fig. 45: `cgit-commitdiff.png`
    + [ ] Polish:
        * [ ] Manually revise translation.
        * [ ] Adapt or remove German-specific contents.
        * [ ] Remove commented German text.
- [ ]  [8. _Git Automation_][Ch8]
    + [ ] Adapt images (46):
        * [ ] Fig. 46: `tux-diff.png`
    + [ ] Polish:
        * [ ] Manually revise translation.
        * [ ] Adapt or remove German-specific contents.
        * [ ] Remove commented German text.
- [ ]  [9. _Interacting with Other Version Control Systems_][Ch9]
    + [ ] Adapt images (47-57):
        * [ ] Fig. 47: `svn-stdlayout-crop.png`
        * [ ] Fig. 48: `svn-nonstdlayout-crop.png`
        * [ ] Fig. 49: `svn-branches-crop.png`
        * [ ] Fig. 50: `git-branches-crop.png`
        * [ ] Fig. 51: `git-convert-refs-before.png`
        * [ ] Fig. 52: `git-convert-refs-after.png`
        * [ ] Fig. 53: `git-svn-tag-fix-before.png`
        * [ ] Fig. 54: `git-svn-tag-fix-after.png`
        * [ ] Fig. 55: `git-svn-merge-demo.png`
        * [ ] Fig. 56: `svn_rebase.png`
        * [ ] Fig. 57: `svn_dcommit.png`
    + [ ] Polish:
        * [ ] Manually revise translation.
        * [ ] Adapt or remove German-specific contents.
        * [ ] Remove commented German text.
- [ ]  [10. _Shell-Integration_][Ch10]
    + [ ] Polish:
        * [ ] Manually revise translation.
        * [ ] Adapt or remove German-specific contents.
        * [ ] Remove commented German text.
- [ ]  [11. _GitHub_][Ch11]
    + [ ] Adapt images (58-63):
        * [ ] Fig. 58: `github-gollum.png`
        * [ ] Fig. 59: `github-workflow.png`
        * [ ] Fig. 60: `github-network.png`
        * [ ] Fig. 61: `github-download.png`
        * [ ] Fig. 62: `github-image-diff-2up.png`
        * [ ] Fig. 63: `github-image-diff-swipe.png`
    + [ ] Polish:
        * [ ] Manually revise translation.
        * [ ] Adapt or remove German-specific contents.
        * [ ] Remove commented German text.
- [ ]  [App. A. _Installation_][AppA]
    + [ ] Polish:
        * [ ] Manually revise translation.
        * [ ] Adapt or remove German-specific contents.
        * [ ] Remove commented German text.
- [ ]  [App. B. _Repository Structure_][AppB]
    + [ ] Adapt images (64):
        * [ ] Fig. 64: `git-dir-crop.png`
    + [ ] Polish:
        * [ ] Manually revise translation.
        * [ ] Adapt or remove German-specific contents.
        * [ ] Remove commented German text.

## Methodology Notes

The translation work for each book section is divided into two separate stages:

- [x] _Draft_
- [ ] _Polishing_

In the _draft_ stage the automated translation via [DeepL] is added to the document with minor adjustments, and the focus is on restoring all the lost formatting styles, footnotes and cross references, translating anchors' identifiers and validating all links:

- Update URLs of projects which have been moved.
- In case of dead links, point to the archived page/site on [Wayback Machine].
- Update all links to `https://`, when possible.

During this stage the original German text is kept inside comment blocks next to the English translation, to provide a quick reference to compare the ongoing translation with the original.
All Asciidoctor macros are expanded in the German text, to reveal the original text of cross references and footnotes numbers.

In the _polishing stage_ the translation is revised and polished until considered good to go — at that point, the comment blocks with the original German text can be removed.

Keeping the two stages separate is practical because the _draft_ stage concerns mainly the technical aspects of adapting the automated translation to the AsciiDoc standard, and fixing all formatting and logistic aspects of the document, so once these are out of the way the document can move on to the _polishing_ stage, where the translators can focus on the English text, without having to worry about formatting issues and other technicalities.

# Sources Adaptation

The upstream repository used __[AsciiDoc]__ (Python) to build the _Git-Buch_, whereas this repository uses __[Asciidoctor]__ (Ruby), therefore some adaptations were applied to the sources formatting and conventions due to slight differences between the two AsciiDoc implementations and in order to benefit from the additional features of Asciidoctor.

All sources were renamed using a two-digits counter indicating their order of appearance in the book; furthermore all files extensions where changed from `.txt` to `.adoc`, with the exception of the main entry file which assigned the `.asciidoc` extension to distinguish it from the other sources which are imported via the `include::` directive.

Some unbalanced block delimiters errors had to be fixed in the original sources for they were breaking the document.

## Upstream Correspondences

The following table shows the correspondence between the current sources and their original counterparts on the upstream repository.

|          source file          |                 adapted from                 |              chapter title / file description              |
|-------------------------------|----------------------------------------------|------------------------------------------------------------|
| [`gitbuch.asciidoc`][gb.adoc] | [`git.txt`][git.txt]                         | main entry file.                                           |
| [`gitbuch_00.adoc`][gb00]     | [`vorwort.txt`][vorwort.txt]                 | [_Preface_][Preface]                                       |
| [`gitbuch_01.adoc`][gb01]     | [`erste_schritte.txt`][erste_schritte.txt]   | [1. _Introduction and First Steps_][Ch1]                   |
| [`gitbuch_02.adoc`][gb02]     | [`grundlagen.txt`][grundlagen.txt]           | [2. _The Basics_][Ch2]                                     |
| [`gitbuch_03.adoc`][gb03]     | [`praxis.txt`][praxis.txt]                   | [3. _Practical Version Control_][Ch3]                      |
| [`gitbuch_04.adoc`][gb04]     | [`advanced.txt`][advanced.txt]               | [4. _Advanced Concepts_][Ch4]                              |
| [`gitbuch_05.adoc`][gb05]     | [`remote.txt`][remote.txt]                   | [5. _Distributed Git_][Ch5]                                |
| [`gitbuch_06.adoc`][gb06]     | [`workflows.txt`][workflows.txt]             | [6. _Workflows_][Ch6]                                      |
| [`gitbuch_07.adoc`][gb07]     | [`server.txt`][server.txt]                   | [7. _Git Servers_][Ch7]                                    |
| [`gitbuch_08.adoc`][gb08]     | [`automatisierung.txt`][automatisierung.txt] | [8. _Git Automation_][Ch8]                                 |
| [`gitbuch_09.adoc`][gb09]     | [`zusammenspiel.txt`][zusammenspiel.txt]     | [9. _Interacting with Other Version Control Systems_][Ch9] |
| [`gitbuch_10.adoc`][gb10]     | [`shell.txt`][shell.txt]                     | [10. _Shell-Integration_][Ch10]                            |
| [`gitbuch_11.adoc`][gb11]     | [`github.txt`][github.txt]                   | [11. _GitHub_][Ch11]                                       |
| [`gitbuch_12.adoc`][gb12]     | [`installation.txt`][installation.txt]       | [App. A. _Installation_][AppA]                             |
| [`gitbuch_13.adoc`][gb13]     | [`gitdir.txt`][gitdir.txt]                   | [App. B. _Repository Structure_][AppB]                     |


# Look-Up Tables

A few tables to quickly look-up the book's footnotes, figures, and other useful info.

## Footnotes

There are 156 footnotes in the book.


|                          chapter                           | footnotes |
|------------------------------------------------------------|-----------|
| [_Preface_][Preface]                                       | 1-7       |
| [1. _Introduction and First Steps_][Ch1]                   | 8-11      |
| [2. _The Basics_][Ch2]                                     | 12-28     |
| [3. _Practical Version Control_][Ch3]                      | 29-53     |
| [4. _Advanced Concepts_][Ch4]                              | 54-64     |
| [5. _Distributed Git_][Ch5]                                | 65-87     |
| [6. _Workflows_][Ch6]                                      | 88-91     |
| [7. _Git Servers_][Ch7]                                    | 92-105    |
| [8. _Git Automation_][Ch8]                                 | 106-116   |
| [9. _Interacting with Other Version Control Systems_][Ch9] | 117-133   |
| [10. _Shell-Integration_][Ch10]                            | 134-137   |
| [11. _GitHub_][Ch11]                                       | 138-150   |
| [App. A. _Installation_][AppA]                             | 151-153   |
| [App. B. _Repository Structure_][AppB]                     | 154-156   |


## Figures

Image filenames are translated too, not just their text contents.

|  figure |           original file name          |    chapter     |
|---------|---------------------------------------|----------------|
| Fig. 1  | `index.png`                           | [Ch. 2][Ch2]   |
| Fig. 2  | `objektmodell-programm-crop.png`      | [Ch. 2][Ch2]   |
| Fig. 3  | `sha.png`                             | [Ch. 2][Ch2]   |
| Fig. 4  | `objekte.png`                         | [Ch. 2][Ch2]   |
| Fig. 5  | `objekte-zusammenhang.png`            | [Ch. 2][Ch2]   |
| Fig. 6  | `struktur.png`                        | [Ch. 2][Ch2]   |
| Fig. 7  | `graph.png`                           | [Ch. 2][Ch2]   |
| Fig. 8  | `graph-mit-refs.png`                  | [Ch. 2][Ch2]   |
| Fig. 9  | `gitk-basic.png`                      | [Ch. 3][Ch3]   |
| Fig. 10 | `commit.png`                          | [Ch. 3][Ch3]   |
| Fig. 11 | `relative-refs.png`                   | [Ch. 3][Ch3]   |
| Fig. 12 | `tags.png`                            | [Ch. 3][Ch3]   |
| Fig. 13 | `tag-screenshot.png`                  | [Ch. 3][Ch3]   |
| Fig. 14 | `describe-screenshot.png`             | [Ch. 3][Ch3]   |
| Fig. 15 | `merge-base-commit.png`               | [Ch. 3][Ch3]   |
| Fig. 16 | `ff-vorher.png`                       | [Ch. 3][Ch3]   |
| Fig. 17 | `ff-nachher.png`                      | [Ch. 3][Ch3]   |
| Fig. 18 | `ff-no-ff-vergleich.png`              | [Ch. 3][Ch3]   |
| Fig. 19 | `meld-example.png`                    | [Ch. 3][Ch3]   |
| Fig. 20 | `revision-list-commit-graph-gitk.png` | [Ch. 3][Ch3]   |
| Fig. 21 | `gitk.png`                            | [Ch. 3][Ch3]   |
| Fig. 22 | `rebase-vorher.png`                   | [Ch. 4][Ch4]   |
| Fig. 23 | `rebase-nachher.png`                  | [Ch. 4][Ch4]   |
| Fig. 24 | `screenshot-rebase-vorher.png`        | [Ch. 4][Ch4]   |
| Fig. 25 | `screenshot-rebase-nachher.png`       | [Ch. 4][Ch4]   |
| Fig. 26 | `rebase-onto-vorher.png`              | [Ch. 4][Ch4]   |
| Fig. 27 | `rebase-onto-nachher.png`             | [Ch. 4][Ch4]   |
| Fig. 28 | `git-gui-blame.png`                   | [Ch. 4][Ch4]   |
| Fig. 29 | `stash-screenshot.png`                | [Ch. 4][Ch4]   |
| Fig. 30 | `zentral.png`                         | [Ch. 5][Ch5]   |
| Fig. 31 | `clone.png`                           | [Ch. 5][Ch5]   |
| Fig. 32 | `remote-tracking-gitk.png`            | [Ch. 5][Ch5]   |
| Fig. 33 | `fetch.png`                           | [Ch. 5][Ch5]   |
| Fig. 34 | `pull.png`                            | [Ch. 5][Ch5]   |
| Fig. 35 | `pull_rebase.png`                     | [Ch. 5][Ch5]   |
| Fig. 36 | `push.png`                            | [Ch. 5][Ch5]   |
| Fig. 37 | `developer-public.png`                | [Ch. 5][Ch5]   |
| Fig. 38 | `gitk-screen-format-patch.png`        | [Ch. 5][Ch5]   |
| Fig. 39 | `mail-thread.png`                     | [Ch. 5][Ch5]   |
| Fig. 40 | `patches-per-mail.png`                | [Ch. 5][Ch5]   |
| Fig. 41 | `branch-model.png`                    | [Ch. 6][Ch6]   |
| Fig. 42 | `gitweb-overview.png`                 | [Ch. 7][Ch7]   |
| Fig. 43 | `gitweb-commitdiff.png`               | [Ch. 7][Ch7]   |
| Fig. 44 | `cgit-overview.png`                   | [Ch. 7][Ch7]   |
| Fig. 45 | `cgit-commitdiff.png`                 | [Ch. 7][Ch7]   |
| Fig. 46 | `tux-diff.png`                        | [Ch. 8][Ch8]   |
| Fig. 47 | `svn-stdlayout-crop.png`              | [Ch. 9][Ch9]   |
| Fig. 48 | `svn-nonstdlayout-crop.png`           | [Ch. 9][Ch9]   |
| Fig. 49 | `svn-branches-crop.png`               | [Ch. 9][Ch9]   |
| Fig. 50 | `git-branches-crop.png`               | [Ch. 9][Ch9]   |
| Fig. 51 | `git-convert-refs-before.png`         | [Ch. 9][Ch9]   |
| Fig. 52 | `git-convert-refs-after.png`          | [Ch. 9][Ch9]   |
| Fig. 53 | `git-svn-tag-fix-before.png`          | [Ch. 9][Ch9]   |
| Fig. 54 | `git-svn-tag-fix-after.png`           | [Ch. 9][Ch9]   |
| Fig. 55 | `git-svn-merge-demo.png`              | [Ch. 9][Ch9]   |
| Fig. 56 | `svn_rebase.png`                      | [Ch. 9][Ch9]   |
| Fig. 57 | `svn_dcommit.png`                     | [Ch. 9][Ch9]   |
| Fig. 58 | `github-gollum.png`                   | [Ch. 11][Ch11] |
| Fig. 59 | `github-workflow.png`                 | [Ch. 11][Ch11] |
| Fig. 60 | `github-network.png`                  | [Ch. 11][Ch11] |
| Fig. 61 | `github-download.png`                 | [Ch. 11][Ch11] |
| Fig. 62 | `github-image-diff-2up.png`           | [Ch. 11][Ch11] |
| Fig. 63 | `github-image-diff-swipe.png`         | [Ch. 11][Ch11] |
| Fig. 64 | `git-dir-crop.png`                    | [App. B][AppB] |



<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[AsciiDoc]: https://asciidoc.org "Visit AsciiDoc (Python) website"
[Asciidoctor]: https://asciidoctor.org "Visit Asciidoctor (Ruby) website"

[DeepL]: https://www.deepl.com/translator "Visit DeepL website"
[Wayback Machine]: https://archive.org/web/ "Visit the Wayback Machine at Internet Archive"

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

<!-- HTML Local Previews -->

[HTML5 book]: ./Git-Buch_EN.html "Local HTML Preview"

[Preface]: ./Git-Buch_EN.html#ch.preface "Local HTML Preview"
[Ch1]: ./Git-Buch_EN.html#ch.intro "Local HTML Preview"
[Ch2]: ./Git-Buch_EN.html#ch.basics "Local HTML Preview"
[Ch3]: ./Git-Buch_EN.html#ch.praxis "Local HTML Preview"
[Ch4]: ./Git-Buch_EN.html#ch.advanced "Local HTML Preview"
[Ch5]: ./Git-Buch_EN.html#ch.distributed-git "Local HTML Preview"
[Ch6]: ./Git-Buch_EN.html#ch.workflows "Local HTML Preview"
[Ch7]: ./Git-Buch_EN.html#ch.server "Local HTML Preview"
[Ch8]: ./Git-Buch_EN.html#ch.automation "Local HTML Preview"
[Ch9]: ./Git-Buch_EN.html#sec.git-svn-cvs "Local HTML Preview"
[Ch10]: ./Git-Buch_EN.html#ch.shell-integration "Local HTML Preview"
[Ch11]: ./Git-Buch_EN.html#ch.github "Local HTML Preview"
[AppA]: ./Git-Buch_EN.html#app.installation "Local HTML Preview"
[AppB]: ./Git-Buch_EN.html#app.git-repository-layout "Local HTML Preview"

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

<!-- cross references -->

[STATUS]: #translation-status "Jump to the 'Translation Status' section"

<!-- EOF -->
