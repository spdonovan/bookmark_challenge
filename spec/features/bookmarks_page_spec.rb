feature 'Opening a bookmark page' do
  scenario 'visit bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content("http://www.whufc.com")
  end
  
end