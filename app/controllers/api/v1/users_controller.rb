class Api::V1::UsersController < Api::BaseController
  def index
    unless params.has_key?(:email)
      @users = User.all
    else
      @users = User.find_by_email(params[:email])
    end
    
    render json: @users
  end

  def create
    # Cloudinary::Uploader.upload('http://zaquantum-backend.herokuapp.com/system/components/images/000/000/009/thumb/stock-vector-led-light-emitting-diode-symbol-178118033.jpg?1460019929')
    @user = User.new(convert_data_uri_to_upload(user_params))
    if User.find_by_email(@user.email).blank?
      password = params[:password]
      salt = BCrypt::Engine.generate_salt

      @user.crypted_password = BCrypt::Engine.hash_secret(password, salt)
      @user.salt = salt

      if @user.save
        token = @user.generate_auth_token

        render(
          json: { message: "User created", auth_token: token, user_id: @user.id},
          status: 200
        )
        puts current_api_user
      else
        render(
          json: { message: "#{@user.errors.full_messages}" },
          status: 422
        )
      end
    else
      render(
        json: { message: "#{@user.errors.full_messages}" },
        status: 422
      )
    end
  end

  def dashboard
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private
  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation,
                                 :organization_name, :is_student, :plan_namem, :picture)
    # params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def generate_random_uid
    begin
      @auth[:uid] = ( (SecureRandom.random_number)*1234567890 + 1234567890 ).to_i
    end while Authentication.exists?(uid: @auth[:uid])
  end
  
  def split_base64(uri_str)
  		  if uri_str.match(%r{^data:(.*?);(.*?),(.*)$})
  		    uri = Hash.new
  		    uri[:type] = $1 # "image/gif"
  		    uri[:encoder] = $2 # "base64"
  		    uri[:data] = $3 # data string
  		    uri[:extension] = $1.split('/')[1] # "gif"
  		    return uri
  		  else
  		    return nil
  		  end
  end

  def convert_data_uri_to_upload(obj_hash)
	  if obj_hash[:picture].try(:match, %r{^data:(.*?);(.*?),(.*)$})
	    image_data = split_base64(obj_hash[:picture])
	    image_data_string = image_data[:data]
	    image_data_binary = Base64.decode64(image_data_string)

	    temp_img_file = Tempfile.new("")
	    temp_img_file.binmode
	    temp_img_file << image_data_binary
	    temp_img_file.rewind

	    img_params = {:filename => "image.#{image_data[:extension]}", :type => image_data[:type], :tempfile => temp_img_file}
	    uploaded_file = ActionDispatch::Http::UploadedFile.new(img_params)

	    obj_hash[:picture] = uploaded_file
	    obj_hash.delete(:image_url)
	  end
  	return obj_hash    
  end
end
