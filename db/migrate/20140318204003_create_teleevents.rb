class CreateTeleevents < ActiveRecord::Migration
  def change
    create_table :teleevents do |t|
      t.datetime :date
      t.string :title
      t.string :phone
      t.string :description

      t.timestamps
    end
  end
end
