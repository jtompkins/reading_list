BOOK_HASH = {
  link: 'www.example.com',
  author: 'Test Author',
  title: 'Test Title',
  year: 2017
}.freeze

CONFIG_HASH = {
  'name' => 'Test User',
  'email' => 'test@example.com',
  'website' => 'https://www.example.com',
  'book_file' => 'spec/resources/test_books.json',
  'output' => {
    'dir' => '~/reading_list_output',
    'theme' => 'default'
  }
}.freeze

CONFIG_FILE = 'spec/resources/test_config.yml'.freeze

CONFIG = ReadingList::Configuration.new(CONFIG_HASH)

BOOKS = [
  ReadingList::Book.new(BOOK_HASH)
].freeze
