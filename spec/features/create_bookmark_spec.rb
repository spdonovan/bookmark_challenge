feature 'Add a new bookmark' do
  scenario 'Add a new bookmark to bookmark_manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://testing.org')
    click_button('Submit')
    expect(page).to have_content 'http://testing.org'
  end
end