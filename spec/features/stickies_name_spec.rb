require 'spec_helper'

feature 'Owners name is on their sticky page' do

  scenario 'with name chris' do
    show_stickies_for 'chris'
    expect(page).to have_content('chris')
  end

  scenario 'with name rachel' do
    show_stickies_for 'rachel'
    expect(page).to have_content('rachel')
  end

end

