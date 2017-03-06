require 'mustache'

module ReadingList
  class ListRenderer
    def initialize(template_factory:)
      @template_factory = template_factory
    end

    def render(config, books)
      Mustache.render(template, books: books)
    end

    private

    attr_reader :template_factory

    def template
      @template ||= template_factory.load('list.mustache')
    end
  end
end
