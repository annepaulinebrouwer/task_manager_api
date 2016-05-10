class Api::V1::TasksController < Api::V1::BaseController
  before_action :set_task, only: [ :show, :update, :destroy ]
  # before_action :find_tasklist, only: [:create]

  def index
   @tasks = policy_scope(Task)
  end

  def show
  end

  def create
    @task = Task.new(task_params)
    authorize @task
    if @task.save
      render :show
    else
      render_error
    end
  end

  def update
    if @task.update(task_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @task.destroy!
      render :index
  end

  private

  def set_task
    @task = Task.find(params[:id])
    authorize @task
  end

  def task_params
    params.require(:task).permit(:name, :description, :tasklist_id)
  end

  def render_error
    render json: { errors: @task.errors.full_messages }, status: :unprocessable_entity
  end
end
