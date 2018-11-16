class Category < ApplicationRecord
  belongs_to :client
  has_many :tickets
end
