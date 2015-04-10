Lita.configure do |config|
  config.robot.log_level   = :info
  config.robot.name        = ENV["BOT_NAME"] || 'lita'
  if ENV["ADAPTER"] == 'idobata'
    config.robot.adapter = :idobata
    config.adapters.idobata.api_token = ENV["API_TOKEN"]
  else
    config.robot.adapter = :shell
  end

  config.redis[:url] = ENV["REDISTOGO_URL"]
  config.http.port   = ENV["PORT"] || 3456

  config.handlers.schedules.room              = ENV["BOT_ROOM_ID"]
  config.handlers.schedules.should_sleep_at   = '0 0 * * * Asia/Tokyo'
  config.handlers.schedules.should_wake_up_at = '0 8 * * * Asia/Tokyo'
end
