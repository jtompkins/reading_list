require 'spec_helper'
require 'reading_list'

describe ReadingList::Configuration do
  describe '#initialize' do
    it 'creates a Configuration from a hash' do
      expect(ReadingList::Configuration.new(CONFIG_HASH))
        .to be_a(ReadingList::Configuration)
    end
  end
end
