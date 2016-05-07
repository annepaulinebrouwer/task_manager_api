class Api::V1::TasklistsController < Api::V1::BaseController
  before_action :set_tasklist, only: [ :show, :update ]

  def index
   @tasklists = policy_scope(Tasklist)
  end

  def show
  end

  # def create
  #   @tasklist = current_user.tasklists.build(tasklist_params)
  #   authorize @tasklist
  #   if @tasklist.save
  #     render :show
  #   else
  #     render_error
  #   end
  # end

  # def update
  #   if @tasklist.update(tasklist_params)
  #     render :show
  #   else
  #     render_error
  #   end
  # end


  private

  def set_tasklist
    @tasklist = Tasklist.find(params[:id])
    authorize @tasklist
  end

  def tasklist_params
    params.require(:tasklist).permit(:name, :description)
  end

  # def render_error
  #   render json: { errors: @tasklist.errors.full_messages }, status: :unprocessable_entity
  # end
end
