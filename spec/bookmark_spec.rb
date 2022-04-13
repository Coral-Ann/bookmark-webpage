require 'bookmark.rb'

describe Bookmark do
  describe '#all' do
    it 'returns bookmarks in full' do
      add_test_bookmarks
      bookmarks = Bookmark.all

      expect(bookmarks).to include("https://devhints.io/rspec")
      expect(bookmarks).to include("https://devhints.io/capybara")
    end
  end

  describe '#create' do
    it 'adds a bookmark to the database' do
      Bookmark.create('www.google.co.uk')
      expect(Bookmark.all).to include('www.google.co.uk')
    end
  end
end