class CreateCins < ActiveRecord::Migration[5.2]
  def change
    create_table :cins do |t|
    	t.integer :user_id
    	t.integer :mpanera_id

      t.timestamps
    end
  end
end
