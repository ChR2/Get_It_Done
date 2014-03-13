class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_name 
      t.datetime :deadline_date
      t.string :task_location
      t.boolean :task_complete
      t.belongs_to :user           #t.integer :user_id
      t.belongs_to :list

      t.timestamps
    end
  end
end
