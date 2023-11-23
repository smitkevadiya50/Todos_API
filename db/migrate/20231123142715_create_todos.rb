class CreateTodos < ActiveRecord::Migration[7.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.date :task_generate_date
      t.boolean :task_completed

      t.timestamps
    end
  end
end
