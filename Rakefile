=begin "Rakefile" v0.3.0 | 2021/12/10 | by Tristano Ajmone
================================================================================
Rakefile draft.
System Requirements:

  * Ruby:
    * Asciidoctor
    * Rouge
  * Node.js
================================================================================
=end

# Custom helpers:
require './assets/rake/globals.rb'
require './assets/rake/asciidoc.rb'
require './assets/rake/html_chunker.rb'

# ==============================================================================
# -----------------:{  T O O L C H A I N   S E T T I N G S  }:------------------
# ==============================================================================

SRC_DIR = 'docs_src'
WWW_DIR = 'docs'
PUB_DIR = "#{WWW_DIR}/download"

BOOK_SRC = "#{SRC_DIR}/gitbuch.asciidoc"
BOOK_DEPS = FileList[
  BOOK_SRC,
  "#{SRC_DIR}/*.adoc",
  "#{SRC_DIR}/images/*.svg",
  "#{SRC_DIR}/images/*.png"
]

BOOK_PREV = "#{SRC_DIR}/Git-Book_Preview.html"
BOOK_HTML = "#{PUB_DIR}/Git-Book.html"

CHUNKER_SRC = "#{SRC_DIR}/Git-Book_Chunker-Input.html"

## Asciidoctor Options
######################

# Options common to all docs (let's keep it DRY):

ADOC_OPTS_SHARED = <<~HEREDOC
  --failure-level WARN \
  --verbose \
  --timings \
  --safe-mode unsafe \
  -a source-highlighter=rouge \
  -a rouge-style=monokai.sublime \
  -a imagesdir=images \
  -a experimental \
  -a icons=font \
  -a linkattrs \
  -a reproducible \
  -a sectanchors \
  -a toc=left
HEREDOC

## Asciidoctor-Chunker
######################
CHUNKER_JS = "#{$repo_root}/assets/node-js/asciidoctor-chunker_mod.js"


# ==============================================================================
# -------------------------:{  M A I N   T A S K S  }:--------------------------
# ==============================================================================

# Building a local preview of the book (ignored by Git)
# is the most useful task for project maintainers:

task :default => :preview


## All Tasks
############
desc "Run all tasks"
task :all => [:clobber, :preview, :publish]


## Preview
##########
desc "Local book (default task)"
task :preview => BOOK_PREV


## Publish
##########
desc "Publish book (all editions)"
task :publish => %w[publish:www publish:html]

namespace "publish" do

  desc "Publish book: online edition (chunked)"
  task :www => CHUNKER_SRC

  desc "Publish book: HTML edition (single file)"
  task :html => BOOK_HTML
end


## Clean & Clobber
##################
require 'rake/clean'
CLOBBER.include('**/*.html').exclude('assets*/**/*.html')

# ==============================================================================
# -------------------------:{  F I L E   T A S K S  }:--------------------------
# ==============================================================================

file BOOK_PREV => BOOK_DEPS do |t|
  src_file = BOOK_SRC.pathmap("%f")
  out_file = File.expand_path(t.name)
  adoc_opts = ADOC_OPTS_SHARED.chomp + " "
  adoc_opts += <<~HEREDOC
    -a toclevels=5 \
    --out-file=#{out_file} \
    #{src_file}
  HEREDOC
  AsciidoctorConvert(BOOK_SRC, t.name, adoc_opts)
end


file CHUNKER_SRC => BOOK_DEPS do |t|
  # ------------------------------------
  # Create Temporary Single HTML for WWW
  # ------------------------------------
  adoc_src = BOOK_SRC.pathmap("%f")
  adoc_out = File.expand_path(t.name)
  adoc_opts = ADOC_OPTS_SHARED.chomp + " "
  adoc_opts += <<~HEREDOC
    -a web-edition \
    -a toclevels=2 \
    -a data-uri \
    --out-file=#{adoc_out} \
    #{adoc_src}
  HEREDOC
  AsciidoctorConvert(BOOK_SRC, t.name, adoc_opts)
  TaskHeader("Chunking Website Edition")
  # ------------------------
  # Delete Old Chunked Files
  # ------------------------
  puts "Chunker input file: #{CHUNKER_SRC}"
  puts "Chunker out folder: #{CHUNKER_SRC}"
  puts "\n1. Deleting old chunked files."
  cd "#{$repo_root}/#{WWW_DIR}", verbose: false
  FileUtils.rm Dir.glob('*.{html,css}'), force: true
  # ---------------------------
  # Create Chunked Book for WWW
  # ---------------------------
  puts "\n2. Invoking Asciidoctor-Chunker."
  cd "#{$repo_root}/#{SRC_DIR}", verbose: false
  begin
    chunk_src = t.name.pathmap("%f")
    stdout, stderr, status = Open3.capture3 <<~HEREDOC
        node #{CHUNKER_JS} \
        --outdir=#{$repo_root}/#{WWW_DIR} \
        --titlePage="Title Page" \
        #{chunk_src}
      HEREDOC
    puts stderr if status.success? # Even success is logged to STDERR!
    raise unless status.success?
  rescue
    rake_msg = "Asciidoctor-Chunker failed: #{CHUNKER_SRC}"
    our_msg = "Asciidoctor-Chunker reported some errors.\n" \
      "The generated HTML files should not be considered safe to deploy."
    PrintTaskFailureMessage(our_msg, stderr)
    # Abort Rake execution with error description:
    raise rake_msg
  else
    # ----------------------------
    # Fix <title> of Chunked Files
    # ----------------------------
    puts "3. Invoking <title> tags fixer."
    FixChuncksTitles("#{WWW_DIR}", "Git-Book_", "Git Book &mdash; ")
  ensure
    cd $repo_root, verbose: false
  end
end


file BOOK_HTML => BOOK_DEPS do |t|
  directory "#{PUB_DIR}"
  src_file = BOOK_SRC.pathmap("%f")
  out_file = File.expand_path(t.name)
  adoc_opts = ADOC_OPTS_SHARED.chomp + " "
  adoc_opts += <<~HEREDOC
    -a toclevels=2 \
    -a data-uri \
    --out-file=#{out_file} \
    #{src_file}
  HEREDOC
  AsciidoctorConvert(BOOK_SRC, t.name, adoc_opts)
end
