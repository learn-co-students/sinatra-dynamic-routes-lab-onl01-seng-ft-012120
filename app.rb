require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @username = params[:name]
    "#{@username.reverse}" 
  end

  get "/square/:number" do 
    @sqnumber = params[:number].to_i * params[:number].to_i
    "#{@sqnumber}" 
  end 

  get "/say/:number/:phrase" do
    @phrase = params[:phrase]
    @number = params[:number]
    "#{@phrase}. "* (@number.to_i)
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} "+"#{params[:word2]} "+"#{params[:word3]} "+"#{params[:word4]} "+"#{params[:word5]}" + "." 
  end

  get "/:operation/:number1/:number2" do 
    @operation = params[:operation]
    @number1 = params[:number1].to_f
    @number2 = params[:number2].to_f
    case @operation
    when "+"
      "#{@number1 + @number2}"
    when "add"
      "#{@number1 + @number2}"
    when "-"
      "#{@number2 - @number1}"
    when "subtract"
      "#{@number2 - @number1}"
    when "*"
      "#{@number1 * @number2}"
    when "multiply"
      "#{@number1 * @number2}"
    # when "/"
    #   "#{@number1 / @number2}"
    when "divide"
      "#{@number1 / @number2}"
    else
      "Unknown operation"
    end 
  end

end