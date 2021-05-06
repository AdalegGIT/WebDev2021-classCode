class Photo < ApplicationRecord
    has_many :comments #1 : m btw photo and comments 
    has_and_belongs_to_many :tags #m:m btw tags and photos
end
