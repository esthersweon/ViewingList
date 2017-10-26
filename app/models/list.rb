class List < ApplicationRecord
  has_many :listmovies, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :user
end
