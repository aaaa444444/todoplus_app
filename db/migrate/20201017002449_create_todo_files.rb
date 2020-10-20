class CreateTodoFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_files do |t|
      t.references :todo, foreign_key: true
      t.references :file, foreign_key: true

      t.timestamps
    end
  end
end
