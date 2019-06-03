feature 'View bookmarks' do

  scenario 'User can see bookmarks page' do
    visit ('/bookmarks')
    expect(page).to have_content("www.google.com")
  end
  
end
