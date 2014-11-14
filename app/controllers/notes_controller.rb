class NotesController < ApplicationController
  def show
  end

  def new
    @note = Note.new
  end

  def edit
  end

  def create
    @note = Note.new note_params
    if @note.save
      flash.now[:notice] = t('note.flash.create.success')
      render :edit
    else
      flash.now[:alert] = t('note.flash.creat.failure')
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

  def note_params
    params.require(:note).permit(:title, :body_html)
  end
end
