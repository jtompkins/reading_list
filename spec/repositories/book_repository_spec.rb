require 'spec_helper'

describe ReadingList::BookRepository do
  let(:json_file) { 'spec/resources/test_books.json' }
  let(:factory) { ReadingList::BookFactory.new }

  subject(:repo) do
    ReadingList::BookRepository.new(json_file: json_file, book_factory: factory)
  end

  describe '#books' do
    it 'returns a list of Book models' do
      books = repo.books

      expect(books).to be_an(Array)
      expect(books.count).to eq(1)
    end
  end
end
