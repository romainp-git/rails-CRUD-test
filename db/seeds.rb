Cast.destroy_all
Movie.destroy_all
Actor.destroy_all
Director.destroy_all

upcoming_movies = Tmdb::Movie.upcoming
upcoming_movies.each_with_index do |movie, index|
  movie_details =  Tmdb::Movie.detail(movie.id)
  crew_details = Tmdb::Movie.crew(movie.id)
  cast_details = Tmdb::Movie.casts(movie.id)

  director = crew_details.find { |crew_member| crew_member["job"] == "Director" }
  actors = cast_details.first(5).map { |cast_member| cast_member["name"] }

  actor_records = actors.map do |actor|
    Actor.find_or_create_by!(name: actor)
  end

  Director.find_or_create_by!(name: director["name"])

  new_movie = Movie.find_or_create_by!(
    title: movie.title,
    year: movie.release_date,
    genre: movie_details["genres"].first["name"],
    director_id: Director.find_by(name: director["name"]).id,
    poster_url: movie_details["poster_path"]
  )

  new_movie.actors << actor_records
end
