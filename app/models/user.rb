class User < ApplicationRecord
  enum role: [:superadmin, :agencyadmin, :agencyuser, :clientadmin, :user]
  after_initialize :set_default_role, :if => :new_record?
  belongs_to :client
  belongs_to :agency
  has_many :categories
  def set_default_role
    self.role ||= :user
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
def change
   add_column :users, :invitation_token, :string
   add_column :users, :invitation_created_at, :datetime
   add_column :users, :invitation_sent_at, :datetime
   add_column :users, :invitation_accepted_at, :datetime
   add_column :users, :invitation_limit, :integer
   add_column :users, :invited_by_id, :integer
   add_column :users, :invited_by_type, :string
   add_index :users, :invitation_token, :unique => true
end
