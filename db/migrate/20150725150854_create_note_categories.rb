class CreateNoteCategories < ActiveRecord::Migration
  def change
    create_table :note_categories do |t|
      t.references :note, index: true
      t.references :category, index: true
      t.timestamps null: false
    end
    add_foreign_key :note_categories, :notes
    add_foreign_key :note_categories, :categories
  end
end
