require 'codependent'

module ReadingList
  class IocContainer
    def initialize(config_file)
      @config_file = config_file
    end

    def container
      @container ||= build_container
    end

    private

    attr_reader :config_file

    def build_container
      Codependent::Container.new(config_file) do |config_file|
        singleton :config_file do
          from_value config_file
        end

        singleton :book_factory do
          from_type ReadingList::BookFactory
        end

        singleton :configuration_factory do
          from_type ReadingList::ConfigurationFactory
          depends_on :config_file
        end

        singleton :configuration do
          from_provider do |deps|
            deps[:configuration_factory].config
          end

          depends_on :configuration_factory
        end

        singleton :template_factory do
          from_type ReadingList::TemplateFactory
        end

        singleton :list_writer do
          from_type ReadingList::ListWriter
        end

        instance :book_repository do
          from_provider do |deps|
            config = deps[:configuration]
            book_factory = deps[:book_factory]

            ReadingList::BookRepository.new(config.book_file, book_factory)
          end

          depends_on :configuration, :book_factory
        end

        instance :list_renderer do
          from_type ReadingList::ListRenderer
          depends_on :template_factory
        end
      end
    end
  end
end
