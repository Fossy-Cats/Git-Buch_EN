# Git Book Diagrams

![dia version info][dia badge]

Source files to generate the diagram images in SVG using [Dia].

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
- [System Requirements and Set-Up](#system-requirements-and-set-up)
    - [Obtaining Dia 0.97](#obtaining-dia-097)
        - [Dia 0.97 for Windows](#dia-097-for-windows)
- [TODO](#todo)
- [Diagrams List and Preview Links](#diagrams-list-and-preview-links)
- [Diagrams Info](#diagrams-info)
    - [Color Palette](#color-palette)
    - [Diagrams Fonts](#diagrams-fonts)
    - [Diagrams Renaming](#diagrams-renaming)
    - [Diagrams Tricks and Hacks](#diagrams-tricks-and-hacks)
        - [Cairo SVG](#cairo-svg)
        - [Invisible Boxes to Preserve Padding](#invisible-boxes-to-preserve-padding)
        - [Related Diagrams With Same-Width](#related-diagrams-with-same-width)
- [Diagrams Previews](#diagrams-previews)
    - [`branch-model.svg`](#branch-modelsvg)
    - [`central-workflow.svg`](#central-workflowsvg)
    - [`clone.svg`](#clonesvg)
    - [Images Group: Commit Graphs](#images-group-commit-graphs)
    - [`commit-graph.svg`](#commit-graphsvg)
    - [`commit-graph-with-refs.svg`](#commit-graph-with-refssvg)
    - [`commit.svg`](#commitsvg)
    - [Images Group: ff](#images-group-ff)
        - [`ff-before.svg`](#ff-beforesvg)
        - [`ff-after.svg`](#ff-aftersvg)
    - [`git-objects-hierarchy.svg`](#git-objects-hierarchysvg)
    - [Images Group: Git Objects](#images-group-git-objects)
        - [`git-objects.svg`](#git-objectssvg)
        - [`tags.svg`](#tagssvg)
    - [`github-workflow.svg`](#github-workflowsvg)
    - [`index.svg`](#indexsvg)
    - [`integration-manager-workflow.svg`](#integration-manager-workflowsvg)
    - [`merge-base-commit.svg`](#merge-base-commitsvg)
    - [`patches-via-email.svg`](#patches-via-emailsvg)
    - [Images Group: Git & SVN Operations](#images-group-git-svn-operations)
        - [Git: Fetch, Push and Pull](#git-fetch-push-and-pull)
        - [`push.svg`](#pushsvg)
        - [SVN: Commit and Rebase](#svn-commit-and-rebase)
    - [Images Group: Rebase](#images-group-rebase)
        - [`rebase-before.svg`](#rebase-beforesvg)
        - [`rebase-after.svg`](#rebase-aftersvg)
        - [`rebase-onto-before.svg`](#rebase-onto-beforesvg)
        - [`rebase-onto-after.svg`](#rebase-onto-aftersvg)
    - [`relative-refs.svg`](#relative-refssvg)
    - [`repository-content.svg`](#repository-contentsvg)
    - [`sha.svg`](#shasvg)
- [External Links](#external-links)
    - [Dia Diagram Editor](#dia-diagram-editor)
    - [SVG Images](#svg-images)
    - [Web Safe Fonts](#web-safe-fonts)

<!-- /MarkdownTOC -->

-----


# Folder Contents

- [`build.sh`][build.sh] — converts all `*.dia` projects to `*.svg` images into [`../../../docs_src/images/`][doc imgs].
- [`get-dia.bat`][get-dia.bat] — Dia download and unpack script for Windows 10.
- `*.dia` — [Dia] source project files.



# System Requirements and Set-Up

In order to edit the diagram's sourcefile, or to run the scripts in this folder, you'll need to install [Dia Diagram Editor] version `0.97`.

Dia is a free and open source cross platform tool for editing diagrams.

> **IMPORTANT!** — Dia versions above `0.97` won't work as expected, because the diagrams rely on specific Cairo-SVG features which have changed in later Dia versions (see [Issue #12]).
> The problem has to do with zero-width borders, which should not be drawn in the final SVG generated using Cairo-SVG (which is an undocumented native export format).
>
> Tests under Windows revealed that Dia versions `>=0.97.1` draw these zero-width borders, whereas Dia `0.97` correctly ignores them.
> The problem might be related to the Cairo library version employed, not with Dia itself, and it might affect the Windows edition only.
>
> If you're working under Linux or macOS, just check that the final SVG images built using `build.sh` don't contain a thin black border around them — ideally, rebuilding the diagrams shouldn't result in any changed SVGs files in the repository.

Depending on your OS and Dia's setup, you might also need to add to the system PATH the full path to Dia's executable (i.e. the `bin/` subfolder of Dia's installation) so that it will be visible the `build.sh` script used here.


## Obtaining Dia 0.97

The Dia project is currently a bit messy.
At the time of this writing, the latest official Dia release according to the official websites is version `0.97.2` (2011-12-18), but Dia version `0.97.3` (2014-09-05) for Linux is already available from the GNOME Git repository, although it's not mentioned in either of Dia's websites:

- https://gitlab.gnome.org/GNOME/dia/blob/master/NEWS#L156

Adding to the confusion, there are two distinct official Dia websites:

- https://wiki.gnome.org/Apps/Dia — for latest Linux editions (build from source).
- http://dia-installer.de — for latest precompiled binaries for Windows, Linux and Mac.

... and two official repositories:

- https://gitlab.gnome.org/GNOME/dia
- https://sourceforge.net/projects/dia-installer/


Older versions of Dia can be downloaded from SourceForge, either as source code or as precompiled binaries for Linux, Mac and Windows:

- [SourceForge » Dia 0.97]

Linux users might build Dia from source via Git, from the GNOME repository:

- https://gitlab.gnome.org/GNOME/dia/

Dia version `0.97` might not be available for all OSs, some precompiled binaries will be for `0.97-1`, `0.97-2`, etc., but as long as it's in the `0.97-x` range it should be fine.

Anyhow, what's important here is to ensure that the Dia version used doesn't draw the zero-width borders around the diagrams when exporting to Cairo-SVG.


### Dia 0.97 for Windows

> **WIN 10 DOWNLOADER** — If you're using Windows 10, you can simply run the following batch script which will download the correct version of Dia and unpack here, into the `./Dia/` subfolder:
>
> - [`get-dia.bat`][get-dia.bat]
>
> The [`build.sh`][build.sh] script will autodetect its presence and use its `dia.exe` binary, instead of relying on the system PATH.
> This will prevent conflicts with other versions of Dia that might be present on your system.

The recommended version for Windows is Dia `0.97` (2009-05-14), available from SourceForge:

- [SourceForge » Dia 0.97]:
    + [`dia_0.97_win32.zip`][dia_0.97_win32.zip]

That's the exact Dia version used to build the diagrams by the project maintainer.


# TODO

- [x] Translate DIA sources filename to English.
- [ ] Edit source diagrams:
    + [x] `branch-model.dia` » §6.2. » [Fig.41]:
        * [x] Add invisible background for padding.
        * [x] Re-build diagram using Flow Chart elements.
        * [x] Use custom fonts.
        * [x] Use custom color palette.
    + [x] `central-workflow.dia` » §5.1. » [Fig.30]:
        * [x] Add invisible background for padding.
        * [x] Re-build diagram using Flow Chart elements.
        * [x] Translate text to English.
        * [x] Use custom fonts.
        * [x] Use custom color palette.
    + [x] `clone.dia` » §5.2.2. » [Fig.31]:
        * [x] Add invisible background for padding.
        * [x] Re-build diagram using Flow Chart elements.
        * [x] Use custom fonts.
        * [x] Use custom color palette.
    + [x] Grouped images:
        * [x] Enforce same BG-Box width to preserve their aspect ratio:
            - [x] `commit-graph-with-refs.dia` » §2.2.6.1. » [Fig.8]:
                + [x] Add invisible background with same width for padding.
                + [x] Re-build diagram using Flow Chart elements.
                + [x] Use custom fonts.
                + [x] Use custom color palette.
            - [x] `commit-graph.dia` » §2.2.6. » [Fig.7]:
                + [x] Add invisible background with same width for padding.
                + [x] Re-build diagram using Flow Chart elements.
                + [x] Use custom fonts.
                + [x] Use custom color palette.
    + [x] `commit.dia` » §3.1. » [Fig.10]:
        * [x] Add invisible background for padding.
        * [x] Re-build diagram using Flow Chart elements.
        * [x] Use custom fonts.
        * [x] Use custom color palette.
    + [ ] Grouped images:
        * [ ] Enforce same BG-Box width to preserve their aspect ratio:
            - [ ] `fetch.dia` » §5.3.1. » [Fig.33]:
                + [ ] Add invisible background with same width for padding.
                + [ ] Re-build diagram using Flow Chart elements.
                + [ ] Use custom fonts.
                + [ ] Use custom color palette.
            - [x] `pull-rebase.dia` » §5.3.2. » [Fig.35]:
                + [x] Add invisible background with same width for padding.
                + [x] Re-build diagram using Flow Chart elements.
                + [x] Use custom fonts.
                + [x] Use custom color palette.
            - [x] `pull.dia` » §5.3.2. » [Fig.34]:
                + [x] Add invisible background with same width for padding.
                + [x] Re-build diagram using Flow Chart elements.
                + [x] Use custom fonts.
                + [x] Use custom color palette.
            - [x] `push.dia` » §5.4. » [Fig.36]:
                + [x] Add invisible background with same width for padding.
                + [x] Re-build diagram using Flow Chart elements.
                + [x] Use custom fonts.
                + [x] Use custom color palette.
            - [ ] `svn-rebase.dia` » §9.1.2.3.  » [Fig.56]:
                + [ ] Add invisible background with same width for padding.
                + [ ] Re-build diagram using Flow Chart elements.
                + [ ] Use custom fonts.
                + [ ] Use custom color palette.
            - [ ] `svn-dcommit.dia` » §9.1.2.3. » [Fig.57]:
                + [ ] Add invisible background with same width for padding.
                + [ ] Re-build diagram using Flow Chart elements.
                + [ ] Use custom fonts.
                + [ ] Use custom color palette.
    + [x] Grouped images:
        * [x] Enforce same BG-Box width to preserve their aspect ratio:
            - [x] `ff-after.dia` » §3.3.2. » [Fig.17]:
                + [x] Add invisible background with same width for padding.
                + [x] Re-build diagram using Flow Chart elements.
                + [x] Use custom fonts.
                + [x] Use custom color palette.
            - [x] `ff-before.dia` » §3.3.2. » [Fig.16]:
                + [x] Add invisible background with same width for padding.
                + [x] Re-build diagram using Flow Chart elements.
                + [x] Use custom fonts.
                + [x] Use custom color palette.
    + [x] `git-objects-hierarchy.dia` » §2.2.3. » [Fig.5]:
        * [x] Add invisible background for padding.
        * [x] Translate text to English.
        * [x] Use custom fonts.
        * [x] Use custom color palette:
            - [x] Current BG colors are too dark.
    + [ ] Grouped images:
        * [x] Enforce same BG-Box width to preserve their aspect ratio:
            - [ ] `git-objects.dia` » §2.2.2. » [Fig.4]:
                + [ ] Translate text to English? This depends on whether we'll be translating commit messages in the book's Git logs!
                + [x] Add invisible background for padding.
                + [x] Use custom fonts.
                + [x] Use custom color palette:
                    * [x] Current BG colors are too dark.
            - [ ] `tags.dia` » §3.1.3. » [Fig.12]:
                + [ ] Translate text to English? This depends on whether we'll be translating commit messages in the book's Git logs!
                + [x] Add invisible background for padding.
                + [x] Use custom fonts.
                + [x] Add BG color to tag shape? (no colors used currently)
    + [x] `github-workflow.dia` » §11. » [Fig.59]:
        * [x] Add invisible background for padding.
        * [x] Re-build diagram using Flow Chart elements.
        * [x] Translate text to English.
        * [x] Use custom fonts.
        * [x] Use custom color palette:
            - [x] Current BG colors are too dark.
    + [x] `index.dia` » §2.1.1. » [Fig.1]:
        * [x] Add invisible background for padding.
        * [x] Use custom fonts.
        * [x] Use custom color palette:
            - [x] Current BG colors are too dark.
    + [x] `integration-manager-workflow.dia` » §5.6. » [Fig.37]:
        * [x] Add invisible background for padding.
        * [x] Re-build diagram using Flow Chart elements.
        * [x] Translate text to English.
        * [x] Use custom fonts.
        * [x] Use custom color palette:
            - [x] Current BG colors are too dark.
    + [x] `merge-base-commit.dia` » §3.3.1 » [Fig.15]:
        * [x] Add invisible background for padding.
        * [x] Re-build diagram using Flow Chart elements.
        * [x] Use custom fonts.
        * [x] Use custom color palette.
    + [x] `patches-via-email.dia` » §5.10. » [Fig.40]:
        * [x] Translate text to English.
        * [x] Add invisible background for padding.
        * [x] Re-build diagram using Flow Chart elements.
        * [x] Use custom fonts.
        * [x] Use custom color palette.
    + [x] Grouped images:
        * [x] Enforce same BG-Box width to preserve their aspect ratio, and align diagram contents to the left to preserve relative positions:
            - [x] `rebase-before.dia` » §4.1. » [Fig.22]:
                + [x] Add invisible background with same width for padding.
                + [x] Re-build diagram using Flow Chart elements.
                + [x] Use custom fonts.
                + [x] Use custom color palette.
            - [x] `rebase-after.dia` » §4.1. » [Fig.23]:
                + [x] Add invisible background with same width for padding.
                + [x] Re-build diagram using Flow Chart elements.
                + [x] Use custom fonts.
                + [x] Use custom color palette.
            - [x] `rebase-onto-before.dia` » §4.1.7. » [Fig.26]:
                + [x] Add invisible background for padding.
                + [x] Re-build diagram using Flow Chart elements.
                + [x] Use custom fonts.
                + [x] Use custom color palette.
            - [x] `rebase-onto-after.dia` » §4.1.7. » [Fig.27]:
                + [x] Add invisible background with same width for padding.
                + [x] Re-build diagram using Flow Chart elements.
                + [x] Use custom fonts.
                + [x] Use custom color palette.
    + [x] `relative-refs.dia` » §3.1.1. » [Fig.11]:
        * [x] Add invisible background for padding.
        * [x] Re-build diagram using Flow Chart elements.
        * [x] Use custom fonts.
        * [x] Use custom color palette.
    + [ ] `repository-content.dia` » §2.2.5. » [Fig.6]:
        * [ ] Add invisible background for padding.
        * [ ] Translate text to English? This depends on whether we'll be translating commit messages in the book's Git logs!
        * [ ] Use custom fonts.
        * [ ] Use custom color palette:
            - [ ] Current BG colors are too dark.
    + [x] `sha.dia` » §2.2.1. » [Fig.3]:
        * [x] Add invisible background for padding.
        * [x] Re-build diagram using Flow Chart elements.
        * [x] Use custom fonts.
        * [x] Use custom color palette:
            - [x] Current BG colors are too dark.
- [ ] Since the Cairo SVG format seems to include SVG size information, we need to ensure that images are proportional and have correct size ([Issue #13]):
    + [ ] If in the HTML doc, it might is enough to enforce a custom width, no need to edit them (check).
    + [ ] Check if other output formats might benefit from defining specific image sizes in the source Dia project.
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


# Diagrams Info

The DIA sources in this folder were taken from the [`bilder_quelldaten/diagramme/`][diagramme/] folder of the __[Git-Buch]__ upstream repository.


## Color Palette

- `diagrams-palette.cifc` — [ColorImpact 4] palette project.
- [`diagrams-palette.html`][diagrams-palette.html] — Palette color spec.
- [`diagrams-palette.png`][diagrams-palette.png] — Palette swatches.

The color palette for the diagrams' background colors was redesigned.
The original palette contained too many similar (but no identical) colors, so we've reduced the palette entries by adopting a consistent color scheme, free of similar colors redundancy:

![diagrams' palette swatches][diagrams-palette.png]

Each base color (top row) has a lighter tint counterpart (bottom row).
Most diagrams use only base colors; lighter colors are mostly used in diagrams representing before/after transitions, to mark previous states.

There's a methodology behind color usage in the original diagrams, which has been preserved in our changes.
A close examination of the diagrams is sufficient to grasp the colors-usage criteria.

> **NOTE** — Some of the above colors are not actually used in any diagrams, but we've kept them in the palette for the sake of color scheme completeness and consistency, and in case they might be needed in the future.

Furthermore, the original palette featured some dark colors that didn't meet the [WCAG 2] guidelines on contrast and color requirements (see [Issue #15]), so the entire color scheme was redesigned from scratch, using color harmonies that produced colors similar to the originals, but not as dark, and ensured that they all pass the color contrast accessibility tests via the [WebAIM Contrast Checker]:

| contrast ratios  | [19:1]    | [14.93:1] | [10.82:1] | [10.75:1] | [14.4:1]  | [12.91:1] | [15.6:1]  |
| :--------------- | :-------: | :-------: | :-------: | :-------: | :-------: | :-------: | :-------: |
| **base colors**  | `#FDF6B2` | `#FDD1B2` | `#E9A4DE` | `#A1BBE5` | `#A9E5A1` | `#BACFCF` | `#DEDEDE` |


## Diagrams Fonts

The original diagrams relied on using "monospace" font, which is a generic fallback definition which might lead to different OSs picking different default fonts (although "Courier New" would be usually the default choice, unless the user has specified another font). Similarly, the few diagrams which rely on sanserif fonts were using the "sans" font, which is likely to produce different results on different OSs.

Also, we're using the Cairo-SVG output format (natively supported by Dia, but undocumented) which will convert all text to SVG shapes, freeing the final SVG diagrams from any fonts-dependencies.

We've therefore chosen to use the following fonts for the diagrams:

|  category  |        name       | version  |     author     |         license         |
|------------|-------------------|----------|----------------|-------------------------|
| monospace  | **[Inconsolata]** | `v3.001` | Raph Levien    | [SIL Open Font License] |
| sans serif | **[Open Sans]**   | `v1.10`  | Steve Matteson | [Apache 2.0]            |

If you need to rebuild some diagrams, ensure that you've installed the fonts from the Google Fonts links provided above, for some OSs (e.g. Windows) ship with same-named fonts by different authors, which might produce slightly different results.

Under Windows OS, you can safely install those fonts even though already present in the system (as natively shipped fonts), because they will be installed in the User fonts directory, taking precedence over the system wide version, without replacing them.

Also, some of the above fonts are (or will eventually be) available also in the _[variable fonts]_ format; don't use it, use instead the standard format where each font variation comes as an individual file, which is the format we've been using to ensure support across all platforms (and Dia).


## Diagrams Renaming

Some DIA source project files (but not all) have been renamed according to the following table — affecting the generated filenames too.

|          original          |             renamed to             |
|----------------------------|------------------------------------|
| `developer-public.dia`     | `integration-manager-workflow.dia` |
| `ff-nachher.dia`           | `ff-after.dia`                     |
| `ff-vorher.dia`            | `ff-before.dia`                    |
| `graph.dia`                | `commit-graph.dia`                 |
| `graph-mit-refs.dia`       | `commit-graph-with-refs.dia`       |
| `merge-nachher.dia`        | _deleted_ (unused in original)     |
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

Font-dependency limits the choice of typefaces to those few  safe fonts which are knows to be available on all OSs and devices (Times New Roman, Arial, Courier New, etc.), hence we decided to switch to the Cairo SVG format even though it required us to adopt Dia version `0.97-1`, which is still not available on Dia's websites, and available only as pre-release for Windows.

### Invisible Boxes to Preserve Padding

Since AsciiDoc doesn't currently support images padding functionality, in order to ensure that the generated SVG images have some even padding around them across all output formats, I've added an invisible box in the bottom layer (i.e. no background drawn, and border line size 0).

The invisible box of each image has been carefully drawn to achieve the desired padding.

### Related Diagrams With Same-Width

Some diagrams are part of a a series of images relating to a specific topic, often depicting the status of a Git object at different snapshots evolving in time.
In order to preserve consistent proportions between these images, we add a same-width invisible background box (i.e. the one fitting the largest image of the group) to ensure that they will all scale proportionally when using percentages in the AsciiDoc source.

Similar images are gathered according to their group of belonging in the previews section below.


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

## Images Group: Commit Graphs

The following two images must have a same-width invisible background box to enforce consistent proportions, because they belong to a series of diagrams on the same topic:

## `commit-graph.svg`

- §2.2.6. » [Fig.7]

![`commit-graph.svg`][commit-graph.svg]


## `commit-graph-with-refs.svg`

- §2.2.6.1. » [Fig.8]

![`commit-graph-with-refs.svg`][commit-graph-with-refs.svg]


-------------------------------------------------------------------------------

## `commit.svg`

- §3.1. » [Fig.10]

![`commit.svg`][commit.svg]

-------------------------------------------------------------------------------

## Images Group: ff

The following two images must have a same-width invisible background box to enforce consistent proportions, because they belong to a series of diagrams on the same topic:

### `ff-before.svg`

- §3.3.2. » [Fig.16]

![`ff-before.svg`][ff-before.svg]


### `ff-after.svg`

- §3.3.2. » [Fig.17]

![`ff-after.svg`][ff-after.svg]


-------------------------------------------------------------------------------

## `git-objects-hierarchy.svg`

- §2.2.3. » [Fig.5]

![`git-objects-hierarchy.svg`][git-objects-hierarchy.svg]


-------------------------------------------------------------------------------

## Images Group: Git Objects

The following two images must have a same-width invisible background box to enforce consistent proportions, because they are similar diagrams on the same topic, even though they occur far apart.

### `git-objects.svg`

- §2.2.2. » [Fig.4]

![`git-objects.svg`][git-objects.svg]

### `tags.svg`

- §3.1.3. » [Fig.12]

![`tags.svg`][tags.svg]


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

## `merge-base-commit.svg`

- §3.3.1 » [Fig.15]

![`merge-base-commit.svg`][merge-base-commit.svg]


-------------------------------------------------------------------------------

## `patches-via-email.svg`

- §5.10. » [Fig.40]

![`patches-via-email.svg`][patches-via-email.svg]


-------------------------------------------------------------------------------

## Images Group: Git & SVN Operations

The following images must have a same-width invisible background box to enforce consistent proportions, because they belong to a series of similar diagrams on related topics, for both Git and SVN operations.

### Git: Fetch, Push and Pull

#### `fetch.svg`

- §5.3.1. » [Fig.33]

![`fetch.svg`][fetch.svg]


#### `pull.svg`

- §5.3.2. » [Fig.34]

![`pull.svg`][pull.svg]


#### `pull-rebase.svg`

- §5.3.2. » [Fig.35]

![`pull-rebase.svg`][pull-rebase.svg]


### `push.svg`

- §5.4. » [Fig.36]

![`push.svg`][push.svg]

### SVN: Commit and Rebase


#### `svn-rebase.svg`

- §9.1.2.3.  » [Fig.56]

![`svn-rebase.svg`][svn-rebase.svg]


#### `svn-dcommit.svg`

- §9.1.2.3. » [Fig.57]

![`svn-dcommit.svg`][svn-dcommit.svg]


-------------------------------------------------------------------------------

## Images Group: Rebase

The following four images must have a same-width invisible background box to enforce consistent proportions, because they belong to a series of diagrams on the same topic:

### `rebase-before.svg`

- §4.1. » [Fig.22]

![`rebase-before.svg`][rebase-before.svg]


### `rebase-after.svg`

- §4.1. » [Fig.23]

![`rebase-after.svg`][rebase-after.svg]


### `rebase-onto-before.svg`

- §4.1.7. » [Fig.26]

![`rebase-onto-before.svg`][rebase-onto-before.svg]


### `rebase-onto-after.svg`

- §4.1.7. » [Fig.27]

![`rebase-onto-after.svg`][rebase-onto-after.svg]


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

<!-- fonts -->

[Inconsolata]: https://fonts.google.com/specimen/Inconsolata?preview.text_type=custom#standard-styles "Inconsolata page at Google Fonts"
[Open Sans]: https://fonts.google.com/specimen/Open+Sans?preview.text=1234567890%20ABCDEFGHIJKL%20abcdefghijk&preview.text_type=custom#standard-styles "Open Sans page at Google Fonts"

[variable fonts]: https://web.dev/variable-fonts/ "Learn more about variable fonts"
[CSS Font Stack]: https://www.cssfontstack.com/ "Visit website"

<!-- licenses -->

[Apache 2.0]: https://www.apache.org/licenses/LICENSE-2.0 "View the full text of the Apache 2.0 License"
[SIL Open Font License]: https://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL "View the full text of the SIL Open Font License"

<!-- colors -->

[ColorImpact 4]: https://www.tigercolor.com/ColorImpact.htm "Visit ColorImpact 4 homepage at Tiger Color"
[WCAG 2]: https://en.wikipedia.org/wiki/Web_Content_Accessibility_Guidelines "Wikipedia » Web Content Accessibility Guidelines"
[WebAIM Contrast Checker]: https://webaim.org/resources/contrastchecker/ "WebAIM Contrast Checker on-line tool"

<!-- WebAIM Contrast Ratios -->

[19:1]: https://webaim.org/resources/contrastchecker/?fcolor=000000&bcolor=FDF6B2
[14.93:1]: https://webaim.org/resources/contrastchecker/?fcolor=000000&bcolor=FDD1B2
[10.82:1]: https://webaim.org/resources/contrastchecker/?fcolor=000000&bcolor=E9A4DE
[10.75:1]: https://webaim.org/resources/contrastchecker/?fcolor=000000&bcolor=A1BBE5
[14.4:1]: https://webaim.org/resources/contrastchecker/?fcolor=000000&bcolor=A9E5A1
[12.91:1]: https://webaim.org/resources/contrastchecker/?fcolor=000000&bcolor=BACFCF
[15.6:1]: https://webaim.org/resources/contrastchecker/?fcolor=000000&bcolor=DEDEDE

<!-- Dia -->

[Dia]: http://dia-installer.de/ "Visit Dia's website"
[Dia Diagram Editor]: http://dia-installer.de/ "Visit Dia's website"
[dia badge]: https://img.shields.io/badge/Dia-0.97-brightgreen

[dia_0.97_win32.zip]: https://sourceforge.net/projects/dia-installer/files/dia/0%2C97/dia_0.97_win32.zip/download "Download 'dia_0.97_win32.zip' from SourceForge"
[SourceForge » Dia 0.97]: https://sourceforge.net/projects/dia-installer/files/dia/0%2C97/ "Dia 0.97 files at SourceForge"

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

<!-- project files -->

[build.sh]: ./build.sh "View source script"
[diagrams-palette.html]: ./diagrams-palette.html "View diagrams palette color spec (HTML)"
[diagrams-palette.png]: ./diagrams-palette.png "View diagrams palette swatches"
[get-dia.bat]: ./get-dia.bat "View source script"

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

<!-- Issues -->

[Issue #12]: https://github.com/tajmone/Git-Buch_EN/issues/12 "Text-Alignment Problems in SVG Diagrams #12"
[Issue #13]: https://github.com/tajmone/Git-Buch_EN/issues/13 "Diagrams: Cairo SVG Enforcing Document Sizes? #13"
[Issue #15]: https://github.com/tajmone/Git-Buch_EN/issues/15 "Diagrams Colors Accessibility Problems #15"

<!-- EOF -->
