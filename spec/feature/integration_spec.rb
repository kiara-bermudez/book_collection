# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'book[title]', with: 'The Great Gatsby'
    fill_in 'book[author]', with: 'F. Scott Fitzgerald'
    fill_in 'book[price]', with: '6.77'
    fill_in 'book[published_date]', with: '1925-04-10'
    click_on 'Add New Book'
    
    expect(page).to have_content('Book was successfully created.')
    expect(Book.last.title).to eq('The Great Gatsby')
  end
end