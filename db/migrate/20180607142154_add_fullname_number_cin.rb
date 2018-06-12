class AddFullnameNumberCin < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :fullname, :string
  	add_column :users, :number, :string
  	add_column :users, :cin, :string

  	add_column :mpaneras, :fullname, :string
  	add_column :mpaneras, :number, :string
  	add_column :mpaneras, :cin, :string
  end
end
