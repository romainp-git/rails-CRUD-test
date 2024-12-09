class UpdateActorsTable < ActiveRecord::Migration[7.1]
  def change
    remove_column :actors, :firstname, :string
    remove_column :actors, :lastname, :string
    add_column :actors, :name, :string
  end
end
