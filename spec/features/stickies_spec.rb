require 'spec_helper'

feature 'Stickies' do

  scenario 'should show the stickies page' do
    visit '/'
    expect(page).to have_content('Stickies')
  end

  scenario 'will allow users to create a sticky', js: true do
    show_stickies_for 'chris'
    add_sticky ''
    expect(page).to have_an_empty_sticky 
  end

end

