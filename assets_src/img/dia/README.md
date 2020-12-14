# Git Book Diagrams

Source files to generate the diagram images in SVG using [Dia].

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
- [TODO](#todo)
- [Diagrams List and Preview Links](#diagrams-list-and-preview-links)
- [Diagrams Info](#diagrams-info)
- [System Requirements](#system-requirements)
- [External Links](#external-links)
    - [Dia Diagram Editor](#dia-diagram-editor)
    - [SVG Images](#svg-images)
    - [Web Safe Fonts](#web-safe-fonts)

<!-- /MarkdownTOC -->

-----


# Folder Contents

- `*.dia` — [Dia] source project files.

# TODO

- [ ] Edit source diagrams:
    + [ ] Translate DIA sources filesname to English.
    + [ ] Translate diagrams text to English.
    + [ ] Tweak colors to increase accessibility for the color blind.
- [ ] Update book images:
    + [ ] Add conversion script:
        * [ ] Convert to SVG instead of PNG.
        * [ ] Optimize generated SVG images.
        * [ ] Deploy to destination images folder.
    + [ ] Delete original PNGs in destination folder with our renamed and edited SVGs.
    + [ ] Update all `image::` URIs in AsciiDoc sources.

# Diagrams List and Preview Links

The following table provides preview links to the generated PNG files in the [`../../../docs_src/images/`][doc imgs] destination folder (i.e. the images used in the original upstream project).

|         DIA source         |                       PNG output                       |
|----------------------------|--------------------------------------------------------|
| `branch-model.dia`         | [`branch-model.png`][branch-model.png]                 |
| `clone.dia`                | [`clone.png`][clone.png]                               |
| `commit.dia`               | [`commit.png`][commit.png]                             |
| `developer-public.dia`     | [`developer-public.png`][developer-public.png]         |
| `fetch.dia`                | [`fetch.png`][fetch.png]                               |
| `ff-nachher.dia`           | [`ff-nachher.png`][ff-nachher.png]                     |
| `ff-vorher.dia`            | [`ff-vorher.png`][ff-vorher.png]                       |
| `github-workflow.dia`      | [`github-workflow.png`][github-workflow.png]           |
| `graph.dia`                | [`graph.png`][graph.png]                               |
| `graph-mit-refs.dia`       | [`graph-mit-refs.png`][graph-mit-refs.png]             |
| `index.dia`                | [`index.png`][index.png]                               |
| `merge-base-commit.dia`    | [`merge-base-commit.png`][merge-base-commit.png]       |
| `merge-nachher.dia`        | [`merge-nachher.png`][merge-nachher.png]               |
| `objekte.dia`              | [`objekte.png`][objekte.png]                           |
| `objekte-zusammenhang.dia` | [`objekte-zusammenhang.png`][objekte-zusammenhang.png] |
| `patches-per-mail.dia`     | [`patches-per-mail.png`][patches-per-mail.png]         |
| `pull.dia`                 | [`pull.png`][pull.png]                                 |
| `pull_rebase.dia`          | [`pull_rebase.png`][pull_rebase.png]                   |
| `push.dia`                 | [`push.png`][push.png]                                 |
| `rebase-nachher.dia`       | [`rebase-nachher.png`][rebase-nachher.png]             |
| `rebase-onto-nachher.dia`  | [`rebase-onto-nachher.png`][rebase-onto-nachher.png]   |
| `rebase-onto-vorher.dia`   | [`rebase-onto-vorher.png`][rebase-onto-vorher.png]     |
| `rebase-vorher.dia`        | [`rebase-vorher.png`][rebase-vorher.png]               |
| `relative-refs.dia`        | [`relative-refs.png`][relative-refs.png]               |
| `sha.dia`                  | [`sha.png`][sha.png]                                   |
| `struktur.dia`             | [`struktur.png`][struktur.png]                         |
| `svn_dcommit.dia`          | [`svn_dcommit.png`][svn_dcommit.png]                   |
| `svn_rebase.dia`           | [`svn_rebase.png`][svn_rebase.png]                     |
| `tags.dia`                 | [`tags.png`][tags.png]                                 |
| `zentral.dia`              | [`zentral.png`][zentral.png]                           |

> __NOTE__ — The [`merge-nachher.png`][merge-nachher.png] image doesn't seem to be used by the book, for there are no references to it in the AsciiDoc sources.

# Diagrams Info

The DIA sources in this folder were taken from the [`bilder_quelldaten/diagramme/`][diagramme/] folder of the __[Git-Buch]__ upstream repository.


# System Requirements

In order to edit the diagram's sourcefile, or to run the scripts in this folder, you'll need to install [Dia Diagram Editor], a free and open source cross platform tool for editing diagrams.

-------------------------------------------------------------------------------


# External Links

## Dia Diagram Editor

- [Dia Diagram Editor] — official website and dowloads.

## SVG Images

- [CSS Tricks » Using Custom Fonts With SVG in an Image Tag] — by Thomas Yip.
- [Vecta.io » Using Fonts in SVG] — by Neel Singh.

## Web Safe Fonts

Resources and articles on which fonts are safe to use based on common OSs' availability (this affects fonts used in SVG images too):

- [CSS Font Stack] — A complete collection of web safe CSS font stacks.
- [MIT.edu » Safe web fonts] — Article by Jacob Morzinski.
- [Lifewire » Make Sure You're Using Web Safe Fonts] — Article by Jennifer Kyrnin.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Wikipedia » Flowchart]: https://en.wikipedia.org/wiki/Flowchart "See Wikipedia page on 'Flowchart'"

[CSS Font Stack]: https://www.cssfontstack.com/ "Visit website"

<!-- Dia -->

[Dia]: http://dia-installer.de/ "Visit Dia's website"
[Dia Diagram Editor]: http://dia-installer.de/ "Visit Dia's website"

<!-- articles -->

[CSS Tricks » Using Custom Fonts With SVG in an Image Tag]: https://css-tricks.com/using-custom-fonts-with-svg-in-an-image-tag/ "Read article"
[Lifewire » Make Sure You're Using Web Safe Fonts]: https://www.lifewire.com/web-safe-fonts-3467430 "Read article"
[MIT.edu » Safe web fonts]: https://web.mit.edu/jmorzins/www/fonts.html "Read article"
[Vecta.io » Using Fonts in SVG]: https://vecta.io/blog/using-fonts-in-svg "Read article"

<!-- upstream links -->

[Git-Buch]: https://github.com/gitbuch/gitbuch_cc "Visit upstream Git-Buch repository"
[diagramme/]: https://github.com/gitbuch/gitbuch_cc/tree/master/bilder_quelldaten/diagramme "View diagrams folder in upstream Git-Buch repository"

<!-- project folders -->

[doc imgs]: ../../../docs_src/images/ "Navigate to book images folder"

<!-- PNG previews -->

[branch-model.png]: ../../../docs_src/images/branch-model.png "Preview PNG output"
[clone.png]: ../../../docs_src/images/clone.png "Preview PNG output"
[commit.png]: ../../../docs_src/images/commit.png "Preview PNG output"
[developer-public.png]: ../../../docs_src/images/developer-public.png "Preview PNG output"
[fetch.png]: ../../../docs_src/images/fetch.png "Preview PNG output"
[ff-nachher.png]: ../../../docs_src/images/ff-nachher.png "Preview PNG output"
[ff-vorher.png]: ../../../docs_src/images/ff-vorher.png "Preview PNG output"
[github-workflow.png]: ../../../docs_src/images/github-workflow.png "Preview PNG output"
[graph.png]: ../../../docs_src/images/graph.png "Preview PNG output"
[graph-mit-refs.png]: ../../../docs_src/images/graph-mit-refs.png "Preview PNG output"
[index.png]: ../../../docs_src/images/index.png "Preview PNG output"
[merge-base-commit.png]: ../../../docs_src/images/merge-base-commit.png "Preview PNG output"
[merge-nachher.png]: ../../../docs_src/images/merge-nachher.png "Preview PNG output"
[objekte.png]: ../../../docs_src/images/objekte.png "Preview PNG output"
[objekte-zusammenhang.png]: ../../../docs_src/images/objekte-zusammenhang.png "Preview PNG output"
[patches-per-mail.png]: ../../../docs_src/images/patches-per-mail.png "Preview PNG output"
[pull.png]: ../../../docs_src/images/pull.png "Preview PNG output"
[pull_rebase.png]: ../../../docs_src/images/pull_rebase.png "Preview PNG output"
[push.png]: ../../../docs_src/images/push.png "Preview PNG output"
[rebase-nachher.png]: ../../../docs_src/images/rebase-nachher.png "Preview PNG output"
[rebase-onto-nachher.png]: ../../../docs_src/images/rebase-onto-nachher.png "Preview PNG output"
[rebase-onto-vorher.png]: ../../../docs_src/images/rebase-onto-vorher.png "Preview PNG output"
[rebase-vorher.png]: ../../../docs_src/images/rebase-vorher.png "Preview PNG output"
[relative-refs.png]: ../../../docs_src/images/relative-refs.png "Preview PNG output"
[sha.png]: ../../../docs_src/images/sha.png "Preview PNG output"
[struktur.png]: ../../../docs_src/images/struktur.png "Preview PNG output"
[svn_dcommit.png]: ../../../docs_src/images/svn_dcommit.png "Preview PNG output"
[svn_rebase.png]: ../../../docs_src/images/svn_rebase.png "Preview PNG output"
[tags.png]: ../../../docs_src/images/tags.png "Preview PNG output"
[zentral.png]: ../../../docs_src/images/zentral.png "Preview PNG output"

<!-- EOF -->
