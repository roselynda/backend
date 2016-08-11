class Port < ActiveRecord::Base
  has_many :port_in_components
  has_many :components, through: :port_in_components

  def port_type_enum
    ['Input', 'Output']
  end

  def signal_type_enum
    ['Optical', 'Electrical']
  end
end
