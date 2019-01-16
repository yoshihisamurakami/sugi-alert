
class Sugi
  SERVICE_DAYS = [5, 15, 25]
  
  def tweet
    day = Date.today.day
    if SERVICE_DAYS.include?(day)
      twitter_bot.tweet(message(day))
    end
  end
  
  def twitter_bot
    TwitterBot.new
  end
  
  def message(day)
    "今日はホットケーキ サービスデーです" + marks(day) + " #八幡山 #ルポーゼすぎ"
  end
  
  def marks(day)
    "！" * (day.div(10) + 1)
  end
end
