require 'database_connection'
class Bookmark
  
  def self.all
    result = DatabaseConnection.query('INSERT INTO bookmarks (url) VALUES( "http://www.whufc.com");')
  end
end
