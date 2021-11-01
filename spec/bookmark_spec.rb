require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'expects to return all bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("http://www.whufc.com")
      expect(bookmarks).to include("http://www.amazon.co.uk")
      expect(bookmarks).to include("http://www.instagram.com")
      expect(bookmarks).to include("http://www.github.com")
    end
  end
end