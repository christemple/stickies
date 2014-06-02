module Helpers

  def refresh_page
    visit current_path
  end

  def show_stickies_for(owner)
    visit "/#{owner}"
  end

  def randomly_generated_name_from_url
    current_path.gsub('/', '')
  end
  
  def remove_focus_from_note_to_save 
    page.execute_script "$('.sticky .note').blur();"
  end

  def add_sticky(note='')
    click_link 'add'
    add_note(note) if note 
  end

  def add_note(note)
    sticky_note.set(note)
  end

  def sticky_note
    find(:css, '.sticky textarea.note')
  end

  def have_an_empty_sticky
    have_selector('.sticky')
  end

  def reload_page
    visit current_path
  end
end
