require "sinatra"
require "sinatra/reloader" if development?
require "sinatra/content_for"
require "tilt/erubis"

configure do
  enable :sessions
  set :session_secret, 'secret'
# set :erb, :escape_html => true
end

before do
  # Run before each route is processed.
end

helpers do
  # Helper functions (visible in templates).
end

get "/" do
  erb :bcf_erb_file, layout: :layout
end

not_found do
  "Page not found!"
end
