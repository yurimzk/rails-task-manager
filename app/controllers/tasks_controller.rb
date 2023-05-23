class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # List all tasks
  def index
    @tasks = Task.all
  end

  # Show details of a task
  def show
  end

  # Instance used to build the form
  def new
    @task = Task.new
  end

  # POST request to submit the form and create a task
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path
  end

  # Instace used to build the form
  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
