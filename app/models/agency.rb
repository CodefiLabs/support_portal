class Agency < ApplicationRecord
  has_many: :clients, dependent: :destroy
  has_many: :users, dependent: :destroy
  has_many: :priorities, dependent: :destroy
end
