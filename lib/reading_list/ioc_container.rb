require 'codependent'

module ReadingList
  class IocContainer
    def initialize(files)
      @files = files
    end

    def container
      @container ||= build_container
    end

    private

    attr_reader :files

    def build_container
      Codependent::Container.new(files) do |files|
        singleton :json_file do
          from_value files[:book_file]
        end

        singleton :config_file do
          from_value files[:config_file]
        end

        singleton :output_file do
          from_value files[:output_file]
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
          from_type ReadingList::BookRepository
          depends_on :json_file, :book_factory
        end

        instance :list_renderer do
          from_type ReadingList::ListRenderer
          depends_on :template_factory
        end
      end
    end
  end
end
