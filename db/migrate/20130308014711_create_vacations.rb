class CreateVacations < ActiveRecord::Migration
  def change 
	    create_table :vacations do |t|
	      t.string :body
	      t.string :title

	      t.timestamps
	    end
	end
end
