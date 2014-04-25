class AddTimeToTeleevents < ActiveRecord::Migration
  def change
    add_column :teleevents, :time, :time
  end
end
