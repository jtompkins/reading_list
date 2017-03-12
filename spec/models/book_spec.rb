require 'spec_helper'

describe ReadingList::Book do
  describe '#initialize' do
    it 'creates a Book from a hash' do
      expect(ReadingList::Book.new(BOOK_HASH))
        .to be_a(ReadingList::Book)
    end
  end
end
