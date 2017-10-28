require 'rubygems'
require 'sinatra'
require 'net/http'

get '/' do
	env['HTTP_PERMISO']=='soy-un-token-secreto' ?  "Si lo logramos!" :  "Sin Permiso"
end



=begin

before do
  headers "HTTP_AUTH" => "permiso"
end

get '/' do
  if headers['HTTP_AUTH'] == "soy-un-token-secreto"
    "Si lo logramos!"
  else
    "Sin Permiso"
  end
end
How do I use HTTP authentication? SINATRA
use Rack::Auth::Basic, "Sin Permiso" do |permiso|
  permiso == 'soy-un-token-secreto'
end

headers['HTTP_AUTH'] == "test"
headers['Cache-Control'] = 'public, max-age=600'
puts headers # show headers on this request

=end
