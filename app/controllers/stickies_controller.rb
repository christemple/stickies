class StickiesController < ApplicationController
  def index
    redirect_to action: 'stickies', owner: 'home'
  end

  def stickies
    @owner = params[:owner]
  end
end
