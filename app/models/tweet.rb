class Tweet < ActiveRecord::Base

Twitter.configure do |config|
  config.consumer_key = '4fINonepn535cWP64txy6w' 
  config.consumer_secret = 'Pa1UaG1s3SEa6j7gbtzddDrXaPLXr4DSheXAOBPEo'
  config.oauth_token = '863670726-n2TK3gxmltB8p5lBqbUOCJDHzwvJBanT0NykEfab'
  config.oauth_token_secret = 'eS4IcB1q43ZJ3Lwhrvj6p6glKSok6tKzKm9DNiU9ri8'
end



  def send_message (usuario)
        client = Twitter::Client.new
        client.update('Sr.' + usuario + ' tiene que devolver el libro rapido' )
  end

end