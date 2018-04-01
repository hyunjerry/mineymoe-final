CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:                         'Google',
    google_storage_access_key_id:     'GOOGO2WWRKL74YDD4MKM',
    google_storage_secret_access_key: 'dnGeixoYRwVmsI7jvxIoKFz+mGRI8qe5+9qY8fhY'
  }
  config.fog_directory = 'staging.mnmo-199708.appspot.com'

  # config = Rails.application.config.database_configuration[Rails.env]['dataset_id']
  # if Rails.env.development? or Rails.env.test?
  #   require 'local_datastore_no_auth'
  #   @dataset ||= Gcloud::Datastore::Dataset.new(config, Gcloud::Datastore::Credentials.new)
  # else
  #   ENV['GCLOUD_KEYFILE_JSON'] = '{"private_key": "' + ENV['SERVICE_ACCOUNT_PRIVATE_KEY'] + '",
  #     "client_email": "' + ENV['SERVICE_ACCOUNT_CLIENT_EMAIL'] + '"}'
  #   @dataset ||= Gcloud.datastore config
  # end
end
