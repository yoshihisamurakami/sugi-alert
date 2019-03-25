require 'spec_helper'

RSpec.describe TwitterBot do
  it 'エラーなくツイートすること' do
    # Twitter clientのモックを作る
    twitter_client_mock = double('Twitter client')
      
    # updateメソッドが呼ばれることもあわせて検証する
    expect(twitter_client_mock).to receive(:update)
  
    twitter_bot = TwitterBot.new
    
    # twitter_clientメソッドが呼ばれたら上で作ったモックを返すように実装を書き換える
    allow(twitter_bot).to receive(:twitter_client).and_return(twitter_client_mock)
    
    expect{ twitter_bot.tweet('test') }.not_to raise_error
  end
end