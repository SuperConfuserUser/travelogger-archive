class Location < ApplicationRecord
  has_many :legs
  has_many :trips, through: :legs
end
