class CreateCasts < ActiveRecord::Migration[7.1]
  def change
    create_table :casts do |t|
      t.references :actor, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
