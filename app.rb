require "sinatra"
require "sinatra/reloader"

get("/") do
 erb :index
end

get("/square/new") do
    @square_new_number = params[:square_new_number].to_i
    @squared = @square_new_number * @square_new_number
  erb :square
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
