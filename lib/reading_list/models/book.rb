module ReadingList
  class Book
    def initialize(json_hash)
      @amazon_link = json_hash[:amazon_link]
      @author = json_hash[:author]
      @title = json_hash[:title]
      @type = json_hash[:type]
      @year = json_hash[:year]
    end

    attr_reader :amazon_link, :author, :title, :type, :year
  end
end
