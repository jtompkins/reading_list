require 'spec_helper'

describe ReadingList::Book do
  describe '#initialize' do
    it 'creates a Book from a hash' do
      expect(ReadingList::Book.new(BOOK_HASH))
        .to be_a(ReadingList::Book)
    end

    it 'fills in fields from the input hash' do
      book = ReadingList::Book.new(BOOK_HASH)

      expect(book.author).to eq(BOOK_HASH[:author])
      expect(book.title).to eq(BOOK_HASH[:title])
      expect(book.year).to eq(BOOK_HASH[:year])
      expect(book.link).to eq(BOOK_HASH[:link])
    end
  end
end
