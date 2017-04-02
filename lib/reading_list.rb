require 'reading_list/version'
require 'reading_list/models/configuration'
require 'reading_list/models/book'
require 'reading_list/factories/book_factory'
require 'reading_list/factories/configuration_factory'
require 'reading_list/factories/template_factory'
require 'reading_list/repositories/book_repository'
require 'reading_list/renderers/list_renderer'
require 'reading_list/ioc_container'
require 'reading_list/list_writer'

module ReadingList
  class App
    def initialize(config_file)
      @container = IocContainer.new(config_file).container
    end

    attr_reader :container

    def run
      config = container.resolve(:configuration)

      output = render_template(config)

      write_template(config, output)
    end

    private

    def render_template(config)
      books = container.resolve(:book_repository).books
      renderer = container.resolve(:list_renderer)

      renderer.render(config, books)
    end

    def write_template(config, rendered_text)
      writer = container.resolve(:list_writer)
      writer.write(config, rendered_text)
    end
  end
end
