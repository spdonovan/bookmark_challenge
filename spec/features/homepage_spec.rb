feature 'Open a homepage' do
  scenario 'visit homepage' do
    visit '/'
    expect(page).to have_content "Welcome to Bookmarks"
  end
  
end