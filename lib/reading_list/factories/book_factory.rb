require 'reading_list/models/book'

module ReadingList
  class BookFactory
    def from_json(json_hash)
      Book.new(json_hash)
    end
  end
end
