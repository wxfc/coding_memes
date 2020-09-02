require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/json'
require 'sinatra/cross_origin'
require 'pg'
require 'pry'
require_relative 'models/user'
require_relative 'models/memes'

enable :sessions

configure do
  enable :cross_origin
end

before do
  response.headers['Access-Control-Allow-Origin'] = 'http://codingxmemes.surge.sh'
end

def json_body(request)
  body = OpenStruct.new(JSON.parse(request.body.read))
  request.body.rewind
  body
end

def logged_in?
  if session["user_id"]
    return true
  else
    return false
  end
end

def current_user
  return find_one_user_by_id(session["user_id"])
end

def pg_result_to_array_of_hashes(records)
  records.values.map do |value_set| 
    Hash[records.fields.zip(value_set)]
  end
end

get '/memes' do
  memes = find_all_memes
  json pg_result_to_array_of_hashes(memes)
end

get '/my-memes' do
  my_memes = find_memes_by_user_id(3)
  json pg_result_to_array_of_hashes(my_memes)
end

get '/memes/:id' do
  meme = find_one_meme_by_id(params["id"])

end

post '/memes' do
  data = json_body(request)
  create_meme(data["title"], data["meme"]) # current_user["id"])
end

delete '/memes/:id' do
  meme = find_one_meme_by_id(params["id"])
  if session["user_id"] == meme["user_id"]
    destroy_meme(params["id"])
    
  else

  end
end

get '/memes/:id/update' do
  meme = find_one_meme_by_id(params["id"])

end
# /memes/:id
patch '/memes' do
  data = json_body(request)
  # meme = find_one_meme_by_id(params["id"])
  # if session["user_id"] == meme["user_id"]
  update_meme(data["id"], data["title"], data["meme"])
    
  # else

  # end
end

post '/signup' do
  data = json_body(request)
  create_user(data["username"], data["email"], data["password"])
end

post '/session' do
  data = json_body(request)
  user = find_one_user_by_email(data["email"])
  # if user && BCrypt::Password.new(user["password_digest"]) == data["password"]
  #   session["user_id"] = user["id"]
  # else
    
  # end
end

delete '/session' do
  session["user_id"] = nil
  
end

options "*" do
  response.headers["Allow"] = "GET, PUT, POST, DELETE, OPTIONS"
  response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
  response.headers["Access-Control-Allow-Origin"] = "http://codingxmemes.surge.sh"
  200
end