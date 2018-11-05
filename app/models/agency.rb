class Agency < ApplicationRecord
  STATES = %w( AK AL AR AZ CA CO CT DE FL GA HI IA ID IL IN KS KY LA MA MD ME MI MN MO MS MT NC ND NE NH NJ NM NV NY OH OK OR PA RI SC SD TN TX UT VA VT WA WI WV WY)
  validates :name, presence: true
  validates :address1, presence: true
  validates :city, presence: true
  validates :zip, presence: true, format: {
    with: /\A\d{5}(\-?\d{4})?\z/,
    message: "must be a valid U.S. zip code"
  }
<<<<<<< HEAD

  validates :state, inclusion: { in: STATES }
  validates :state, presence: true
=======

 STATES = %w( AK AL AR AZ CA CO CT DE FL GA HI IA ID IL IN KS KY LA MA MD ME MI MN MO MS MT NC ND NE NH NJ NM NV NY OH OK OR PA RI SC SD TN TX UT VA VT WA WI WV WY)

  validates :state, inclusion: { in: STATES }


>>>>>>> f1fa0ff8f4c110e3a70c5e469d8f057603f0b865
  validates :phone, format: {
    with: /\A\s*(?:\+?(\d{1,3}))?([-. (]*(\d{3})[-. )]*)?((\d{3})[-. ]*(\d{2,4})(?:[-.x ]*(\d+))?)\s*\z/,
    message: "must be a valid phone number"
  }

  has_many :clients, :through => :agencies_clients
  #has_many :priorities, dependent: :destroy
end
