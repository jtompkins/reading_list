require 'spec_helper'

describe ReadingList::ConfigurationFactory do
  subject(:factory) do
    ReadingList::ConfigurationFactory.new(config_file: CONFIG_FILE)
  end

  describe '#config' do
    it 'returns a Configuration instance' do
      expect(factory.config).to be_a(ReadingList::Configuration)
    end

    it 'fills in the values from the file' do
      config = factory.config

      expect(config.name).to eq('Test Name')
      expect(config.email).to eq('test@example.com')
      expect(config.website).to eq('https://www.example.com')
      expect(config.book_file).to eq('spec/resources/test_books.json')
      expect(config.theme).to eq('default')
      expect(config.output_dir).to eq('~/reading_list_output')
    end
  end
end
