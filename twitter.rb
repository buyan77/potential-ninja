require 'twitter'
require 'pp'
require './db_select.rb'

# ログイン
client = Twitter::REST::Client.new do |config|
   config.consumer_key		 = 'xxx'
   config.consumer_secret	 = 'xxx'
   config.access_token		 = 'xxx'
   config.access_token_secret	 = 'xxx'
end

p info()

#発言する
client.update("#{info()}") 
