class API::V1::PortSerializer < ActiveModel::Serializer
  attributes :id, :port_type, :signal_type
end