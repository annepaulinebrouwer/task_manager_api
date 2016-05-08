class Api::V1::TagsController < Api::V1::BaseController
  before_action :set_tag, only: [ :show, :update, :destroy ]

  def index
   @tags = policy_scope(Tag)
  end

  def show
  end

  def create
    @tag = Tag.new(tag_params)
    authorize @tag
    if @tag.save
      render :show
    else
      render_error
    end
  end

  def update
    if @tag.update(tag_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @tag.destroy!
      render :index
  end

  private

  def set_tag
    @tag = Tag.find(params[:id])
    authorize @tag
  end

  def tag_params
    params.require(:tag).permit(:name, :description, :task_id)
  end

  def render_error
    render json: { errors: @tag.errors.full_messages }, status: :unprocessable_entity
  end
end
