class Leg < ApplicationRecord
  belongs_to :location
  belongs_to :trip
end
