class NoteBooksController < ApplicationController
  
  def index
    @notebooks=Notebook.all
  end

  def new
    @note_list = Notebook.new
  end
  
  def create
    @note_book = NoteBook.new(note_book_params)
    if @note_book.save
      redirect_to notebooks_path
    else
      render 'new'
    end
  end
  
  def note_book_params
         params.require(:user).permit(:title, :user_id)
  end

  def edit
    @notebook = Notebook.find(params[:id])
  end
  
  def update
    @notebook = Notebook.find(params[:id])
    if @notebook.update_attributes(note_book_params)
      redirect_to notebook_path(@notebook.id)
    else
      render 'edit'
    end
  end
  
  def show
    @notebook = Notebook.find(params[:id])
  end
  
  def destroy
    @notebook = Notebook.find(params[:id])
    @notebook.destroy
    redirect_to notebooks_path
  end
  
end
