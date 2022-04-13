require 'pg'

def truncate_database
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("TRUNCATE TABLE bookmarks;")
end

def add_test_bookmarks
  Bookmark.create('https://devhints.io/rspec')
  Bookmark.create('https://devhints.io/capybara')
end
