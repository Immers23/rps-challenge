require 'spec_helper'

# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'registering name' do
  scenario 'Can register name and see name output' do
    visit('/')
    fill_in 'name', with: 'Imraan'
    click_button 'Submit'
    expect(page).to have_content 'Imraan'
  end
end
