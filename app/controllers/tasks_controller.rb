class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :set_goal, only: [:show, :edit, :update, :destroy, :create]

 
  def index
    @tasks = Task.all
  end

 
  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  
  def create
    @task = @goal.tasks.create(task_params)
    redirect_to goal_path(@goal)
  end


  def update
  end


  def destroy
    @task = @goal.tasks.find(params[:id])
    if @task.destroy
      flash[:success] = "Task deleted"
    else
      flash[:error] = "Error"
    end
    redirect_to @goal
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end
  
    def set_goal
      @goal = Goal.find(params[:goal_id])
    end

    def task_params
      params.require(:task).permit(:name, :complete, :task_due)
    end
end
