class CreateCobasreagents < ActiveRecord::Migration[6.0]
  def change
  	drop_table :cobasreagents
    create_table :cobasreagents do |t|
    	t.string :test_code
    	t.integer :reagent_bottle
    	t.string :test_short_name
    	t.string :reagent_name
    	t.integer :test_nos
    	t.integer :expiry_month
    	t.integer :expiry_year
    	t.string :lot_no
    	t.string :unique_identifier
    	t.timestamps
    end
  end
end
