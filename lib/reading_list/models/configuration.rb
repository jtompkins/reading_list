module ReadingList
  class Configuration
    def initialize(hash)
      @name = hash['name']
      @email = hash['email']
      @website = hash['website']
      @referrer_id = hash['referrer_id']
    end

    attr_reader :name, :email, :website, :referrer_id
  end
end
