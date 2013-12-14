class NotecollectionsController < ApplicationController
  def index

        if user_signed_in?
      @notecollections = Notecollection.where(user_id: current_user)
        else
          @notecollections = []
        end
    
  end

  def new
    @notecollection = Notecollection.new
  end
  
  def create
    @notecollection = Notecollection.new(notecollection_params)
    
    
    if(@notecollection.user_id != current_user.id)
         redirect_to root_path
    else
      if @notecollection.save
        redirect_to notecollections_path
      else
        render 'new'
      end
    end
    
  end
  
  def notecollection_params
         params.require(:notecollection).permit(:title, :user_id)
  end

  def edit
    @notecollection = Notecollection.find(params[:id])
  end
  
  def update
    @notecollection = Notecollection.find(params[:id])
    if @notecollection.update_attributes(notecollection_params)
      redirect_to notecollection_path(@notecollection.id)
    else
      render 'edit'
    end
  end
  
  def show
    @notecollection = Notecollection.find(params[:id])
    @notes = Note.where(notecollection_id: params[:id])
  end
  
  def destroy
    @notecollection = Notecollection.find(params[:id])
    @notes = Note.where(notecollection_id: params[:id])
    @notes.each do |note|
      note.destroy
    end
    @notecollection.destroy
    redirect_to notecollections_path
  end
  
end
  