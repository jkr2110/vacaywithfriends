class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :user_id
      t.string :group_id

      t.timestamps
    end
  end
end
