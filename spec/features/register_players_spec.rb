require 'spec_helper'

feature 'registering name' do
  scenario 'Can register name and see name output' do
    visit('/')
    fill_in 'name', with: 'Imraan'
    click_button 'Submit'
    expect(page).to have_content 'Imraan'
  end
end
