[![CC BY-NC-SA 4.0 License][license badge]][CC BY-NC-SA 4.0]&nbsp;
![project status][status badge]&nbsp;
![project branch][branch badge]&nbsp;

# Git-Buch, English Translation

English translation of _[Das Git-Buch]_ (The Git Book) by [Valentin Haenel] and [Julius Plenz], released under [CC BY-NC-SA 4.0].

- https://github.com/tajmone/Git-Buch_EN

Translation project created by [Tristano Ajmone] in 2020/06/14.
English translation by [Tristano Ajmone] and [Alexander Bolli].

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Repository Info](#repository-info)
    - [Contents](#contents)
    - [Branches](#branches)
    - [Status](#status)
- [About](#about)
- [License](#license)
- [Links](#links)

<!-- /MarkdownTOC -->

-----


# Repository Info

Summary info on the repository and its current status.

The current development branch is [`alpha-dev`][alpha-dev].


## Contents

- [`/assets_src/`][assets_src] — Assets source files.
- [`/docs_src/`][docs_src] — AsciiDoc sources.
- [`README_DE.md`][README_DE] — Upstream README file, German original.
- [`README_EN.md`][README_EN] — Upstream README file, English translation.


## Branches

|                   branch                   |                            description                             |
|--------------------------------------------|--------------------------------------------------------------------|
| [`alpha-dev`][alpha-dev] &ast;             | Current dev branch, until Beta stage.                              |
| [`master`][master]                         | Contains only README and LICENSE, frozen until 1st release.        |
| [`upstream-de-master`][upstream-de-master] | Orphan mirror of `master` from `gitbuch/gitbuch_cc` upstream repo. |

The [`alpha-dev`][alpha-dev] branch is the current development branch.
Once the project has been adapted from AsciiDoc (Python) to our custom Asciidoctor (Ruby) workflow, and we have a buildable English draft, development will switch to the Beta stage and another branch.

The [`upstream-de-master`][upstream-de-master] orphan branch is a mirror of the `master` branch from the upstream repository, kept as a reference to the original files and in case we'll need to integrate future updates from the upstream project.


## Status

The project is currently being adapted from AsciiDoc (Python) to our custom Asciidoctor (Ruby) toolchain.

Once the Asciidoctor toolchain is up and running, we'll first translate all the section titles, then start working on the book translation section by section.

# About

This is the English translation of the German book _Git, Verteilte Versionskontrolle für Code und Dokumente_ (Git, Distributed version control for code and documents) by [Valentin Haenel] and [Julius Plenz], 2nd Ed. 2014 — aka _Das Git-Buch_.

The _Git_ book was published in paperback and eBook editions by __[Open Source Press]__ (2003–2015), a Munich based computer book publisher specialized in open-source software and philosophy topics.

- [paperback edition] — Wayback Machine, 2015.
- [digital editions] — Wayback Machine, 2015.


When __[Open Source Press]__ ceased all publishing activities in December 2015, it transferred all the rights of the published texts back to their original authors.
V.Haenel and J.Plenz decided to release their _Git_ book under Creative Commons license, and published its full sources in AsciiDoc on GitHub:

- [github.com/gitbuch/gitbuch_cc]

This repository is dedicated to the English translation of the book, based on the original German repository (commit [`76af76a`][76af76a]).

Since in the German world the book is commonly referred to as _Das Git-Buch_ (The Git Book), I've opted to name the translation project as __Git-Buch EN__ as a way to emphasize the link to original German edition and to avoid confusion with other similarly titled books already available in English.


# License

- [`LICENSE`][LICENSE]

```
"Git, Verteilte Versionskontrolle für Code und Dokumente"
(c) by Valentin Haenel and Julius Plenz

The "Git" book is licensed under a
Creative Commons Attribution-NonCommercial 4.0 International License.

You should have received a copy of the license along with this
work. If not, see <http://creativecommons.org/licenses/by-nc/4.0/>.
```


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

[license badge]: https://img.shields.io/badge/license-CC%20BY--NC--SA%204.0-00b5da.svg
[status badge]: https://img.shields.io/badge/status-WIP-orange "Project Status: Work-In-Progress"
[branch badge]: https://img.shields.io/badge/branch-alpha--dev-yellow "Current Branch: alpha-dev"

<!-- repo files -->

[LICENSE]: ./LICENSE "View License file"
[README_DE]: ./README_DE.md "Upstream README file: German original"
[README_EN]: ./README_EN.md "Upstream README file: English translation"

<!-- repo folders -->

[docs_src]: ./docs_src/ "Navigate to AsciiDoc sources folder"
[assets_src]: ./assets_src/ "Navigate to assets sources folder"

<!-- repo branches -->

[alpha-dev]: https://github.com/tajmone/Git-Buch_EN/tree/alpha-dev "View the 'alpha-dev' branch on GitHub"
[master]: https://github.com/tajmone/Git-Buch_EN/tree/master "View the 'master' branch on GitHub"
[upstream-de-master]: https://github.com/tajmone/Git-Buch_EN/tree/upstream-de-master "View the 'upstream-de-master' branch on GitHub"

<!-- people -->

[Julius Plenz]: https://github.com/Feh "View Julius Plenz's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"
[Valentin Haenel]: https://github.com/esc "View Valentin Haenel's GitHub profile"
[Alexander Bolli]: https://github.com/SicroAtGit "View Alexander Bolli's GitHub profile"


<!-- EOF -->
