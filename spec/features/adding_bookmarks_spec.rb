require 'pg'

feature 'Add a new bookmark' do
  scenario 'A user can add a new bookmark to the Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://newbookmark.org')
    fill_in('title', with: 'New Bookmark')
    click_button('Submit')

    expect(page).to have_content('New Bookmark')
    # expect(page).to have_link('New bookmark', url: ''http://newbookmark.org')
  end
end
