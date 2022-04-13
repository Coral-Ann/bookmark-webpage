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
      bookmark = Bookmark.create('www.google.co.uk', 'google')
      persisted_data = persisted_data(id: bookmark.id)

      bookmarks = Bookmark.all
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq('google')
      expect(bookmark.url).to eq("www.google.co.uk")
    end
  end

  describe '#delete' do
    it 'deletes a bookmark from the database' do
      Bookmark.create('www.google.co.uk', 'google')
      Bookmark.delete('google')
      bookmarks = Bookmark.all
      expect(bookmarks).to be_empty 
    end
  end
end