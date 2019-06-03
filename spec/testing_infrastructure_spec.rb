feature 'it works' do
  scenario 'testing to see if web page will run' do
    visit ('/')
    expect(page).to have_content("Bookmarks")
  end
end
