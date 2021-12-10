=begin "asciidoc.rb" v0.1.0 | 2021/12/04 | by Tristano Ajmone | MIT License
================================================================================
Some custom Rake helper methods for automating common Asciidoctor operations
that we use across different documentation projects.
Adapted from the Rake helpers of the 'ALAN i18n' repository:
  https://github.com/alan-if/alan-i18n/tree/main/_assets/rake
================================================================================
=end

require 'open3'

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
