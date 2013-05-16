class AddFixedToEvents < ActiveRecord::Migration
  def change
    add_column :events, :fixed, :boolean
  end
end
