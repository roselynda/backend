class Api::V1::DesignsController < Api::BaseController
  def index
    unless params[:user_id].present?
      @designs = Design.all
    else
      @designs = Design.joins(:contributors).where(contributors: {user_id: params[:user_id]})
    end
    
    render(
      json: @designs,
      status: 200
    )
  end

  def create
    @design = Design.new(design_params)
    if @design.save
      render(
        json: {message: "New design created.", design_id: @design.id},
        status: 200
      )
    else
      render(
        json: {message: "#{@design.error.full_messages}"},
        status: 422
      )
    end
  end

  def show
    @design = Design.find(params[:id])
    render json: @design
  end

  def update
    @design = Design.find(params[:id])
    @design.update(design_params)

    render json: @design
  end

  def destroy
    @design = Design.find(params[:id])
    @design.destroy
  end

  private
  def design_params
    params.require(:design).permit(:name, :json, :updated_by)
  end
end
