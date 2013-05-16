class AddDateTimesToEvents < ActiveRecord::Migration
  def change
    add_column :events, :datetime_start, :datetime
    add_column :events, :datetime_end, :datetime
  end
end
