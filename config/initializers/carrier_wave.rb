if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
        :provider => 'fog/aws',
        :aws_access_key_id => ENV['AWSAccessKeyID'],
        :aws_secret_access_key => ENV['AWSSecretKey']
    }
    config.fog_directory = ENV['S3_BUCKET']
    config.storage = :fog
  end
end