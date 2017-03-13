module ReadingList
  class ListWriter
    def write(output_file, rendered_text)
      IO.write(File.expand_path(output_file), rendered_text)
    end
  end
end
