=begin
CarrierWave.configure do |config|
	
  config.fog_credentials = {
    :provider               => "AWS",
    :region                 => ENV['AWS_REGION'],
    :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
    :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY']
  }

  if Rails.env.production?  
  	config.root = Rails.root.join('tmp')
  	config.cache_dir = "#{Rails.root}/tmp/uploads"
  end

  config.fog_directory  = ENV['AWS_BUCKET']
  config.fog_public     = false
end
=end