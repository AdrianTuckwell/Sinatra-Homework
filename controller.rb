require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require 'json'
require_relative './models/wordformatter'

#----- Route for welcome page http://localhost:4567/
get "/" do
  erb(:welcome)
end
#----- Route for address page http://localhost:4567/address
get '/address' do
  content_type(:json)
  postcode = WordFormatter.new("e13 zqf")

  address = {
              address:  '3 ARGYLE HOUSE',
              building: 'CODEBASE',
              postcode: postcode.upcase,
              phone:    '0131558030'
            }
  return address.to_json
end

#----- Route for camel case page http://localhost:4567/camelcase
get '/camelcase/:string' do
  content_type(:json)
  phrase = WordFormatter.new(params[:string])
  return phrase.camel_case.to_json
end