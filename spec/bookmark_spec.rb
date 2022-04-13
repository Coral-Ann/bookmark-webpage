require 'bookmark.rb'

describe Bookmark do
  describe '#all' do
    it 'returns bookmarks in full' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("https://devhints.io/rspec")
      expect(bookmarks).to include("https://devhints.io/capybara")
    end
  end
end