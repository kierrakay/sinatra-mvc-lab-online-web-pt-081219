require_relative 'config/environment'



class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
end

  post '/piglatinize' do
    # @user_phrase = piglatinize(params[:user_phrase])
    ins = PigLatinizer.new
    ins.piglatinize(params[:user_phrase])
 erb :results
  end	  

end 