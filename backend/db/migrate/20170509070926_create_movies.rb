class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.date :year
      t.float :imdb_rating
      t.string :genres

      t.timestamps
    end
  end
end
