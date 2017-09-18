require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    "#{num**2}"
  end

  get '/say/:number/:phrase' do
    output = ""
    params[:number].to_i.times do
      output << "#{params[:phrase]}"
    end
    output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    operator = ""
    case params[:operation]
    when "add"
      operator = '+'
    when "subtract"
      operator = '-'
    when "multiply"
      operator = '*'
    when "divide"
      operator = '/'
    end
    "#{num1.send(operator, num2)}"
  end

end
