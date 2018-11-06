class Users::InvitationsController < Devise::InvitationsController
  def new
    @users = User.all
    super
  end
end
