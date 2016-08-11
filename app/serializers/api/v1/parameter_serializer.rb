class API::V1::ParameterSerializer < ActiveModel::Serializer
  attributes :id, :name, :value_type, :unit_type, :param_value
end