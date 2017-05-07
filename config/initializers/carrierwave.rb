if Rails.env.production?
  CarrierWave.configure do |config| 
      config.fog_credentials = {
      :provider               => 'AWS',                            # required
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],         # required
      :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'], 
      :region                 => ENV['S3_REGION']    # required
    }
    config.fog_directory  = ENV['AWS_BUCKET_NAME']    
  end             # required
  
else
  CarrierWave.configure do |config|
    config.storage :file
   end
end


