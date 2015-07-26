# config/initializers/carrierwave.rb

require 'carrierwave'

CarrierWave.configure do |config|
  if %w(development test).include?(Rails.env)
    config.storage = :file
  else
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV["AWS_ACCESS_KEY"],
      aws_secret_access_key: ENV["AWS_SECRET_KEY"]
    }
    config.storage = :fog
    config.fog_directory  = ENV["AWS_BUCKET"]
  end
end