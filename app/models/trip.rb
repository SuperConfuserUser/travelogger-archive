class Trip < ApplicationRecord
  belongs_to :user
  has_many :legs
  has_many :locations, through: :legs
  has_many :trip_categories
  has_many :entries
end
