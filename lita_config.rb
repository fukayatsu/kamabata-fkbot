Lita.configure do |config|
  config.robot.log_level = :info
  config.robot.adapter     = ENV["ADAPTER"] ? ENV["ADAPTER"].to_sym : :shell
  config.robot.name        = ENV["BOT_NAME"] || 'lita'
  config.adapter.api_token = ENV["API_TOKEN"]

  config.redis.url = ENV["REDISTOGO_URL"]
  config.http.port = ENV["PORT"]

  config.handlers.schedules.room              = ENV["BOT_ROOM_ID"]
  config.handlers.schedules.should_sleep_at   = '0 0 * * * Asia/Tokyo'
  config.handlers.schedules.should_wake_up_at = '0 8 * * * Asia/Tokyo'

end
