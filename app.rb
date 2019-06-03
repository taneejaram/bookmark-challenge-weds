require 'sinatra'

class Bookmark < Sinatra::Base

  get '/' do
    "Bookmarks"
  end
  
end
