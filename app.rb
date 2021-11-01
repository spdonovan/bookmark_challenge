require 'sinatra/base'
require 'sinatra/reloader'

class Bookmarks < Sinatra::Base
  enable :sessions
  configure :development do
  register Sinatra::Reloader
  end

  get '/' do
    "Welcome to Bookmarks"
  end
end