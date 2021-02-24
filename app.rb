require 'sinatra/base'

class App < Sinatra::Base
    
    #makes the form
    get '/newteam' do
      erb :newteam
    end

    post '/newteam' do
      @newteam = params
      erb :team
    end
  
end


#1
# post '/reverse' do
#   original_string = params["string"]
#   @reversed_string = original_string.reverse

#   erb :reversed
# end 

#2
# get "/" do
#   @user = "Ian"

#   erb :index # @user will be defined as 'Ian' in the view
# end

# get "/profile" do
#   erb :profile # @user will be nil here
# end 

# #3
# <!DOCTYPE html>
# <html>
#   <head>
#     <meta charset="UTF-8">
#     <title>The Ultimate Reversed String!</title>
#     <link rel="stylesheet" href="stylesheets/style.css" type="text/css">
#   </head>

#   <body>
#     <h1>The Ultimate Reversed String!</h1>

#     <!--   Use ERB tags to bring in an instance variable containing the reversed string -->
#     <h2><%= @reversed_string %></h2>
#   </body>
# </html> 