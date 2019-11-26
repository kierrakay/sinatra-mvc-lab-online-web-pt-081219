require 'pry'
require_relative 'config/environment'




class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
end

  post '/piglatinize' do
    binding.pry
   #  @user_phrase = PigLatinizer.piglatinize(params[:user_phrase])
   ins = PigLatinizer.new
   
   
   

 erb :results
  end	  

end 

