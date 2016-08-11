class User < ActiveRecord::Base  
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes["password"] }
  validates :password, confirmation: true, if: -> { new_record? || changes["password"] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes["password"] }

  validates :email, uniqueness: true

  has_many :contributors
  has_many :designs, :through => :contributors

  def self.find_by_credentials(email, password)
    user = User.find_by_email(email)
    return user if user
    false
  end

  def generate_auth_token
    payload = { user_id: id }
    AuthTokenService.encode(payload)
  end
end
