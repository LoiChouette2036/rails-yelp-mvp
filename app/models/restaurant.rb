class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true

  CATEGORIES_FOOD = ["chinese", "italian", "japanese", "french", "belgian"];
  validates :category, inclusion: {in:CATEGORIES_FOOD }
end
