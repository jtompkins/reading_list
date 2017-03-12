require 'spec_helper'

describe ReadingList::BookFactory do
  subject(:factory) { ReadingList::BookFactory.new }

  describe '#from_json' do
    it 'creates a Book instance' do
      expect(factory.from_json(BOOK_HASH))
        .to be_a(ReadingList::Book)
    end
  end
end
