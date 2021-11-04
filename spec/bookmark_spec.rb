require 'bookmark'
require 'pg'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.whufc.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.amazon.co.uk');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.instagram.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.github.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include "http://www.whufc.com"
      expect(bookmarks).to include "http://www.amazon.co.uk"
      expect(bookmarks).to include "http://www.instagram.com"
      expect(bookmarks).to include "http://www.github.com"
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.testing.org')
      expect(Bookmark.all).to include 'http://www.testing.org'
    end
  end
end