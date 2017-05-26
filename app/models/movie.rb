class Movie < ApplicationRecord
    def self.search(search)
        where("name LIKE ?", "%#{search}%") 
        where("year LIKE ?", "%#{search}%")
        where("summary LIKE ?", "%#{search}%")
    end
end
