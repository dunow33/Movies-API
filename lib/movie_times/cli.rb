

class MovieTimes::CLI
    def first
        greet_user
    end
    
    def greet_user
        puts "Welcome to the movie info app!!"
        movie = nil
        Movies.movie_loop
        until movie == "exit"
            movie = prompt_for_movie_info
            fetch_movie_data
            display_movie_data
        end
    end

    def prompt_for_movie_info
        gets.chomp
    end

    def fetch_movie_data
        puts Movies.grab_API_info
    end

    def display_movie_data
        Movies.all.each do | movie |
            puts "Movie: " + movie.title
            puts "Director: " + movie.director
            puts "Year Released: " + movie.year_released.to_s
            puts "Rating: " + movie.rating
        end
    end
end