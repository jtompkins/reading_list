module ReadingList
  class Configuration
    def initialize(hash)
      @name = hash['name']
      @email = hash['email']
      @website = hash['website']
    end

    attr_reader :name, :email, :website
  end
end
