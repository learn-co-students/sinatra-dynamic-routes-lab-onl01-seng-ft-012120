require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/' do
    "start page"
  end
  
  get "/reversename/:name" do
    @name = params[:name]
    name_reversed = @name.reverse
    "#{name_reversed}"
  end
  
  get "/square/:number" do
    @number = params[:number]
    num = @number.to_i 
    num_squared = num**2
    "#{num_squared}"
  end
  
  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    num = @number.to_i
    a = 0
    p = "\n"
    while a < num
      p += @phrase + "\n"
      a += 1 
    end
    "#{p}"
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  
  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    num1 = @number1.to_i
    num2 = @number2.to_i
    if @operation == "add"
      answer = num1 + num2
    end
    if @operation == "subtract"
      answer = num1 - num2
    end
    if @operation == "multiply"
      answer = num1 * num2
    end
    if @operation == "divide"
      answer = num1 / num2
    end
    "#{answer}"
  end

end