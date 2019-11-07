class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, uniqueness: true, presence: true
  has_many :ingredients, through: :doses
end
