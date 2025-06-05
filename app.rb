require "sinatra"
require "sinatra/reloader"

get("/") do
 erb :index
end

get("/square/new") do
  erb :index
end

get("/square_root/new") do
  erb :index
end

get("/payment/new") do
  erb :index
end

get("/random/new") do
  erb :index
end
