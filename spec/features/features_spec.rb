feature 'View bookmarks' do

  scenario 'User can see bookmarks page' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")

    visit ('/bookmarks')
    expect(page).to have_content("http://www.google.com")
  end

end
