class Api::V1::TagsController < Api::V1::BaseController
  before_action :set_tag, only: [ :show, :update ]

  def index
   @tags = policy_scope(Tag)
  end

  def show
  end

  def create
    @tag = current_user.tags.build(tag_params)
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


  private

  def set_tag
    @tag = Tag.find(params[:id])
    authorize @tag
  end

  def tag_params
    params.require(:tag).permit(:name, :description)
  end

  def render_error
    render json: { errors: @tag.errors.full_messages }, status: :unprocessable_entity
  end
end
