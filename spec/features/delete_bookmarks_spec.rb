feature 'delete bookmarks' do
  scenario 'user is able to delete bookmarks' do
    Bookmark.create(url: 'https://www.google.com', title: 'Google')

    visit('/bookmarks')
    expect(page).to have_link('Google', href: 'https://www.google.com')

    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Google', href: 'https://www.google.com')
  end
end
