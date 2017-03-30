module ReadingList
  class Configuration
    def initialize(hash)
      @name = hash['name']
      @email = hash['email']
      @website = hash['website']
      @book_file = hash['book_file']
      @output_dir = hash.dig('output', 'dir')
      @theme = hash.dig('output', 'theme')
    end

    attr_reader :name, :email, :website, :book_file, :output_dir, :theme
  end
end
