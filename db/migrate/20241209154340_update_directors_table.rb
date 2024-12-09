class UpdateDirectorsTable < ActiveRecord::Migration[7.1]
  def change
    remove_column :directors, :firstname, :string
    remove_column :directors, :lastname, :string
    add_column :directors, :name, :string
  end
end
