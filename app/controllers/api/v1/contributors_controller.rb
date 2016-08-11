class Api::V1::ContributorsController < Api::BaseController
  def index
    unless params[:design_id].present?
      @contributors = Contributor.all
    else
      @contributors = Contributor.where(design_id: params[:design_id])
    end
    render(
        json: @contributors,
        status: 200
      )
  end

  def create
    @contributor = Contributor.new(contributor_params)
    
=begin
    if params.has_key?(:email)
      @user = User.find_by_email(@contributor.email)
      @contributor.user_id = @user.id
    end
=end
    
    if @contributor.save
      render(
        json: {message: "New contributor added.", contributor_id: @contributor.id},
        status: 200
      )
    else
      render(
        json: {message: "#{@contributor.error.full_messages}"},
        status: 422
      )
    end
  end

  def destroy
    @contributor = Contributor.find(params[:id])
    @contributor.destroy
  end

  def contributor_params
    params.require(:contributor).permit(:user_id, :design_id, :is_owner)
  end
end
