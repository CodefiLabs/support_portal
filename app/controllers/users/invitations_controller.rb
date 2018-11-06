class Users::InvitationsController < Devise::InvitationsController
  def new
    @users = User.all
    @myusers = User.all
    @myusers = User.where({ invited_by_id: current_user.id})
    super
  end
end
