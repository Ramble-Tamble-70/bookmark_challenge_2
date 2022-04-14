require 'bookmark.rb'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
    Bookmark.create(url: 'http://www.google.com', title: 'Google')


    bookmarks = Bookmark.all
  
    expect(bookmarks[0].title).to include("Makers Academy")
    expect(bookmarks[1].title).to include("Destroy All Software")
    expect(bookmarks[2].title).to include("Google")
    expect(bookmarks[0].url).to include("http://www.makersacademy.com")
    end 
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://newbookmark.org', title: 'New Bookmark')

      bookmarks = Bookmark.all
      expect(bookmarks[0].title).to include('New Bookmark')
    end
  end
end
