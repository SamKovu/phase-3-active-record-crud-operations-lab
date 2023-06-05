class Movie < ActiveRecord::Base

    def self.create_with_title(string)
        Movie.create(title: string)
    end

    def self.first_movie
        Movie.first
    end
    def self.last_movie
        Movie.last
    end
    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    def self.find_movie_with_attributes(string)
        Movie.find_by(string)
    end

    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

    def update_with_attributes(string)
        self.update(string)
    end

    def self.update_all_titles(string)
        Movie.update(title: string)
    end

    def self.delete_by_id(id)
        Movie.find(id).destroy
    end

    def self.delete_all_movies
        Movie.destroy_all
    end


end