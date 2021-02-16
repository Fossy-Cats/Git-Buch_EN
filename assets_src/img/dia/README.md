# Git Book Diagrams

![dia version info][dia badge]

Source files to generate the diagram images in SVG using [Dia].

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
- [System Requirements and Set-Up](#system-requirements-and-set-up)
    - [Obtaining Dia 0.97.3](#obtaining-dia-0973)
    - [Creating a Stand-alone Dia Version for Windows](#creating-a-stand-alone-dia-version-for-windows)
- [TODO](#todo)
- [Diagrams List and Preview Links](#diagrams-list-and-preview-links)
- [Diagrams Info](#diagrams-info)
    - [Diagrams Renaming](#diagrams-renaming)
    - [Diagrams Tricks and Hacks](#diagrams-tricks-and-hacks)
        - [Cairo SVG](#cairo-svg)
        - [Invisible Boxes to Preserve Padding](#invisible-boxes-to-preserve-padding)
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


# System Requirements and Set-Up

In order to edit the diagram's sourcefile, or to run the scripts in this folder, you'll need to install [Dia Diagram Editor] version `0.97.3` (or above).

> **IMPORTANT!** — Dia versions below `0.97.3` won't work as expected, because the diagrams and build system rely on some new Cairo-SVG features which were not available with previous versions (see [Issue #12]).

You'll also need to add to the system PATH the full path to Dia's executable (i.e. the `bin/` subfolder of Dia's installation) so that it will be visible the `build.sh` script used here.

Dia is a free and open source cross platform tool for editing diagrams.


## Obtaining Dia 0.97.3

- https://wiki.gnome.org/Apps/Dia — official website for Linux editions.
- http://dia-installer.de — official website for Windows and Mac.

At the time of this writing, the latest official Dia release is version `0.97.2` (2011-12-18).

Dia version `0.97.3` (2014-09-05) is not mentioned in either of Dia's websites, but the Linux edition is available on Dia's Git repository at GNOME:

- https://gitlab.gnome.org/GNOME/dia

The Windows installer is available at SourceForge, marked as a preview release (`0.97-pre3`):

- https://sourceforge.net/projects/dia-installer/files/dia-win32-installer/0.97-pre3/

## Creating a Stand-alone Dia Version for Windows

If you prefer a stand-alone version, you can unpack the `dia-setup-0.97-pre3.exe` installer from SourceForge using 7-Zip to extract its contents, delete the `$PLUGINSDIR` folder and the place the rest of the extracted contents in a `Dia` folder which you can place anywhere you wish.

Don't forget to add to your system PATH environment variable the full path to the `bin/` subfolder of you're stand-alone Dia version.


# TODO

- [x] Translate DIA sources filename to English.
- [ ] Edit source diagrams:
    + [ ] `branch-model.dia` » §6.2. » [Fig.41]:
        * [ ] Add invisible background for padding.
    + [x] `central-workflow.dia` » §5.1. » [Fig.30]:
        * [x] Add invisible background for padding.
        * [x] Re-build diagram using Flow Chart elements.
        * [x] Translate text to English.
    + [ ] `clone.dia` » §5.2.2. » [Fig.31]:
        * [ ] Add invisible background for padding.
    + [ ] `commit-graph-with-refs.dia` » §2.2.6.1. » [Fig.8]:
        * [ ] Add invisible background for padding.
    + [ ] `commit-graph.dia` » §2.2.6. » [Fig.7]:
        * [ ] Add invisible background for padding.
    + [ ] `commit.dia` » §3.1. » [Fig.10]:
        * [ ] Add invisible background for padding.
    + [ ] `fetch.dia` » §5.3.1. » [Fig.33]:
        * [ ] Add invisible background for padding.
    + [ ] `ff-after.dia` » §3.3.2. » [Fig.17]:
        * [ ] Add invisible background for padding.
    + [ ] `ff-before.dia` » §3.3.2. » [Fig.16]:
        * [ ] Add invisible background for padding.
    + [ ] `git-objects-hierarchy.dia` » §2.2.3. » [Fig.5]:
        * [x] Add invisible background for padding.
        * [x] Translate text to English.
        * [ ] Tweak dark colors.
    + [ ] `git-objects.dia` » §2.2.2. » [Fig.4]:
        * [ ] Add invisible background for padding.
        * [ ] Translate text to English? This depends on whether we'll be translating commit messages in the book's Git logs!
        * [ ] Tweak dark colors.
    + [ ] `github-workflow.dia` » §11. » [Fig.59]:
        * [x] Add invisible background for padding.
        * [x] Re-build diagram using Flow Chart elements.
        * [x] Translate text to English.
        * [ ] Tweak dark colors.
    + [ ] `index.dia` » §2.1.1. » [Fig.1]:
        * [ ] Add invisible background for padding.
        * [ ] Tweak dark colors.
    + [ ] `integration-manager-workflow.dia` » §5.6. » [Fig.37]:
        * [x] Add invisible background for padding.
        * [x] Re-build diagram using Flow Chart elements.
        * [x] Translate text to English.
        * [ ] Tweak dark colors.
    + [ ] `merge-after.dia` (_unused!_):
        * [ ] Add invisible background for padding.
    + [ ] `merge-base-commit.dia` » §3.3.1 » [Fig.15]:
        * [ ] Add invisible background for padding.
    + [ ] `patches-via-email.dia` » §5.10. » [Fig.40]:
        * [ ] Add invisible background for padding.
        * [ ] Translate text to English.
    + [ ] `pull-rebase.dia` » §5.3.2. » [Fig.35]:
        * [ ] Add invisible background for padding.
    + [ ] `pull.dia` » §5.3.2. » [Fig.34]:
        * [ ] Add invisible background for padding.
    + [ ] `push.dia` » §5.4. » [Fig.36]:
        * [ ] Add invisible background for padding.
    + [ ] `rebase-after.dia` » §4.1. » [Fig.23]:
        * [ ] Add invisible background for padding.
    + [ ] `rebase-before.dia` » §4.1. » [Fig.22]:
        * [ ] Add invisible background for padding.
    + [ ] `rebase-onto-after.dia` » §4.1.7. » [Fig.27]:
        * [ ] Add invisible background for padding.
    + [ ] `rebase-onto-before.dia` » §4.1.7. » [Fig.26]:
        * [ ] Add invisible background for padding.
    + [ ] `relative-refs.dia` » §3.1.1. » [Fig.11]:
        * [ ] Add invisible background for padding.
    + [ ] `repository-content.dia` » §2.2.5. » [Fig.6]:
        * [ ] Add invisible background for padding.
        * [ ] Translate text to English.
        * [ ] Tweak dark colors.
    + [ ] `sha.dia` » §2.2.1. » [Fig.3]:
        * [ ] Add invisible background for padding.
        * [ ] Tweak dark colors.
    + [ ] `svn-dcommit.dia` » §9.1.2.3. » [Fig.57]:
        * [ ] Add invisible background for padding.
    + [ ] `svn-rebase.dia` » §9.1.2.3.  » [Fig.56]:
        * [ ] Add invisible background for padding.
    + [ ] `tags.dia` » §3.1.3. » [Fig.12]:
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


## Diagrams Tricks and Hacks

In order to make out the most from DIA, and produce good SVG image, we've resorted to some hackish workarounds.

### Cairo SVG

When converting to SVG we use the Cairo SVG format (`-t cairo-svg`), a natively supported (but undocumented) alternative to Dia's default SVG format.

The Cairo SVG turned out to be more reliable than Dia's default SVG converter, for the latter was causing alignment-offset problems when text wrapped across multiple lines (a rather visible problem when dealing with centered-text in mono-spaced fonts).

Furthermore, SVG images generated via Cairo are not font dependent, for all text gets converted to SVG shapes, whereas the default SVG format relies on the specified font being present in the end-users' machine — lacking which it will fallback on some default system font replacement that would make the diagrams look ugly and break the intended proportions.

Font-dependency limits the choice of typefaces to those few  safe fonts which are knows to be available on all OSs and devices (Times New Roman, Arial, Courier New, etc.), hence we decided to switch to the Cairo SVG format even though it required us to adopt Dia version `0.97.3`, which is still not available on Dia's websites, and available only as pre-release for Windows.

### Invisible Boxes to Preserve Padding

Since AsciiDoc doesn't currently support images padding functionality, in order to ensure that the generated SVG images have some even padding around them across all output formats, I've added an invisible box in the bottom layer (i.e. no background drawn, and border line size 0).

The invisible box of each image has been carefully drawn to achieve the desired padding.

# Diagrams Previews


## `branch-model.svg`

- §6.2. » [Fig.41]

![`branch-model.svg`][branch-model.svg]


-------------------------------------------------------------------------------

## `central-workflow.svg`

- §5.1. » [Fig.30]

![`central-workflow.svg`][central-workflow.svg]


-------------------------------------------------------------------------------

## `clone.svg`

- §5.2.2. » [Fig.31]

![`clone.svg`][clone.svg]


-------------------------------------------------------------------------------

## `commit-graph-with-refs.svg`

- §2.2.6.1. » [Fig.8]

![`commit-graph-with-refs.svg`][commit-graph-with-refs.svg]


-------------------------------------------------------------------------------

## `commit-graph.svg`

- §2.2.6. » [Fig.7]

![`commit-graph.svg`][commit-graph.svg]


-------------------------------------------------------------------------------

## `commit.svg`

- §3.1. » [Fig.10]

![`commit.svg`][commit.svg]


-------------------------------------------------------------------------------

## `fetch.svg`

- §5.3.1. » [Fig.33]

![`fetch.svg`][fetch.svg]


-------------------------------------------------------------------------------

## `ff-after.svg`

- §3.3.2. » [Fig.17]

![`ff-after.svg`][ff-after.svg]


-------------------------------------------------------------------------------

## `ff-before.svg`

- §3.3.2. » [Fig.16]

![`ff-before.svg`][ff-before.svg]


-------------------------------------------------------------------------------

## `git-objects-hierarchy.svg`

- §2.2.3. » [Fig.5]

![`git-objects-hierarchy.svg`][git-objects-hierarchy.svg]


-------------------------------------------------------------------------------

## `git-objects.svg`

- §2.2.2. » [Fig.4]

![`git-objects.svg`][git-objects.svg]


-------------------------------------------------------------------------------

## `github-workflow.svg`

- §11. » [Fig.59]

![`github-workflow.svg`][github-workflow.svg]


-------------------------------------------------------------------------------

## `index.svg`

- §2.1.1. » [Fig.1]

![`index.svg`][index.svg]


-------------------------------------------------------------------------------

## `integration-manager-workflow.svg`

- §5.6. » [Fig.37]

![`integration-manager-workflow.svg`][integration-manager-workflow.svg]


-------------------------------------------------------------------------------

## `merge-after.svg`

> _Not used in the book!_

![`merge-after.svg`][merge-after.svg]


-------------------------------------------------------------------------------

## `merge-base-commit.svg`

- §3.3.1 » [Fig.15]

![`merge-base-commit.svg`][merge-base-commit.svg]


-------------------------------------------------------------------------------

## `patches-via-email.svg`

- §5.10. » [Fig.40]

![`patches-via-email.svg`][patches-via-email.svg]


-------------------------------------------------------------------------------

## `pull-rebase.svg`

- §5.3.2. » [Fig.35]

![`pull-rebase.svg`][pull-rebase.svg]


-------------------------------------------------------------------------------

## `pull.svg`

- §5.3.2. » [Fig.34]

![`pull.svg`][pull.svg]


-------------------------------------------------------------------------------

## `push.svg`

- §5.4. » [Fig.36]

![`push.svg`][push.svg]


-------------------------------------------------------------------------------

## `rebase-after.svg`

- §4.1. » [Fig.23]

![`rebase-after.svg`][rebase-after.svg]


-------------------------------------------------------------------------------

## `rebase-before.svg`

- §4.1. » [Fig.22]

![`rebase-before.svg`][rebase-before.svg]


-------------------------------------------------------------------------------

## `rebase-onto-after.svg`

- §4.1.7. » [Fig.27]

![`rebase-onto-after.svg`][rebase-onto-after.svg]


-------------------------------------------------------------------------------

## `rebase-onto-before.svg`

- §4.1.7. » [Fig.26]

![`rebase-onto-before.svg`][rebase-onto-before.svg]


-------------------------------------------------------------------------------

## `relative-refs.svg`

- §3.1.1. » [Fig.11]

![`relative-refs.svg`][relative-refs.svg]


-------------------------------------------------------------------------------

## `repository-content.svg`

- §2.2.5. » [Fig.6]

![`repository-content.svg`][repository-content.svg]


-------------------------------------------------------------------------------

## `sha.svg`

- §2.2.1. » [Fig.3]

![`sha.svg`][sha.svg]


-------------------------------------------------------------------------------

## `svn-dcommit.svg`

- §9.1.2.3. » [Fig.57]

![`svn-dcommit.svg`][svn-dcommit.svg]


-------------------------------------------------------------------------------

## `svn-rebase.svg`

- §9.1.2.3.  » [Fig.56]

![`svn-rebase.svg`][svn-rebase.svg]


-------------------------------------------------------------------------------

## `tags.svg`

- §3.1.3. » [Fig.12]

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
[dia badge]: https://img.shields.io/badge/Dia-0.97.3-brightgreen

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

<!-- Figs previews -->

[Fig.1]: ../../../docs_src/Git-Buch_EN.html#fig.index
[Fig.3]: ../../../docs_src/Git-Buch_EN.html#fig.sha-1
[Fig.4]: ../../../docs_src/Git-Buch_EN.html#fig.git-objects
[Fig.5]: ../../../docs_src/Git-Buch_EN.html#fig.git-objects-hierarchy
[Fig.6]: ../../../docs_src/Git-Buch_EN.html#fig.repository-content
[Fig.7]: ../../../docs_src/Git-Buch_EN.html#fig.commit-graph
[Fig.8]: ../../../docs_src/Git-Buch_EN.html#fig.commit-graph-with-refs
[Fig.10]: ../../../docs_src/Git-Buch_EN.html#fig.commit
[Fig.11]: ../../../docs_src/Git-Buch_EN.html#fig.relative-refs
[Fig.12]: ../../../docs_src/Git-Buch_EN.html#fig.tag-object
[Fig.15]: ../../../docs_src/Git-Buch_EN.html#fig.merge-base-commit
[Fig.16]: ../../../docs_src/Git-Buch_EN.html#fig.merge-ff-before
[Fig.17]: ../../../docs_src/Git-Buch_EN.html#fig.merge-ff-after
[Fig.22]: ../../../docs_src/Git-Buch_EN.html#fig.rebase-before
[Fig.23]: ../../../docs_src/Git-Buch_EN.html#fig.rebase-after
[Fig.26]: ../../../docs_src/Git-Buch_EN.html#fig.rebase-onto-before
[Fig.27]: ../../../docs_src/Git-Buch_EN.html#fig.rebase-onto-after
[Fig.30]: ../../../docs_src/Git-Buch_EN.html#fig.central-workflow
[Fig.31]: ../../../docs_src/Git-Buch_EN.html#fig.clone
[Fig.33]: ../../../docs_src/Git-Buch_EN.html#fig.fetch
[Fig.34]: ../../../docs_src/Git-Buch_EN.html#fig.pull
[Fig.35]: ../../../docs_src/Git-Buch_EN.html#fig.pull-rebase
[Fig.36]: ../../../docs_src/Git-Buch_EN.html#fig.push
[Fig.37]: ../../../docs_src/Git-Buch_EN.html#fig.developer-public-workflow
[Fig.40]: ../../../docs_src/Git-Buch_EN.html#fig.dictator
[Fig.41]: ../../../docs_src/Git-Buch_EN.html#fig.branch-model
[Fig.56]: ../../../docs_src/Git-Buch_EN.html#fig.git-svn-rebase
[Fig.57]: ../../../docs_src/Git-Buch_EN.html#fig.git-svn-dcommit
[Fig.59]: ../../../docs_src/Git-Buch_EN.html#fig.github-workflow

<!--
[Fig.]: ../../../docs_src/Git-Buch_EN.html#XXXXXXXXX
-->

<!-- Issues -->

[Issue #12]: https://github.com/tajmone/Git-Buch_EN/issues/12 "Text-Alignment Problems in SVG Diagrams #12"

<!-- EOF -->
