class Tweet < ActiveRecord::Base

	Twitter.configure do |config|
  config.consumer_key = 'cMUkqzkntnJQIEftzXSeOA' 
  config.consumer_secret = 'Ut2dcs4jzbrIvsKaJ2obMg10Fr49IKtxCp7Y5tvXqiI'
  config.oauth_token = '872740465-UC711tQJOjVYZy3XcVsh74O2jVnOEf8rKw6VV80P'
  config.oauth_token_secret = '6buSR9utNRVuo8E0cNFUTeEilLD3qdOz29rtRICio8E'
end

  def read_message 
  	return "sin user" if self.user.blank?
  	Twitter.user_timeline(self.user).first.text
  end

  def update_status
  	return "sin update" if self.message.blank?
  	Twitter.update(self.message)
  end


end
