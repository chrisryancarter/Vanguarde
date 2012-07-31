CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAJ553O2BTMIUBD45A',       # required
    :aws_secret_access_key  => '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',       # required
    :region                 => 'eu-east-1'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'vanguarde'                     # required
  #config.fog_host       = 'https://assets.example.com'            # optional, defaults to nil
  #config.fog_public     = false                                   # optional, defaults to true
  #config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
