class CategoriesController < ApplicationController
  include UserCategoriesService
  before_action :set_category, except: [:index, :new, :create]
  def index
    @categories = Category.all
  end

  def show;end

  def edit;end

  def update
    if @category.update(category_params)
      redirect_to categories_path, notice: "Information successfully updated."
    else
      render :edit
    end
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      UserCategoriesService::assign_category(@category.id, @category.title, current_user.id)
      redirect_to categories_path, notice: "Category successfully created."
    else
      render:new
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path, alert: "Category successfully deleted."
  end

private
  def category_params
    params.require(:category).
      permit(:title, :client_id, :creator_id, :user_type)
  end

  def set_category
    @category = Category.find(params[:id])
  end

end
