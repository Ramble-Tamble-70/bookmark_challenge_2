require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can view bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
    Bookmark.create(url: 'http://www.google.com', title: 'Google')
   
    visit '/bookmarks'
    
    expect(page).to have_content "Makers Academy"
    expect(page).to have_content "Google"
    expect(page).to have_content "Destroy All Software"
  end
end
