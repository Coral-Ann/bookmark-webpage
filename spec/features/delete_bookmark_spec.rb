feature 'Deleting bookmarks' do
  scenario 'A user can delete bookmarks' do
    visit '/bookmarks'
    fill_in 'url', with: 'www.google.co.uk'
    fill_in 'title', with: 'google'
    click_button("Add Bookmark")
    fill_in 'deletion_title', with: 'google'
    click_button("Delete Bookmark")
    expect(page).to_not have_link('google', href:'www.google.co.uk')
  end
end
