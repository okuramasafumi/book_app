class Book < ApplicationRecord
  belongs_to :genre
  has_many :authorships
  has_many :authors, through: :authorships
end
