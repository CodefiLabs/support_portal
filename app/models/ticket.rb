class Ticket < ApplicationRecord
  PRIORITIES = [
    ["High", "High"],
    ["Medium", "Medium"],
    ["Low", "Low"],
  ]
  has_many :internal_notes
  belongs_to :category
end
