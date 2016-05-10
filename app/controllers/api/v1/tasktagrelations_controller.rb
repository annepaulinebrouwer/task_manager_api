class Api::V1::TasktagrelationsController < Api::V1::BaseController

  def create
    @tasktagrelation = Tasktagrelation.new(tasktagrelation_params)
    authorize @tasktagrelation
    if @tasktagrelation.save
      render :show
    else
      render_error
    end
  end

  def tasktagrelation_params
    params.require(:tasktagrelation).permit(:tag_id, :task_id)
  end

end
