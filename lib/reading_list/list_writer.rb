require 'fileutils'

module ReadingList
  class ListWriter
    def write(config, rendered_text)
      make_output_directory!(config)
      copy_style_sheet!(config)

      output_file = File.join(config.output_dir, 'index.html')

      IO.write(File.expand_path(output_file), rendered_text)
    end

    private

    def make_output_directory!(config)
      output_dir = File.expand_path(config.output_dir)

      Dir.mkdir(output_dir) unless Dir.exist?(output_dir)
    end

    def copy_style_sheet!(config)
      theme_file = "./resources/themes/bin/#{config.theme}.css"
      output_file = File.join(config.output_dir, 'styles.css')

      FileUtils.copy_entry(
        File.expand_path(theme_file, __dir__),
        File.expand_path(output_file)
      )
    end
  end
end
