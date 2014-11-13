class CreateNoteFields < ActiveRecord::Migration
  def change
    create_table :note_fields do |t|
      t.string :title
      t.text :body_html
      t.text :body_text
      t.references :user, index: true
      t.timestamps
    end
  end
end
