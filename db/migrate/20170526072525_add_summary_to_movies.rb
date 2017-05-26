class AddSummaryToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :summary, :string
  end
end
