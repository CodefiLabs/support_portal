class Users::InvitationsController < Devise::InvitationsController

  def new
    @users = User.all
    @myusers = User.all
    @myusers = User.where({invited_by_id: current_user.id})
    @agencies = Agency.all
    super
  end

  # Taken from https://github.com/scambra/devise_invitable/blob/master/app/controllers/devise/invitations_controller.rb
  def create
    self.resource = invite_resource
    resource_invited = resource.errors.empty?

    yield resource if block_given?

    if resource_invited
      if is_flashing_format? && self.resource.invitation_sent_at
        set_flash_message :notice, :send_instructions, :email => self.resource.email
      end
      # Arity refers to the number of arguments accepted by a method
      if self.method(:after_invite_path_for).arity == 1
        # Redirect to the referring page
        respond_with resource, :location => request.referrer
      else
        respond_with resource, :location => request.referrer
      end
    else
      respond_with_navigational(resource) { render :new }
    end
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
