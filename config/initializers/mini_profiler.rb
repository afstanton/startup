# frozen_string_literal: true

# set MemoryStore
Rack::MiniProfiler.config.storage = Rack::MiniProfiler::MemoryStore

# set RedisStore
if Rails.env.production?
  Rack::MiniProfiler.config.storage_options = { url: ENV['REDIS_SERVER_URL'] }
  Rack::MiniProfiler.config.storage = Rack::MiniProfiler::RedisStore
end

# For Hotwire
Rack::MiniProfiler.config.enable_hotwire_turbo_drive_support = true
