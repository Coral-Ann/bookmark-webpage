feature 'Viewing bookmarks' do
  scenario 'A user can view bookmarks' do
    add_test_bookmarks
    visit '/bookmarks'
    expect(page).to have_link('rspec cheatsheet', href:'https://devhints.io/rspec')
    expect(page).to have_link('capybara cheatsheet', href:'https://devhints.io/capybara')
  end
end
