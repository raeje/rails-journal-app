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

  def update
    #@task = Category.find(params[:categories_id]).tasks.find(params[:id])
    #puts ">>>>>>>>>>> #{@task} #{@task.update(params[:name, :description])}"
    @task = Task.find(params[:id])
    p ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    p @task
    p ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    if @task.update(task_params)
      p ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
      p "  Update success"
      p ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
      redirect_to task_url(@task.category_id, @task.id)
    else
      p ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
      p "  Update failed"
      p ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
      render :edit, status: unprocessable_entity
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :description)
  end
end
