class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new

   #@task = Task.new

  end

  def create
    Task.create(task_params)
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

# in case we do not have a view for destroy, we have to redirect somewhere,
# because it will delete but it will have nowhere to go.
# No need here, because we have a view.
    # redirect_to tasks_path
  end

private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
