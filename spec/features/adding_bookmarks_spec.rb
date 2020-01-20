feature 'adding bookmarks' do
  scenario 'add and view newly added bookmark' do
    visit('/bookmarks')

    fill_in 'url', :with => 'http://www.google.com'
    fill_in 'title', :with => 'Google'
    click_button('Submit')

    expect(page).to have_link('Google', href: 'http://www.google.com')
  end
end
