require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @username = params[:name]
    @rev_name = @username.reverse 
    "#{@rev_name}"
  end

  get '/square/:number' do 
    @num = params[:number]
    @squared = @num.to_i * @num.to_i
    "#{@squared}"
  end

  get '/say/:number/:phrase' do 
    string = ''
    params[:number].to_i.times do 
      string += params[:phrase]
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    string = ''
    i = 1
    while i < 5 do 
      @word = "word#{i}".to_sym
      string += "#{params[@word]} "
      i += 1 
    end
    string += "#{params[:word5]}."
    string
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case params[:operation]
    when "add"
      (@num1+@num2).to_s
    when "subtract"
      (@num2-@num1).to_s
    when "multiply"
      (@num1*@num2).to_s
    when "divide"
      (@num1/@num2).to_s
    end

  end


end