class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :genre
      t.references :director, null: false, foreign_key: true

      t.timestamps
    end
  end
end
