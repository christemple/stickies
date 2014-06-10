class StickiesController < ApplicationController
  def index
    redirect_to action: 'stickies', owner: 'home'
  end

  def stickies
    @owner = params[:owner]
    @notes = Note.find_all_by_owner(@owner)
  end
end
