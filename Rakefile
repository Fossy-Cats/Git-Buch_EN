=begin "Rakefile" v0.2.0 | 2021/10/30 | by Tristano Ajmone
================================================================================
Rakefile draft. Requires Asciidoctor and Rouge.
================================================================================
=end

require 'open3'

$repo_root = pwd

# ==============================================================================
#                     C U S T O M   R U B Y   M E T H O D S
# ==============================================================================

def TaskHeader(text)
  hstr = "## #{text}"
  puts "\n#{hstr}"
  puts '#' * hstr.length
end

def PrintTaskFailureMessage(our_msg, app_msg)
    err_head = "\n*** TASK FAILED! "
    STDERR.puts err_head << '*' * (73 - err_head.length) << "\n\n"
    if our_msg != ''
      STDERR.puts our_msg
      STDERR.puts '-' * 72
    end
    STDERR.puts app_msg
    STDERR.puts '*' * 72
end

def SetFileTimeToZero(file)
  # ----------------------------------------------------------------------------
  # Set the last accessed and modified dates of 'file' to Epoch 00:00:00.
  # Sometimes we need to trick Rake into seeing a generated file as outdated,
  # e.g. because we're aborting the build when a tool raises warnings which
  # didn't prevent generating the target file, but we'd rather keep the file
  # for manual inspection -- since we're not sure whether it's malformed or not.
  # ----------------------------------------------------------------------------
  ts = Time.at 0
  File.utime(ts, ts, file)
end

def AsciidoctorConvert(source_file, output_file, adoc_opts)
  TaskHeader("Asciidoctor Conversion: #{output_file}")
  src_dir = source_file.pathmap("%d")
  src_file = File.expand_path(source_file)
  out_file = File.expand_path(output_file)
  cd "#{$repo_root}/#{src_dir}"
  begin
    stdout, stderr, status = Open3.capture3("asciidoctor #{adoc_opts}")
    puts stderr if status.success? # Even success is logged to STDERR!
    raise unless status.success?
  rescue
    rake_msg = our_msg = "Asciidoctor conversion failed: #{output_file}"
    if File.file?(out_file)
      our_msg = "Asciidoctor reported some problems during conversion.\n" \
        "The generated HTML file should not be considered safe to deploy."

      # Since we're invoking Asciidoctor with failure-level WARN, if the HTML
      # file was created we must set its modification time to 00:00:00 to trick
      # Rake into seeing it as an outdated target. (we're not 100% sure whether
      # it was re-created or it's the HTML from a previous run, but we're 100%
      # sure that it's outdated.)
      SetFileTimeToZero(out_file)
    end
    PrintTaskFailureMessage(our_msg, stderr)
    # Abort Rake execution with error description:
    raise rake_msg
  ensure
    cd $repo_root, verbose: false
  end
end

# ==============================================================================
#                              R A K E   T A S K S
# ==============================================================================

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

## Publish
##########

desc "Publish HTML book"
task :publish => 'docs/index.html'

file 'docs/index.html' => BOOK_DEPS do |t|
  src_file = BOOK_SRC.pathmap("%f")
  out_file = File.expand_path(t.name)
  adoc_opts = <<~HEREDOC
    --failure-level WARN \
    --verbose \
    --timings \
    --safe-mode unsafe \
    --out-file=#{out_file} \
    -a source-highlighter=rouge \
    -a rouge-style=monokai.sublime \
    -a toc=left \
    -a toclevels=2 \
    -a data-uri \
    -a experimental \
    -a icons=font \
    -a imagesdir=images \
    -a linkattrs \
    -a reproducible \
    -a sectanchors \
    #{src_file}
  HEREDOC
  AsciidoctorConvert(BOOK_SRC, t.name, adoc_opts)
end


## Preview
##########

HTML_PREV = 'docs_src/GitBook_Preview.html'
desc "Create HTML book preview"
task :preview => HTML_PREV

file HTML_PREV => BOOK_DEPS do |t|
  src_file = BOOK_SRC.pathmap("%f")
  out_file = File.expand_path(t.name)
  adoc_opts = <<~HEREDOC
    --failure-level WARN \
    --verbose \
    --timings \
    --safe-mode unsafe \
    --out-file=#{out_file} \
    -a source-highlighter=rouge \
    -a rouge-style=monokai.sublime \
    -a toc=left \
    -a toclevels=5 \
    -a experimental \
    -a icons=font \
    -a imagesdir=images \
    -a linkattrs \
    -a reproducible \
    -a sectanchors \
    #{src_file}
  HEREDOC
  AsciidoctorConvert(BOOK_SRC, t.name, adoc_opts)
end
