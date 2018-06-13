class CreateTranos < ActiveRecord::Migration[5.2]
  def change
    create_table :tranos do |t|
    	t.integer :mpanera_id

      t.timestamps
    end
  end
end
