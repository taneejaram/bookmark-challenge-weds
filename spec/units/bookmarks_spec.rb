require 'bookmarks'

describe 'Bookmarks' do
  it 'can return a list of bookmarks' do
    bookmarks = Bookmarks.new
    expect(bookmarks.list).to include("www.google.com")
  end
end
