<<<<<<< HEAD
class Genre < ApplicationRecord
    has_many :songs
    has_many :artists, through: :songs
=======
class Genre < ActiveRecord::Base
  has_many :songs 
>>>>>>> d4a53349eb45503043e5392cc6f64b5dfff023b9
end
