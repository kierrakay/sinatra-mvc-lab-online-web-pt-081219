require_relative 'config/environment'



class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
end

  post '/piglatinize' do
    # @user_phrase = piglatinize(params[:user_phrase])
    ins = PiLlatinizer.new
    ins.piglatinizer(params[:user_phrase])
 erb :results
  end	  

end 