# myapp.rb
require 'sinatra'

get '/' do
  'This is an echo service, try curl -d "foo1=kglob&foo2=globular" [host]:[port]'
end

post '/' do
  params.each do |k,v|
    puts "key - #{k} -- value - #{v}"
  end 
end