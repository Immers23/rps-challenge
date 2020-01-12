require 'spec_helper'

feature 'play rps game' do
  before do
    visit('/')
    fill_in 'name', with: 'Imraan'
    click_button 'Submit'
  end

  scenario 'see the rock paper scissors options' do
    expect(page).to have_button 'rock'
    expect(page).to have_button 'paper'
    expect(page).to have_button 'scissors'
  end

  scenario 'choose rock paper or scissors' do
    click_button 'rock'
    expect(page).to have_content 'rock has been chosen'
  end

  scenario 'game chooses an option' do
    click_button 'rock'
    message = find(:css, "#oppenent").text
    expect(game_choice_message).to include message
  end

  def game_choice_message
    [:rock, :paper, :scissors].map { |shape| "game chooses #{shape}" }
  end


end
