require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include "http://www.whufc.com"
      expect(bookmarks).to include "http://www.amazon.co.uk"
      expect(bookmarks).to include "http://www.instagram.com"
      expect(bookmarks).to include "http://www.github.com"
    end
  end
end