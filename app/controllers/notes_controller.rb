class NotesController < ApplicationController
  expose(:categories) { Category.all }
  expose(:notes)
  expose(:note, attributes: :note_params)

  def new
  end

  def create
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
    params.require(:note).permit(:title, :description, :user_id, :category_ids).merge({ user_id: current_user.id })
  end
end
