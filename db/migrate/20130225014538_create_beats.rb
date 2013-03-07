class CreateBeats < ActiveRecord::Migration
  def change
    create_table :beats do |t|
      t.string :vacation_id
      t.string :picture
      t.string :comment

      t.timestamps
    end
  end
end
