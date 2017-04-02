require 'mustache'

module ReadingList
  class ListRenderer
    def initialize(template_factory:)
      @template_factory = template_factory
    end

    def render(config, books)
      Mustache.render(template, **transform(config, books))
    end

    private

    attr_reader :template_factory

    def template
      @template ||= template_factory.load('list.mustache')
    end

    def transform(config, books)
      presenter = {}

      presenter[:name] = config.name
      presenter[:years] = books.map(&:year).uniq.sort.reverse
      presenter[:sections] = books
                             .chunk(&:year)
                             .map { |s| { year: s.first, books: s.last } }
                             .sort_by { |s| s[:year] }
                             .reverse

      presenter
    end
  end
end
