class NotesController < ApplicationController
  expose(:categories)
  expose(:category)
  expose(:notes)
  expose(:note)

  def new
  end

  def create
    note = current_user.notes.build(note_params)
    if note.save
      redirect_to note, notice: "Note was successfully created!"
    else
      render action: new
    end
  end

  def edit
  end

  def update
    if note.update(note_params)
			redirect_to note, notice: "Note was successfully updated"
		else
			render 'edit'
		end
  end

  def destroy
    note.destroy
		redirect_to root_path
  end

  private

  def note_params
    params.require(:note).permit(:title, :description, :user_id, :category_id)
  end
end
