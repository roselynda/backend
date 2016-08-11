class Api::V1::ComponentGroupsController < Api::BaseController
  def index
    @component_groups = ComponentGroup.all
    render(
      json: @component_groups,
      status: 200
    )
  end
  
  def create
    @component_group = ComponentGroup.new
    if @component_group.save
      render(
        json: {message: "New component group created.", design_id: @component_group.id},
        status: 200
      )
    else
      render(
        json: {message: "#{@component_group.error.full_messages}"},
        status: 422
      )
    end
    
    def update
      @component_group = ComponentGroup.find(params[:id])
      @component_group.update(component_group_params)

      render json: @component_group
    end
    
    def destroy
      @component_group = ComponentGroup.find(params[:id])
      @component_group.destroy
    end
    
    def component_group_params
      params.require(:component_group).permit(:name)
    end
    
  end
end