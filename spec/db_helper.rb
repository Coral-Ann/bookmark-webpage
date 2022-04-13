require 'pg'

def truncate_database
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("TRUNCATE TABLE bookmarks;")
end

def add_test_bookmarks
  Bookmark.create('https://devhints.io/rspec', 'rspec cheatsheet')
  Bookmark.create('https://devhints.io/capybara', 'capybara cheatsheet')
end

def persisted_data(id:)
  connection = PG.connect(dbname: 'bookmark_manager_test')
  result = connection.query("SELECT * FROM bookmarks WHERE id = #{id};")
  result.first
end
