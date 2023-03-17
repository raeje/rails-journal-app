class TasksController < ApplicationController
  def index
    @category = Category.find(params[:categories_id])
  end

  def show
    @task = Category.find(params[:categories_id]).tasks.find(params[:id])
  end

  def edit
    @task = Category.find(params[:categories_id]).tasks.find(params[:id])
  end

end
