class NotesController < ApplicationController

  respond_to :json

  def index
    respond_with Note.where(owner: params[:owner]), location: nil
  end

  def create
    note = { owner: params[:owner], text: params[:text] }
    respond_with Note.create(note), location: nil
  end

end
