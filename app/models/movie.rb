class Movie < ApplicationRecord
  has_many :listmovies, dependent: :destroy
end
