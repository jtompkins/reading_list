module ReadingList
  class TemplateFactory
    def load(template)
      IO.read(File.expand_path("../templates/#{template}", __dir__))
    end
  end
end
