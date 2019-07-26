<<<<<<< HEAD
class Song < ApplicationRecord
    belongs_to :artist
    belongs_to :genre
=======
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
>>>>>>> d4a53349eb45503043e5392cc6f64b5dfff023b9
end
