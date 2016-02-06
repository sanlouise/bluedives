CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :AWS_ACCESS_KEY_ID      => ENV['S3_ACCESS_KEY'],                        # required
    :AWS_SECRET_ACCESS_KEY  => ENV['S3_SECRET_KEY'],                     # required
    :region                 => 'eu-central-1',                  # optional, defaults to 'us-east-1'
    :host                   => 's3.example.com',             # optional, defaults to nil
    :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }
  
  config.cache_dir = "#{Rails.root}/tmp/uploads" # To let CarrierWave work on heroku
  config.fog_directory  = ENV['S3_Bucket']                             # required

end