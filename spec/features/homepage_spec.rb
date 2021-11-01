feature 'Opening a page' do
  scenario 'visit homepage' do
    visit '/'
    expect(page).to have_content "Welcome to Bookmarks"
  end
  
end