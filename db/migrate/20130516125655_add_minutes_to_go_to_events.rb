class AddMinutesToGoToEvents < ActiveRecord::Migration
  def change
    add_column :events, :minutes_to_go, :integer
  end
end
