class NotecollectionsController < ApplicationController
  def index
    @notecollections=Notecollection.all
  end

  def new
    @notecollection_list = Notecollection.new
  end
  
  def create
    @notecollection = Notecollection.new(notecollection_params)
    if @notecollection.save
      redirect_to notecollections_path
    else
      render 'new'
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
  end
  
  def destroy
    @notecollection = Notecollection.find(params[:id])
    @notecollection.destroy
    redirect_to notecollections_path
  end
  
end
  