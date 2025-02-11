require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:

  get "/goodbye/:name" do

    @person_name = params[:name]
    "Goodbye, #{@person_name}."
  end 

  get "/multiply/:num1/:num2" do

    @value_one = params[:num1]
    @value_two = params[:num2]

    result = @value_one.to_i * @value_two.to_i

    result.to_s

  end 


end