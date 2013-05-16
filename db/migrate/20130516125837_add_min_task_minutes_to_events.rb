class AddMinTaskMinutesToEvents < ActiveRecord::Migration
  def change
    add_column :events, :min_task_minutes, :integer
  end
end
