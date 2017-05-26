class Movie < ApplicationRecord
    has_many :comments
    
    def self.search(search)
        where("name LIKE ?", "%#{search}%") 
        where("year LIKE ?", "%#{search}%")
        where("summary LIKE ?", "%#{search}%")
    end
end
