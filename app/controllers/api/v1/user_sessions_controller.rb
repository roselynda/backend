class Api::V1::UserSessionsController < Api::BaseController
  def create
    @user = User.find_by_credentials(params[:email], params[:password])
    
    if @user
      token = @user.generate_auth_token
      render(
        json: { message: "User logged in", auth_token: token, user: @user.id},
        status: 200
      )
    else
      render(
        json: { message: "Unauthorized"},
        status: 422
      )
    end
  end
  
  def show
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    
    render json: @user
  end
  
  def destroy
    logout
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :crypted_password, :salt)
  end

  def generate_random_uid
    begin
      @auth[:uid] = ( (SecureRandom.random_number)*1234567890 + 1234567890 ).to_i 
    end while Authentication.exists?(uid: @auth[:uid])
  end
end