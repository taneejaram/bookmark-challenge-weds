require 'bookmarks'

describe 'Bookmarks.list' do
  it 'returns a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('https://en.wikipedia.org/wiki/Tortoise');")
    bookmarks = Bookmarks.list

    expect(bookmarks).to include"http://www.google.com"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "https://en.wikipedia.org/wiki/Tortoise"
  end
end
