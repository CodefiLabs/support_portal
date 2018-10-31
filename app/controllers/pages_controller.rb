class PagesController < ApplicationController
  def home

  end

  def pricing

  end
  def users
 @users = User.all
 @users = User.paginate(:page => params[:page], :per_page => 10)
  end
end
