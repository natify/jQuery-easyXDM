require 'sinatra'
require 'json'

before do
  headers 'Access-Control-Allow-Origin' => request.env['HTTP_ORIGIN'] || '*',
    'Access-Control-Allow-Methods' => 'GET, POST, HEAD, OPTIONS',
    'Access-Control-Allow-Credentials' => 'true',
    'Access-Control-Max-Age' => '1728000',
    'Access-Control-Allow-Headers' => 'X-Requested-With'
end
 
get '/' do
  redirect '/index.html'
end

get '/test.js' do
  content_type :json
  {"message" => "successful server response", "foo" => params[:foo]}.to_json
end
