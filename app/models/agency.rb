class Agency < ApplicationRecord
  validates :name, presence: true
  validates :address1, presence: true
  validates :city, presence: true
  validates :zip, presence: true, format: {
    with: /\d{5}(\-?\d{4})?/,
    message: "must be a valid U.S. zip code"
  }
  validates :state, presence: true, format: {
    with: /\A((A[AEKLPRSZ])|(C[AOT])|(D[EC])|(F[LM])|(G[AU])|(HI)|(I[ADLN])|(K[SY])|(LA)|(M[ADEHINOST])|(N[CDEHJMVY])|(MP)|(O[HKR])|(P[ARW])|(RI)|(S[CD])|(T[NX])|(UT)|(V[AIT])|(W[AIVY]))\z/,
    message: "must be a U.S. state"
  }
  validates :phone, format: {
    with: /\A\s*(?:\+?(\d{1,3}))?([-. (]*(\d{3})[-. )]*)?((\d{3})[-. ]*(\d{2,4})(?:[-.x ]*(\d+))?)\s*\z/,
    message: "must be a valid phone number"
  }

  has_many :clients, dependent: :destroy
  has_many :users, dependent: :destroy
  has_many :priorities, dependent: :destroy
end
