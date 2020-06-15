# Upstream README (EN)

This is the English translation of the [original German `README.md` file][README_DE] from the upstream project:

- https://github.com/gitbuch/gitbuch_cc/blob/master/README.md

Translated using the __[DeepL/Translator]__ free online service, and manually polished the text and formatting.

-------------------------------------------------------------------------------

# Source code for the Git Book

A rendered version can be found on [gitbu.ch].

Pull-requests are welcome; however, this is a book that has been professionally edited repeatedly.
Of course we want to maintain this quality standard.
So before you make any major changes/extensions, [please contact us] so we can decide how to proceed.
Error corrections or small updates are of course always welcome!

If you are a DocBook expert and/or web programmer and think: The design could be professionalized — then please do!
I just took the source files and quickly put together a halfway decent website.

# Build

Requirements: Installing `asciidoc`, `dblatex` and `texlive-fonts-extra` (for PDF).

Build:

- `make` creates the HTML version.
- `xdg-open git.chunked/pr01.html` opens the result in the browser.
- `make epub` builds the EPUB version.
- `xdg-open git.epub` opens the EPUB.
- `make pdf` creates the PDF version.
- `xdg-open git.pdf` opens the PDF.

## Mac OS X

Setup (via [Homebrew]):

- `brew install asciidoc xmlstarlet epubcheck`
- [xmllint fix]:
- `sudo mkdir /etc/xml`
- `sudo ln -s /usr/local/etc/xml/catalog /etc/xml/catalog`

# License

Licensed under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License].

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License]: https://creativecommons.org/licenses/by-nc-sa/4.0/
[gitbu.ch]: http://gitbu.ch/pr01.html
[Homebrew]: https://brew.sh/
[please contact us]: <mailto:kontakt@gitbu.ch>
[xmllint fix]: https://groups.google.com/forum/#!topic/asciidoc/FC-eOwU8rYg

[README_DE]: ./README_DE.md "View original German document (local copy)"

[DeepL/Translator]: https://www.deepl.com/translator "Visit DeepL website"

<!-- EOF -->
