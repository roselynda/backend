class Design < ActiveRecord::Base
  has_many :contributors
  has_many :users, :through => :contributors
end
