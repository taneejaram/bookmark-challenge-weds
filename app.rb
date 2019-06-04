require 'sinatra'
require './lib/bookmarks'

class Bookmark < Sinatra::Base

  get '/' do
    "Bookmarks"
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.list
    erb :index
  end

end
