feature 'Adding bookmarks' do
  scenario 'A user can add bookmarks' do
    visit '/bookmarks'
    fill_in 'url', with: 'www.google.co.uk'
    click_button("Add Bookmark")

    expect(page).to have_content "www.google.co.uk"
  end
end
