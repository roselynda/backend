class Component < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
   
  validates :component_group, presence: true
  
  has_many :port_in_components
  has_many :ports, through: :port_in_components
  has_many :parameters
  belongs_to :component_group

  # attr_accessible :picture
  mount_uploader :picture, AvatarUploader
  
  # mount_uploader :image, AvatarUploader
end
