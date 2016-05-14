require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'sinatra/activerecord'

get '/' do
  "Movie Night! by Dafin, Danny and Tamlyn (with a large amount of help from Lorin)"
end