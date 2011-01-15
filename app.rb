require 'rubygems'
require 'sinatra'
require "sinatra/jsonp"
require "json"
require "culturegrid"

set :public, File.dirname(__FILE__) + '/public'

get '/' do
  haml :home
end

get '/parse' do
  content_type :json
  jsonp CultureGrid.search(params)
end