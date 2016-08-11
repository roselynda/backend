class API::V1::ComponentSerializer < ActiveModel::Serializer
  attributes :id, :name, :parameters, :component_group_id, :picture
  has_many :ports , serializer: API::V1::PortSerializer
  has_many :parameters, serializer: API::V1::ParameterSerializer
end