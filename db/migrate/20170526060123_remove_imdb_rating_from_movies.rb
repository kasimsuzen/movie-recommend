class RemoveImdbRatingFromMovies < ActiveRecord::Migration[5.0]
  def change
    remove_column :movies, :imdb_rating, :float
  end
end
