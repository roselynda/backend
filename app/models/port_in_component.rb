class PortInComponent < ActiveRecord::Base
  belongs_to :port
  belongs_to :component
end
