class Parameter < ActiveRecord::Base
  belongs_to :component

  def unit_type_enum
    ['Hz', 'dBm', 'MHz', 'nm', 'kW', 'MW', 'Joule', 'meter', 'km', 'THz', 'deg', 'dB/km']
  end

  def value_type_enum
    ['integer', 'real', 'string', 'boolean']
  end
end

