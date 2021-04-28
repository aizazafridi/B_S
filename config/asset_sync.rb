# For Heroku to access assets from Amazon S3 using cloudfront
if !Rails.env.development?
  AssetSync.configure do |config|
    config.gzip_compression = true
    config.manifest = true
    config.existing_remote_files = 'keep'
    config.fog_provider = 'AWS'
    config.aws_access_key_id = ENV['AWS_ACCESS_KEY_ID']
    config.aws_secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']
    config.fog_directory =  ENV['FOG_DIRECTORY']
    config.fog_region = ENV['AWS_REGION']
    #Change host option in fog (only if you need to)
    #config.fog_host = ENV.fetch('AWS_ENDPOINT') #'s3.amazonaws.com'
    config.fog_path_style = true
    config.run_on_precompile = false # https://github.com/AssetSync/asset_sync#rake-task
  end
end
