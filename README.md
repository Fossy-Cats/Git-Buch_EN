[![Build Status][Travis badge]][Travis link]&nbsp;
![project status][status badge]&nbsp;
[![CC BY-NC-SA 4.0 License][license badge]][LICENSE]&nbsp;
[![project branch][branch badge]][beta-dev]&nbsp;

# Git-Buch, English Translation

English translation of _[Das Git-Buch]_ (The Git Book) by [Valentin Haenel] and [Julius Plenz], released under [CC BY-NC-SA 4.0].

- https://github.com/tajmone/Git-Buch_EN

Translation project created by [Tristano Ajmone] in 2020/06/14.
English translation by [Tristano Ajmone] and [Alexander Bolli].

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Contents](#contents)
- [Book Info](#book-info)
- [Project Status](#project-status)
- [License](#license)
- [Repository Info](#repository-info)
    - [Branches](#branches)
    - [System Requirements](#system-requirements)
- [Links](#links)

<!-- /MarkdownTOC -->

-----

# Contents

- [`/assets_src/`][assets_src] — Assets source files:
    + [`/img/`][img/]
        * [`/dia/`][dia/] — Dia diagrams source projects.
- [`/docs/`][docs/] — GitHub Pages static website.
- [`/docs_src/`][docs_src/] — AsciiDoc sources.
    + [`/images/`][images/] — Book images.
- [`LICENSE`][LICENSE] — full text of the [CC BY-NC-SA 4.0].
- [`README_DE.md`][README_DE] — Upstream README file, German original.
- [`README_EN.md`][README_EN] — Upstream README file, English translation.


# Book Info

This is the English translation of the German book _Git, Verteilte Versionskontrolle für Code und Dokumente_ (Git, Distributed version control for code and documents) by [Valentin Haenel] and [Julius Plenz], 2nd Ed. 2014 — aka _Das Git-Buch_.

The _Git_ book was published in paperback and eBook editions by __[Open Source Press]__ (2003–2015), a Munich based computer book publisher specialized in open-source software and philosophy topics.

- [paperback edition] — Wayback Machine, 2015.
- [digital editions] — Wayback Machine, 2015.


When __[Open Source Press]__ ceased all publishing activities in December 2015, it transferred all the rights of the published texts back to their original authors.
V.Haenel and J.Plenz decided to release their _Git_ book under Creative Commons license, and published its full sources in AsciiDoc on GitHub:

- [github.com/gitbuch/gitbuch_cc]

This repository is dedicated to the English translation of the book, based on the original German repository (commit [`76af76a`][76af76a]).

Since in the German world the book is commonly referred to as _Das Git-Buch_ (The Git Book), I've opted to name the translation project as __Git-Buch EN__ as a way to emphasize the link to original German edition and to avoid confusion with other similarly titled books already available in English.


# Project Status

Although the book is still in its Beta stage, it has been entirely translated and therefore readers can start enjoying it without further ado.

There is still some polishing work to be done before the English book will reach v1.0.0:

- The entire translation of the text and its footnotes is still a draft that needs revising and proofreading.
- The book was ported to from AsciiDoc (Python) to our custom Asciidoctor (Ruby) toolchain, and there are still some formatting and styles issues to be dealt with.
- Currently, only the HTML version of the book is available, but we're planning to add a PDF version too, but still need to chose which backend to use and then setup its toolchain, templates, etc.

In the meantime, the book will be updated regularly during its Beta stage, to ensure that all improvements are available to the reader.


# License

- [`LICENSE`][LICENSE] — full text of the [CC BY-NC-SA 4.0].

This book is the English translation of the German book _[Das Git-Buch]_ (The Git Book) by [Valentin Haenel] and [Julius Plenz], released under [CC BY-NC-SA 4.0] license; it's therefore a derivative work of the original book and bound by the same license terms.

```
"Git, Verteilte Versionskontrolle für Code und Dokumente"
(c) by Valentin Haenel and Julius Plenz

The "Git" book is licensed under a
Creative Commons Attribution-NonCommercial 4.0 International License.

You should have received a copy of the license along with this
work. If not, see <http://creativecommons.org/licenses/by-nc/4.0/>.
```


# Repository Info

Summary info on the repository and its current status.

The current development branch is [`beta-dev`][beta-dev], all pull requests should be submitted there.


## Branches

|                   branch                   |                            description                             |
|--------------------------------------------|--------------------------------------------------------------------|
| [`alpha-dev`][alpha-dev]                   | Current dev branch, until v1.0.0 is ready.                         |
| [`beta-dev`][beta-dev] &ast;               | Old dev branch for the Alpha stage, no longer used.                |
| [`master`][master]                         | Main branch, no pull request allowed.                              |
| [`upstream-de-master`][upstream-de-master] | Orphan mirror of `master` from `gitbuch/gitbuch_cc` upstream repo. |

The [`beta-dev`][beta-dev] branch is the current development branch (until the book reaches v1.0.0); any pull requests should be submitted there.

The [`alpha-dev`][alpha-dev] branch is no longer active, it's kept for reference purposes only.

The [`upstream-de-master`][upstream-de-master] orphan branch is a mirror of the `master` branch from the upstream repository, kept as a reference to the original files and in case we'll need to integrate future updates from the upstream project.


## System Requirements

In order to build this repository you'll need:

- [Ruby] v3
- [Asciidoctor] v2 (Ruby version)

Optionally, in order to edit and build the SVG diagrams:

- [Dia] v0.97 — diagram editor (see [Dia README]).
- [SVGO] ([Node.js]) — SVG optimizer.

In order to contribute to the repository, you'll also need:

- [EClint] ([Node.js]) — [EditorConfig] validation tool.
- An [EditorConfig] compliant editor/IDE.

-------------------------------------------------------------------------------

# Links

Git-Buch:

- [gitbu.ch] — official _Git-Buch_ website (German).
- [github.com/gitbuch/gitbuch_cc] — upstream repository of the original German edition.

Open Source Press:

- [www.opensourcepress.de]
- [Wikipedia » Open Source Press]

[Wayback Machine] archived pages from the original _Git-Buch_ editions at __[Open Source Press]__ website, 2015:

- [paperback edition]
- [digital editions]

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Das Git-Buch]: http://gitbu.ch "'Git-Buch' official website (German)"
[gitbu.ch]: http://gitbu.ch "'Git-Buch' official website (German)"
[github.com/gitbuch/gitbuch_cc]: https://github.com/gitbuch/gitbuch_cc "View the upstream repository of the Git-Buch"

[76af76a]: https://github.com/gitbuch/gitbuch_cc/tree/76af76a303a6111d3a5910d612980fc4c597e05f/ "View upstream repository, commit 76af76a"

<!-- Open Source Press -->

[Open Source Press]: https://www.opensourcepress.de
[www.opensourcepress.de]: https://www.opensourcepress.de
[Wikipedia » Open Source Press]: https://en.wikipedia.org/wiki/Open_Source_Press

[Wayback Machine]: https://web.archive.org "Wayback Machine homepage"
[paperback edition]: https://web.archive.org/web/20150711115809/http://www.opensourcepress.de/de/produkte/Git/33227/978-3-95539-119-5 "Archived copy of 'Git' paperback edition page at Open Source Press (Wayback Machine, 2015)"
[digital editions]: https://web.archive.org/web/20150711115809/http://www.opensourcepress.de/de/produkte/Git/33227/978-3-95539-119-5 "Archived copy of 'Git' digital editions page at Open Source Press (Wayback Machine, 2015)"

<!-- CC BY-NC-SA 4.0 -->

[CC BY-NC-SA 4.0]: https://creativecommons.org/licenses/by-nc-sa/4.0/ "View the CC BY-NC-SA 4.0 License at Creative Commons"

<!-- badges -->

[license badge]: https://img.shields.io/badge/license-CC_BY--NC--SA_4.0-00b5da.svg
[status badge]: https://img.shields.io/badge/status-beta-orange "Project Status: Beta (polishing in progress)"
[branch badge]: https://img.shields.io/badge/PRs_Branch-beta--dev-yellow "Pull Requests Branch: beta-dev"
[Travis badge]: https://img.shields.io/travis/com/tajmone/Git-Buch_EN/master?logo=travis
[Travis link]: https://travis-ci.com/tajmone/Git-Buch_EN "Travis CI: EditorConfig validation status"

<!-- repo files -->

[LICENSE]: ./LICENSE "View License file"
[README_DE]: ./README_DE.md "Upstream README file: German original"
[README_EN]: ./README_EN.md "Upstream README file: English translation"

<!-- repo folders -->

[docs/]: ./docs/ "Navigate to GitHub Pages website folder"

[docs_src/]: ./docs_src/ "Navigate to AsciiDoc sources folder"
[images/]: ./docs_src/images/ "Navigate to book images folder"

[assets_src]: ./assets_src/ "Navigate to assets sources folder"
[img/]: ./assets_src/img/ "Navigate to source images folder"
[dia/]: ./assets_src/img/dia/ "Navigate to diagrams sources folder"
[Dia README]: ./assets_src/img/dia/README.md "View README doc from Dia sources folder"

<!-- repo branches -->

[alpha-dev]: https://github.com/tajmone/Git-Buch_EN/tree/alpha-dev "View the 'alpha-dev' branch on GitHub"
[beta-dev]: https://github.com/tajmone/Git-Buch_EN/tree/beta-dev "View the 'beta-dev' branch on GitHub"
[master]: https://github.com/tajmone/Git-Buch_EN/tree/master "View the 'master' branch on GitHub"
[upstream-de-master]: https://github.com/tajmone/Git-Buch_EN/tree/upstream-de-master "View the 'upstream-de-master' branch on GitHub"

<!-- 3rd party tools -->

[Asciidoctor]: https://asciidoctor.org "Visit Asciidoctor (Ruby) website"
[Dia]: http://dia-installer.de/ "Visit Dia's website"
[Node.js]: https://nodejs.org/ "Visit Node.js website"
[Ruby]: https://www.ruby-lang.org "Visit Ruby website"
[SVGO]: https://www.npmjs.com/package/svgo "SVGO page at NPM"
[EClint]: https://www.npmjs.com/package/eclint "EClint page at NPM"
[EditorConfig]: https://editorconfig.org  "Visit EditorConfig website"

<!-- people -->

[Julius Plenz]: https://github.com/Feh "View Julius Plenz's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"
[Valentin Haenel]: https://github.com/esc "View Valentin Haenel's GitHub profile"
[Alexander Bolli]: https://github.com/SicroAtGit "View Alexander Bolli's GitHub profile"


<!-- EOF -->
