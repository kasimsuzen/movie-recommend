json.extract! movie, :id, :name, :year, :imdb_rating, :genres, :created_at, :updated_at
json.url movie_url(movie, format: :json)
