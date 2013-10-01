class NotesController < ApplicationController
  def new
  end

  def index
  @notes=Note.all
  end
  
  def new 
  @note = Note.new 
  end 
 
  def create 
  @note = Note.new(params[:note]) 
  if @note.save 
  redirect_to notes_path 
  else 
  render 'new' 
  end 
     end 
  
end
