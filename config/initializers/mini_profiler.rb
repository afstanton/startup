# frozen_string_literal: true

if Rails.env.development?
  # set RedisStore
  Rack::MiniProfiler.config.storage_options = { url: ENV['REDIS_URL'] }
  Rack::MiniProfiler.config.storage = Rack::MiniProfiler::RedisStore

  # For Hotwire
  Rack::MiniProfiler.config.enable_hotwire_turbo_drive_support = true

  # Enable snapshots if needed
  Rack::MiniProfiler.config.snapshot_every_n_requests = 1
end
