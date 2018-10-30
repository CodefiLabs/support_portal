class PagesController < ApplicationController
  def home

  end

  def pricing

  end
  def users
 @users = User.all
  end
end
