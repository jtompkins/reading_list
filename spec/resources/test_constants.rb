BOOK_HASH = {
  amazon_link: 'www.amazon.com',
  author: 'Test Author',
  title: 'Test Title',
  type: :fiction,
  year: 2017
}.freeze

CONFIG_HASH = {
  name: 'Test User',
  email: 'test@example.com',
  website: 'www.example.com',
  referrer_id: 'test_referrer',
  year: 2017
}.freeze

IOC_FILES = {
  book_file: 'test_books.json',
  config_file: 'test_config.yml',
  output_file: 'test_output.html'
}.freeze

BOOKS = [
  ReadingList::Book.new(BOOK_HASH)
].freeze

CONFIG = ReadingList::Configuration.new(CONFIG_HASH)
