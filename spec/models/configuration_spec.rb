require 'spec_helper'
require 'reading_list'

describe ReadingList::Configuration do
  describe '#initialize' do
    it 'creates a Configuration from a hash' do
      expect(ReadingList::Configuration.new(CONFIG_HASH))
        .to be_a(ReadingList::Configuration)
    end

    it 'fills in the fields correctly' do
      config = ReadingList::Configuration.new(CONFIG_HASH)

      expect(config.name).to eq(CONFIG_HASH['name'])
      expect(config.email).to eq(CONFIG_HASH['email'])
      expect(config.website).to eq(CONFIG_HASH['website'])
      expect(config.book_file).to eq(CONFIG_HASH['book_file'])
      expect(config.output_dir).to eq(CONFIG_HASH.dig('output', 'dir'))
      expect(config.theme).to eq(CONFIG_HASH.dig('output', 'theme'))
    end
  end
end
