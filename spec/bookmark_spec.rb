require 'bookmark.rb'

describe Bookmark do
  describe '#all' do
    it 'returns bookmarks in full' do
      add_test_bookmarks
      bookmarks = Bookmark.all

      expect(bookmarks[0].title).to eq("rspec cheatsheet")
      expect(bookmarks[1].title).to eq("capybara cheatsheet")
    end
  end

  describe '#create' do
    it 'adds a bookmark to the database' do
      Bookmark.create('www.google.co.uk', 'google')
      bookmarks = Bookmark.all
      expect(bookmarks[0].title).to eq('google')
      expect(bookmarks[0].url).to eq("www.google.co.uk")
    end
  end
end