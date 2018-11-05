class Client < ApplicationRecord

  validates :name, presence: true
  validates :address1, presence: true
  validates :city, presence: true
  validates :zip, presence: true, format: {
    with: /\A\d{5}(\-?\d{4})?\z/,
    message: "must be a valid U.S. zip code"
    }

 STATES = %w( AK AL AR AZ CA CO CT DE FL GA HI IA ID IL IN KS KY LA MA MD ME MI MN MO MS MT NC ND NE NH NJ NM NV NY OH OK OR PA RI SC SD TN TX UT VA VT WA WI WV WY)

  validates :state, inclusion: { in: STATES }


  validates :phone, format: {
      with: /\A\s*(?:\+?(\d{1,3}))?([-. (]*(\d{3})[-. )]*)?((\d{3})[-. ]*(\d{2,4})(?:[-.x ]*(\d+))?)\s*\z/,
      message: "must be a valid phone number"
    }

has_many :agencies, :through => :agencies_clients

end
