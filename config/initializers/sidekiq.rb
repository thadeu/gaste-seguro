sidekiq_config = { url: ENV['JOB_WORKER_URL'] }

Sidekiq.configure_server do |config|
  config.redis = sidekiq_config
end

Sidekiq.configure_client do |config|
  config.redis = sidekiq_config
end

Sidekiq::Logging.logger.level = (Rails.env.production? || Rails.env.staging?) ? Logger::INFO : Logger::DEBUG
