require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    params[:name].reverse 
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  # get '/square/:number' do
  #   (params[:number].to_i ** 2).to_s
  # end

  get '/say/:number/:phrase' do 
    repeated = ""
    params[:number].to_i.times do 
      repeated += params[:phrase]
    end
    repeated
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    result = ""

    case params[:operation]
    when 'add'
      result = (num1 + num2).to_s 
    when 'subtract'
      result = (num1 - num2).to_s
    when 'multiply'
      result = (num1 * num2).to_s
    when 'divide'
      result = (num1 / num2).to_s
    end
  end

end


  # answer = 'Unable to perform this operation'


