=begin "html_chunker.rb" v0.1.0 | 2021/12/08 | by Tristano Ajmone | MIT License
================================================================================
Some custom Rake helper methods for automating common Asciidoctor-Chunker tasks
that we use across different documentation projects.
================================================================================
=end

require 'tempfile'

def FixChuncksTitles(chunks_dir = "./", chunks_pattern = "chap", title_prefix = "")
  # ----------------------------------------------------------------------------
  # The Asciidoctor-Chunker adds to every chunked file the same <title> as the
  # book. This method will parse the 'chunks_dir' folder for the chunked HTML
  # files (whose names being with 'chunks_pattern'), extract the Section title
  # from the first <h2> tag encountered, and then replace the original <title>
  # with 'title_prefix' + the extracted section title.
  # ----------------------------------------------------------------------------
  TaskHeader("Fxixing Chunks Titles")
  puts "Chunks folder: #{chunks_dir}"
  puts "Files pattern: #{chunks_pattern}*.html"
  puts "Titles prefix: \"#{title_prefix}\"\n"

  cd "#{$repo_root}/#{chunks_dir}", verbose: false
  FileList["#{chunks_pattern}*.html"].each do |fname|
    # ------------------------
    # Extract Real Chunk Title
    # ------------------------
    doc_title = nil
    File.readlines(fname).each do |line|
      if line.start_with?'<h2'
        if m = /^<h2 .*?a>(.*?)<\/h2>/.match(line)
          doc_title = title_prefix + m[1]
          break
        end
      end
    end
    if !doc_title
      # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      # Abort Task w/ Error if no title was extracted!
      # ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      rake_msg = "FixChuncksTitles() failed: #{fname}"
      our_msg = "FixChuncksTitles() couldn't extract document title for \"#{fname}\".\n" \
        "The generated HTML files should not be considered safe to deploy."
      PrintTaskFailureMessage(our_msg, "")
      return 1
    end
    # ------------------
    # Fix Document Title
    # ------------------
    begin
      temp_file = Tempfile.new("#{fname}")
      File.open(fname, 'r') do |file|
        file.each_line do |line|
          if line.start_with?'<title>'
            line.sub!(/(<title>).*?(<\/title>)/, "\\1#{doc_title}\\2")
          end
          temp_file.puts line
        end
      end
      temp_file.close
      mv(temp_file.path, fname, verbose: false)
    ensure
      temp_file.close
      temp_file.unlink
    end
  end
  cd $repo_root, verbose: false
end
