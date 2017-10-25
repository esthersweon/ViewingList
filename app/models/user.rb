class User < ApplicationRecord
  has_many :lists
  has_many :comments
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,  :lockable
end
