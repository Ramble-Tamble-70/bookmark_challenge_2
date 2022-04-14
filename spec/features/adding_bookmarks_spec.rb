require 'pg'

feature 'Add a new bookmark' do
  scenario 'A user can add a new bookmark to the Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://newbookmark.org')
    click_button('Submit')

    expect(page).to have_content('http://newbookmark.org')
  end
end
