class CreateTodoUserAttachmentFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_user_attachment_files do |t|
      t.references :todo, foreign_key: true
      t.references :user_attachment_file, foreign_key: true

      t.timestamps
    end
  end
end
