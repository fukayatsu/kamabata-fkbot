Lita.configure do |config|
  config.robot.log_level = :info
  config.robot.adapter     = ENV["ADAPTER"] ? ENV["ADAPTER"].to_sym : :shell
  config.robot.name        = ENV["BOT_NAME"] || 'lita'
  config.adapter.api_token = ENV["API_TOKEN"]

  ## Example: Set options for the Redis connection.
  # config.redis.host = "127.0.0.1"
  # config.redis.port = 1234
  config.redis.url = ENV["REDISTOGO_URL"]
  config.http.port = ENV["PORT"]

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # config.handlers.some_handler.some_config_key = "value"
end
