require 'json'

module ReadingList
  class BookRepository
    def initialize(json_file:, book_factory:)
      @json_file = json_file
      @book_factory = book_factory
    end

    def books
      @books ||= json.map { |json_book| book_factory.from_json(json_book) }
    end

    private

    attr_reader :book_factory

    def json
      JSON.parse(IO.read(File.expand_path(@json_file)), symbolize_names: true)
    end
  end
end
