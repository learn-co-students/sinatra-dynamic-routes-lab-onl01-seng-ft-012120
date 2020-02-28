require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    reversename = params[:name].reverse
    "#{reversename}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    square = num ** 2
    "#{square.to_s}"    
  end

  get '/say/:number/:phrase' do
    str = "" 
    num = params[:number].to_i
    say = params[:phrase]
    num.times{str += "#{say}\n"}
    str
   end

   get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
   end

   get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    op = params[:operation]
    case op 
      when "add"
        (num1 + num2).to_s
      when "subtract"
        (num1 - num2).to_s
      when "multiply"
        (num1 * num2).to_s
      when "divide"
        (num1/num2).to_s
      end
   end
end