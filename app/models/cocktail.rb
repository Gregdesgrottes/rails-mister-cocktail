class Cocktail < ApplicationRecord
  has_many :ingredients, through: :doses, dependent: :destroy
  has_many :doses
  has_attachment :photo

  validates :name, uniqueness: true, presence: true
end
