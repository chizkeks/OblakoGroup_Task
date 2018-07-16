class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.text :text
      t.integer :project_id
      t.timestamps
      t.boolean :isCompleted, default: false
    end
  end
end