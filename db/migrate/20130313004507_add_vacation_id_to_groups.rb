class AddVacationIdToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :vacation_id, :string
  end
end
