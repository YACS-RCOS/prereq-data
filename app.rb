require 'sinatra'
require 'sinatra/json'
require 'sinatra/cross_origin'

before do
	content_type :json    
	headers('Access-Control-Allow-Origin' => '*', 
            'Access-Control-Allow-Methods' => ['OPTIONS', 'GET', 'POST'])  
end

set :protection, false
set :bind, '0.0.0.0'
set :port, 3100

get '/prereq/CSCI' do
    File.read('./public/prereq_data.json')
end
