class AgenciesClient < ApplicationRecord
  belongs_to :agencies
  belongs_to :clients
end
