require 'pry'
require_relative 'config/environment'




class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
end

  post '/piglatinize' do

   #  @user_phrase = PigLatinizer.piglatinize(params[:user_phrase])
   ins = PigLatinizer.new #creating a new instance of piglatin model
   @user_phrase = ins.piglatinize(params[:user_phrase]) #using piglatin instance method on ins
 erb :results

  end	  

end 



