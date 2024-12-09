class Movie < ApplicationRecord
  belongs_to :director
  has_many :casts
  has_many :actors, through: :casts
end
