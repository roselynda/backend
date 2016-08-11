class Api::V1::ComponentsController < Api::BaseController
  def index
    render(
      json: Component.all, each_serializer: API::V1::ComponentSerializer,
      status: 200
    )
  end
  
  def show
    @component = Design.find(params[:id])
    render json: @component
  end
  
  def create
    @component = Component.new(component_params)
    
    if @component.save
      render(
        json: {message: "New component created.", design_id: @component.id},
        status: 200
      )
    else
      render(
        json: {message: "#{@component.error.full_messages}"},
        status: 422
      )
    end
  end
  
  def update
    @component = Component.find(params[:id])
    @component.update(component_params)
    
    render json: @component
  end
  
  def destroy
    @component = Component.find(params[:id])
    @component.destroy
  end
  
  private
  def component_params
     params.require(:component).permit(:name, :description, :properties, :component_group_id, :ports_in_component_id, :port_id, :parameter_id, :image, :picture) 
  end
end