class AddPriorityToEvents < ActiveRecord::Migration
  def change
    add_column :events, :priority, :float
  end
end
