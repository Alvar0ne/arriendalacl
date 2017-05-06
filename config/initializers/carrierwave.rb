if Rails.env.production?
  CarrierWave.configure do |config|
    
    config.fog_credentials = {
      :provider               => 'AWS',                            # required
      
    }
    config.fog_directory  = ENV['AWS_BUCKET_NAME']    
  end             # required
  
else
  CarrierWave.configure do |config|
    config.storage :file
end
end