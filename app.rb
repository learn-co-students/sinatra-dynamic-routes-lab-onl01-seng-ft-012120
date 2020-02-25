require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end
  get '/say/:number/:phrase' do
    @phrase = params[:phrase] * params[:number].to_i
    "#{@phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    phrase = params.collect{|k,v| v if k.match(/word\d/)} 
    "#{phrase.join(' ')}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    result = 0
    case operation
      when 'add'
        result = num1 + num2
        
      when 'subtract'
        result = num1 - num2
      when 'multiply'
        result = num1 * num2
      when 'divide'
        result = num1 / num2
      else
        result = 'Unknown operation'
    end
    "#{result}"
  end
end