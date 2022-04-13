feature 'Adding bookmarks' do
  scenario 'A user can add bookmarks' do
    visit '/bookmarks'
    fill_in 'url', with: 'www.google.co.uk'
    fill_in 'title', with: 'google'
    click_button("Add Bookmark")

    expect(page).to have_link('google', href:'www.google.co.uk')
  end
end
