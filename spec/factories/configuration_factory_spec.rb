require 'spec_helper'

describe ReadingList::ConfigurationFactory do
  let(:config_path) { 'spec/resources/test_config.yml' }

  subject(:factory) do
    ReadingList::ConfigurationFactory.new(config_file: config_path)
  end

  describe '#config' do
    it 'returns a Configuration instance' do
      expect(factory.config).to be_a(ReadingList::Configuration)
    end
  end
end
