require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    erb :phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} " + "#{params[:word2]} " + "#{params[:word3]} " + "#{params[:word4]} " + "#{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number_one = params[:number1].to_i
    @number_two = params[:number2].to_i
    case @operation
    when "add"
      "#{@number_one + @number_two}"
    when "subtract"
      "#{@number_one - @number_two}"
    when "multiply"
      "#{@number_one * @number_two}"
    when "divide"
      "#{@number_one / @number_two}"
    end
  end
end
