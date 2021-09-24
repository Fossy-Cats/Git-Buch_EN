=begin "Rakefile" v0.1.1 | 2021/09/24 | by Tristano Ajmone
================================================================================
Rakefile draft. Requires Asciidoctor and Rouge.
================================================================================
=end

# Custom vars and Ruby helpers ...

$repo_root = pwd

def TaskHeader(text)
  hstr = "## #{text}"
  puts "\n#{hstr}"
  puts '#' * hstr.length
end

require 'asciidoctor'

# Rake Tasks ...

task :default => :preview

desc "Run all tasks"
task :all => [:preview, :publish]

BOOK_SRC = 'docs_src/gitbuch.asciidoc'

BOOK_DEPS = FileList[
  BOOK_SRC,
  "docs_src/*.adoc",
  "docs_src/images/*.svg",
  "docs_src/images/*.png"
]

desc "Publish HTML book"
task :publish => 'docs/index.html'

file 'docs/index.html' => BOOK_DEPS do |t|
  TaskHeader "Publishing HTML Book"
  out_file = File.expand_path(t.name)
  cd BOOK_SRC.pathmap("%d"), verbose: false
  Asciidoctor.convert_file \
    BOOK_SRC.pathmap("%f"),
    to_file: out_file,
    backend: :html5,
    doctype: :book,
    safe: :unsafe,
    attributes: {
      'data-uri' => true,
      'experimental' => true,
      'icons' => 'font',
      'imagesdir' => 'images',
      'linkattrs' => true,
      'reproducible' => true,
      'sectanchors' => true,
      'source-highlighter' => 'rouge',
      'rouge-style' => 'monokai.sublime',
      'toc' => 'left',
      'toclevels' => 2
    }
  cd $repo_root, verbose: false
end

HTML_PREV = 'docs_src/GitBook_Preview.html'
desc "Create HTML book preview"
task :preview => HTML_PREV

file HTML_PREV => BOOK_DEPS do |t|
  TaskHeader "Generating HTML Book Preview"
  cd t.name.pathmap("%d"), verbose: false
  Asciidoctor.convert_file \
    BOOK_SRC.pathmap("%f"),
    to_file: t.name.pathmap("%f"),
    backend: :html5,
    doctype: :book,
    safe: :unsafe,
    attributes: {
      'experimental' => true,
      'icons' => 'font',
      'imagesdir' => 'images',
      'linkattrs' => true,
      'reproducible' => true,
      'sectanchors' => true,
      'source-highlighter' => 'rouge',
      'rouge-style' => 'monokai.sublime',
      'toc' => 'left',
      'toclevels' => 5
    }
  cd $repo_root, verbose: false
end


