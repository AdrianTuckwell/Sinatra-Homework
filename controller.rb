require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require 'json'

#----- Route for welcome page http://localhost:4567/
get("/") do
  erb(:welcome)
end
#----- Route for address page http://localhost:4567/address
get '/address' do
  content_type(:json)

  address = {
              address:  '3 ARGYLE HOUSE',
              building: 'CODEBASE',
              postcode: 'e13 zqf',
              phone:    '0131558030'
            }
  return address.to_json
end