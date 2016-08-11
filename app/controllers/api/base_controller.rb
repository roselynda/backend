class Api::BaseController < ActionController::Base
  skip_before_filter :verify_authenticity_token
  
  private
  def current_api_user
    decoded_auth_token ||= AuthTokenService.decode(http_auth_header_content)
    @current_api_user ||= User.find(decoded_auth_token["user_id"]) if decoded_auth_token
  end

  def authenticate_request
    fail NotAuthenticatedError if !current_api_user
  end

  def http_auth_header_content
    return @http_auth_header_content if defined?(@http_auth_header_content)

    @http_auth_header_content = begin
      return request.headers['Authorization'] if request.headers['Authorization'].present?
      nil
    end
  end

  protected
  def json_request?
    request.format.json?
  end
end
