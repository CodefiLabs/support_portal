class Users::InvitationsController < Devise::InvitationsController

  def new
    @users = User.all
    @myusers = User.all
    @myusers = User.where({invited_by_id: current_user.id})
    @agencies = Agency.all
    super
  end

  def create
    super
  end
  private
     def update_resource_params
       params.require(:user).permit(:name, :email, :invitation_token, :email, :first_name, :last_name, :agency_id, :phone, :company, :job_title)
     end

  #def update_resource_params
  #  new_params = ["email", "first_name", "agency_id", "last_name", "phone", "company", "job_title"]
  #  params.require(:user).permit(new_params)
  #end
end
