require 'net/http'

class Api::V1::RunsController < Api::BaseController
	def index
		render json: "Run"
	end

	def create
		uri = URI('http://128.199.96.91/qucserver2/')
		response = Net::HTTP.post_form(uri, 'json' => 'JSON_DATA')

		render json: "Run response: " << response.body
	end

	private
	def run_params
		params.require(:design).permit(:json)
	end
end