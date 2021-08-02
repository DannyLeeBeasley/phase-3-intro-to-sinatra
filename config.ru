require 'sinatra'

class App < Sinatra::Base

  set :default_content_type, 'application/json'

  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end

  get '/stringbean' do
    "<h1>GIVE 'EM <em>HELL</em>, STRINGBEAN!!!</h1>"
  end

  get '/warning' do
    amount_of_seconds_to_get_right = rand(1..9)
    "<h1>You've got #{amount_of_seconds_to_get_right} seconds to get the fuck right 'fore I beat 'dat ass!</h1>"
  end

  get '/dice' do
    dice_roll = rand(1..6)
    { roll: dice_roll }.to_json
  end

  get '/multiply/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i

    product = num1 * num2
    { results: product }.to_json
  end
  
end

run App
