# Git Book Diagrams

Source files to generate the diagram images in SVG using [Dia].

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
- [System Requirements](#system-requirements)
- [TODO](#todo)
- [Diagrams List and Preview Links](#diagrams-list-and-preview-links)
- [Diagrams Info](#diagrams-info)
    - [Diagrams Renaming](#diagrams-renaming)
- [Diagrams Previews](#diagrams-previews)
    - [`branch-model.svg`](#branch-modelsvg)
    - [`central-workflow.svg`](#central-workflowsvg)
    - [`clone.svg`](#clonesvg)
    - [`commit-graph-with-refs.svg`](#commit-graph-with-refssvg)
    - [`commit-graph.svg`](#commit-graphsvg)
    - [`commit.svg`](#commitsvg)
    - [`fetch.svg`](#fetchsvg)
    - [`ff-after.svg`](#ff-aftersvg)
    - [`ff-before.svg`](#ff-beforesvg)
    - [`git-objects-hierarchy.svg`](#git-objects-hierarchysvg)
    - [`git-objects.svg`](#git-objectssvg)
    - [`github-workflow.svg`](#github-workflowsvg)
    - [`index.svg`](#indexsvg)
    - [`integration-manager-workflow.svg`](#integration-manager-workflowsvg)
    - [`merge-after.svg`](#merge-aftersvg)
    - [`merge-base-commit.svg`](#merge-base-commitsvg)
    - [`patches-via-email.svg`](#patches-via-emailsvg)
    - [`pull-rebase.svg`](#pull-rebasesvg)
    - [`pull.svg`](#pullsvg)
    - [`push.svg`](#pushsvg)
    - [`rebase-after.svg`](#rebase-aftersvg)
    - [`rebase-before.svg`](#rebase-beforesvg)
    - [`rebase-onto-after.svg`](#rebase-onto-aftersvg)
    - [`rebase-onto-before.svg`](#rebase-onto-beforesvg)
    - [`relative-refs.svg`](#relative-refssvg)
    - [`repository-content.svg`](#repository-contentsvg)
    - [`sha.svg`](#shasvg)
    - [`svn-dcommit.svg`](#svn-dcommitsvg)
    - [`svn-rebase.svg`](#svn-rebasesvg)
    - [`tags.svg`](#tagssvg)
- [External Links](#external-links)
    - [Dia Diagram Editor](#dia-diagram-editor)
    - [SVG Images](#svg-images)
    - [Web Safe Fonts](#web-safe-fonts)

<!-- /MarkdownTOC -->

-----


# Folder Contents

- `*.dia` — [Dia] source project files.


# System Requirements

In order to edit the diagram's sourcefile, or to run the scripts in this folder, you'll need to install [Dia Diagram Editor], a free and open source cross platform tool for editing diagrams.

# TODO

- [x] Translate DIA sources filename to English.
- [ ] Edit source diagrams:
    + [ ] `branch-model.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `central-workflow.dia`:
        * [ ] Add invisible background for padding.
        * [ ] Translate text to English.
    + [ ] `clone.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `commit-graph-with-refs.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `commit-graph.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `commit.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `fetch.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `ff-after.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `ff-before.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `git-objects-hierarchy.dia`:
        * [ ] Add invisible background for padding.
        * [ ] Translate text to English.
        * [ ] Tweak dark colors.
    + [ ] `git-objects.dia`:
        * [ ] Add invisible background for padding.
        * [ ] Translate text to English.
        * [ ] Tweak dark colors.
    + [ ] `github-workflow.dia`:
        * [ ] Add invisible background for padding.
        * [ ] Translate text to English.
        * [ ] Tweak dark colors.
    + [ ] `index.dia`:
        * [ ] Add invisible background for padding.
        * [ ] Tweak dark colors.
    + [ ] `integration-manager-workflow.dia`:
        * [ ] Add invisible background for padding.
        * [ ] Translate text to English.
        * [ ] Tweak dark colors.
    + [ ] `merge-after.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `merge-base-commit.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `patches-via-email.dia`:
        * [ ] Add invisible background for padding.
        * [ ] Translate text to English.
    + [ ] `pull-rebase.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `pull.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `push.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `rebase-after.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `rebase-before.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `rebase-onto-after.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `rebase-onto-before.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `relative-refs.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `repository-content.dia`:
        * [ ] Add invisible background for padding.
        * [ ] Translate text to English.
        * [ ] Tweak dark colors.
    + [ ] `sha.dia`:
        * [ ] Add invisible background for padding.
        * [ ] Tweak dark colors.
    + [ ] `svn-dcommit.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `svn-rebase.dia`:
        * [ ] Add invisible background for padding.
    + [ ] `tags.dia`:
        * [ ] Add invisible background for padding.
        * [ ] Translate text to English.
        * [ ] Tweak colors: add BG color to tag shape?
- [ ] Update book images:
    + [ ] Add conversion script:
        * [x] Convert to SVG instead of PNG.
        * [ ] Optimize generated SVG images.
        * [x] Deploy to destination images folder.
    + [x] Delete original PNG diagrams in destination folder.
    + [x] Update all diagrams `image::` URIs in AsciiDoc sources.

# Diagrams List and Preview Links

The following table provides preview links to the generated SVG files in the [`../../../docs_src/images/`][doc imgs] destination folder.

|             DIA source             |                               SVG output                               |
|------------------------------------|------------------------------------------------------------------------|
| `branch-model.dia`                 | [`branch-model.svg`][branch-model.svg]                                 |
| `central-workflow.dia`             | [`central-workflow.svg`][central-workflow.svg]                         |
| `clone.dia`                        | [`clone.svg`][clone.svg]                                               |
| `commit-graph-with-refs.dia`       | [`commit-graph-with-refs.svg`][commit-graph-with-refs.svg]             |
| `commit-graph.dia`                 | [`commit-graph.svg`][commit-graph.svg]                                 |
| `commit.dia`                       | [`commit.svg`][commit.svg]                                             |
| `fetch.dia`                        | [`fetch.svg`][fetch.svg]                                               |
| `ff-after.dia`                     | [`ff-after.svg`][ff-after.svg]                                         |
| `ff-before.dia`                    | [`ff-before.svg`][ff-before.svg]                                       |
| `git-objects-hierarchy.dia`        | [`git-objects-hierarchy.svg`][git-objects-hierarchy.svg]               |
| `git-objects.dia`                  | [`git-objects.svg`][git-objects.svg]                                   |
| `github-workflow.dia`              | [`github-workflow.svg`][github-workflow.svg]                           |
| `index.dia`                        | [`index.svg`][index.svg]                                               |
| `integration-manager-workflow.dia` | [`integration-manager-workflow.svg`][integration-manager-workflow.svg] |
| `merge-after.dia`                  | [`merge-after.svg`][merge-after.svg]                                   |
| `merge-base-commit.dia`            | [`merge-base-commit.svg`][merge-base-commit.svg]                       |
| `patches-via-email.dia`            | [`patches-via-email.svg`][patches-via-email.svg]                       |
| `pull-rebase.dia`                  | [`pull-rebase.svg`][pull-rebase.svg]                                   |
| `pull.dia`                         | [`pull.svg`][pull.svg]                                                 |
| `push.dia`                         | [`push.svg`][push.svg]                                                 |
| `rebase-after.dia`                 | [`rebase-after.svg`][rebase-after.svg]                                 |
| `rebase-before.dia`                | [`rebase-before.svg`][rebase-before.svg]                               |
| `rebase-onto-after.dia`            | [`rebase-onto-after.svg`][rebase-onto-after.svg]                       |
| `rebase-onto-before.dia`           | [`rebase-onto-before.svg`][rebase-onto-before.svg]                     |
| `relative-refs.dia`                | [`relative-refs.svg`][relative-refs.svg]                               |
| `repository-content.dia`           | [`repository-content.svg`][repository-content.svg]                     |
| `sha.dia`                          | [`sha.svg`][sha.svg]                                                   |
| `svn-dcommit.dia`                  | [`svn-dcommit.svg`][svn-dcommit.svg]                                   |
| `svn-rebase.dia`                   | [`svn-rebase.svg`][svn-rebase.svg]                                     |
| `tags.dia`                         | [`tags.svg`][tags.svg]                                                 |

> __NOTE__ — The `merge-after.dia`/[`merge-after.svg`][merge-after.svg] image doesn't seem to be used by the book, for there are no references to it in the AsciiDoc sources.

# Diagrams Info

The DIA sources in this folder were taken from the [`bilder_quelldaten/diagramme/`][diagramme/] folder of the __[Git-Buch]__ upstream repository.

## Diagrams Renaming

Some DIA source project files (but not all) have been renamed according to the following table — affecting the generated filenames too.

|          original          |             renamed to             |
|----------------------------|------------------------------------|
| `developer-public.dia`     | `integration-manager-workflow.dia` |
| `ff-nachher.dia`           | `ff-after.dia`                     |
| `ff-vorher.dia`            | `ff-before.dia`                    |
| `graph.dia`                | `commit-graph.dia`                 |
| `graph-mit-refs.dia`       | `commit-graph-with-refs.dia`       |
| `merge-nachher.dia`        | `merge-after.dia`                  |
| `objekte.dia`              | `git-objects.dia`                  |
| `objekte-zusammenhang.dia` | `git-objects-hierarchy.dia`        |
| `patches-per-mail.dia`     | `patches-via-email.dia`            |
| `pull_rebase.dia`          | `pull-rebase.dia`                  |
| `rebase-nachher.dia`       | `rebase-after.dia`                 |
| `rebase-onto-nachher.dia`  | `rebase-onto-after.dia`            |
| `rebase-onto-vorher.dia`   | `rebase-onto-before.dia`           |
| `rebase-vorher.dia`        | `rebase-before.dia`                |
| `svn_dcommit.dia`          | `svn-dcommit.dia`                  |
| `svn_rebase.dia`           | `svn-rebase.dia`                   |
| `struktur.dia`             | `repository-content.dia`           |
| `zentral.dia`              | `central-workflow.dia`             |


# Diagrams Previews


## `branch-model.svg`

![`branch-model.svg`][branch-model.svg]


-------------------------------------------------------------------------------

## `central-workflow.svg`

![`central-workflow.svg`][central-workflow.svg]


-------------------------------------------------------------------------------

## `clone.svg`

![`clone.svg`][clone.svg]


-------------------------------------------------------------------------------

## `commit-graph-with-refs.svg`

![`commit-graph-with-refs.svg`][commit-graph-with-refs.svg]


-------------------------------------------------------------------------------

## `commit-graph.svg`

![`commit-graph.svg`][commit-graph.svg]


-------------------------------------------------------------------------------

## `commit.svg`

![`commit.svg`][commit.svg]


-------------------------------------------------------------------------------

## `fetch.svg`

![`fetch.svg`][fetch.svg]


-------------------------------------------------------------------------------

## `ff-after.svg`

![`ff-after.svg`][ff-after.svg]


-------------------------------------------------------------------------------

## `ff-before.svg`

![`ff-before.svg`][ff-before.svg]


-------------------------------------------------------------------------------

## `git-objects-hierarchy.svg`

![`git-objects-hierarchy.svg`][git-objects-hierarchy.svg]


-------------------------------------------------------------------------------

## `git-objects.svg`

![`git-objects.svg`][git-objects.svg]


-------------------------------------------------------------------------------

## `github-workflow.svg`

![`github-workflow.svg`][github-workflow.svg]


-------------------------------------------------------------------------------

## `index.svg`

![`index.svg`][index.svg]


-------------------------------------------------------------------------------

## `integration-manager-workflow.svg`

![`integration-manager-workflow.svg`][integration-manager-workflow.svg]


-------------------------------------------------------------------------------

## `merge-after.svg`

![`merge-after.svg`][merge-after.svg]


-------------------------------------------------------------------------------

## `merge-base-commit.svg`

![`merge-base-commit.svg`][merge-base-commit.svg]


-------------------------------------------------------------------------------

## `patches-via-email.svg`

![`patches-via-email.svg`][patches-via-email.svg]


-------------------------------------------------------------------------------

## `pull-rebase.svg`

![`pull-rebase.svg`][pull-rebase.svg]


-------------------------------------------------------------------------------

## `pull.svg`

![`pull.svg`][pull.svg]


-------------------------------------------------------------------------------

## `push.svg`

![`push.svg`][push.svg]


-------------------------------------------------------------------------------

## `rebase-after.svg`

![`rebase-after.svg`][rebase-after.svg]


-------------------------------------------------------------------------------

## `rebase-before.svg`

![`rebase-before.svg`][rebase-before.svg]


-------------------------------------------------------------------------------

## `rebase-onto-after.svg`

![`rebase-onto-after.svg`][rebase-onto-after.svg]


-------------------------------------------------------------------------------

## `rebase-onto-before.svg`

![`rebase-onto-before.svg`][rebase-onto-before.svg]


-------------------------------------------------------------------------------

## `relative-refs.svg`

![`relative-refs.svg`][relative-refs.svg]


-------------------------------------------------------------------------------

## `repository-content.svg`

![`repository-content.svg`][repository-content.svg]


-------------------------------------------------------------------------------

## `sha.svg`

![`sha.svg`][sha.svg]


-------------------------------------------------------------------------------

## `svn-dcommit.svg`

![`svn-dcommit.svg`][svn-dcommit.svg]


-------------------------------------------------------------------------------

## `svn-rebase.svg`

![`svn-rebase.svg`][svn-rebase.svg]


-------------------------------------------------------------------------------

## `tags.svg`

![`tags.svg`][tags.svg]


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

[branch-model.svg]: ../../../docs_src/images/branch-model.svg "Preview SVG output"
[central-workflow.svg]: ../../../docs_src/images/central-workflow.svg "Preview SVG output"
[clone.svg]: ../../../docs_src/images/clone.svg "Preview SVG output"
[commit-graph-with-refs.svg]: ../../../docs_src/images/commit-graph-with-refs.svg "Preview SVG output"
[commit-graph.svg]: ../../../docs_src/images/commit-graph.svg "Preview SVG output"
[commit.svg]: ../../../docs_src/images/commit.svg "Preview SVG output"
[fetch.svg]: ../../../docs_src/images/fetch.svg "Preview SVG output"
[ff-after.svg]: ../../../docs_src/images/ff-after.svg "Preview SVG output"
[ff-before.svg]: ../../../docs_src/images/ff-before.svg "Preview SVG output"
[git-objects-hierarchy.svg]: ../../../docs_src/images/git-objects-hierarchy.svg "Preview SVG output"
[git-objects.svg]: ../../../docs_src/images/git-objects.svg "Preview SVG output"
[github-workflow.svg]: ../../../docs_src/images/github-workflow.svg "Preview SVG output"
[index.svg]: ../../../docs_src/images/index.svg "Preview SVG output"
[integration-manager-workflow.svg]: ../../../docs_src/images/integration-manager-workflow.svg "Preview SVG output"
[merge-after.svg]: ../../../docs_src/images/merge-after.svg "Preview SVG output"
[merge-base-commit.svg]: ../../../docs_src/images/merge-base-commit.svg "Preview SVG output"
[patches-via-email.svg]: ../../../docs_src/images/patches-via-email.svg "Preview SVG output"
[pull-rebase.svg]: ../../../docs_src/images/pull-rebase.svg "Preview SVG output"
[pull.svg]: ../../../docs_src/images/pull.svg "Preview SVG output"
[push.svg]: ../../../docs_src/images/push.svg "Preview SVG output"
[rebase-after.svg]: ../../../docs_src/images/rebase-after.svg "Preview SVG output"
[rebase-before.svg]: ../../../docs_src/images/rebase-before.svg "Preview SVG output"
[rebase-onto-after.svg]: ../../../docs_src/images/rebase-onto-after.svg "Preview SVG output"
[rebase-onto-before.svg]: ../../../docs_src/images/rebase-onto-before.svg "Preview SVG output"
[relative-refs.svg]: ../../../docs_src/images/relative-refs.svg "Preview SVG output"
[repository-content.svg]: ../../../docs_src/images/repository-content.svg "Preview SVG output"
[sha.svg]: ../../../docs_src/images/sha.svg "Preview SVG output"
[svn-dcommit.svg]: ../../../docs_src/images/svn-dcommit.svg "Preview SVG output"
[svn-rebase.svg]: ../../../docs_src/images/svn-rebase.svg "Preview SVG output"
[tags.svg]: ../../../docs_src/images/tags.svg "Preview SVG output"

<!-- EOF -->
