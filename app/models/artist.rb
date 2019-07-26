<<<<<<< HEAD
class Artist < ApplicationRecord
    has_many :songs
    has_many :genres, through: :songs
=======
class Artist < ActiveRecord::Base
  has_many :songs
>>>>>>> d4a53349eb45503043e5392cc6f64b5dfff023b9
end
