module ReadingList
  class Book
    def initialize(json_hash)
      @author = json_hash[:author]
      @title = json_hash[:title]
      @year = json_hash[:year]

      @link = json_hash[:link]
    end

    attr_reader :author, :title, :year, :link
  end
end
