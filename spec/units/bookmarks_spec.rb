require 'bookmarks'

describe 'Bookmarks.list' do
  it 'returns a list of bookmarks' do
    bookmarks = Bookmarks.list

    expect(bookmarks).to include("http://www.google.com")
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://www.makersacademy.com"
  end
end
