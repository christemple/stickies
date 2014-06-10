require 'spec_helper'

feature 'User manages notes' do

  scenario 'adds a note and refreshes', js: true do
    visit '/chris'
    click_link 'add'
    add_note 'My first note'
    remove_focus_from_note_to_save
    wait_for_ajax
    refresh_page
    expect(sticky_note).to have_content('My first note')
  end

end
