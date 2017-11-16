#
require "twitter"
#require "date"

@twitter = Twitter::REST::Client.new do |config|
  config.consumer_key    = ENV['TWITTER_CONSUMER_KEY']
  config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
  config.access_token    = ENV['TWITTER_OAUTH_TOKEN']
  config.access_token_secret = ENV['TWITTER_OAUTH_TOKEN_SECRET']
end

day = Date.today.day
#if day == 5 or day == 15 or day == 25
  @twitter.update("今日はホットケーキ サービスデーです！！")
#end
