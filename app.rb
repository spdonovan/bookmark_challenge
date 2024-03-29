require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class Bookmarks < Sinatra::Base
  enable :sessions
  configure :development do
  register Sinatra::Reloader
  end

  get '/' do
    "Welcome to Bookmarks"
  end

  get '/bookmarks' do
    ENV
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end