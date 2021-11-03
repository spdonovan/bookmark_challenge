require 'pg'
require 'bookmark'

feature 'Opening a bookmark page' do
  scenario 'visit bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks VALUES (1, 'http://www.whufc.com');")
      connection.exec("INSERT INTO bookmarks VALUES (2, 'http://www.amazon.co.uk');")
      connection.exec("INSERT INTO bookmarks VALUES (3, 'http://www.instagram.com');")
      connection.exec("INSERT INTO bookmarks VALUES (4, 'http://www.github.com');")

    visit '/bookmarks'
    expect(page).to have_content("http://www.whufc.com")
    expect(page).to have_content("http://www.amazon.co.uk")
    expect(page).to have_content("http://www.instagram.com")
    expect(page).to have_content("http://www.github.com")
  end
  
end