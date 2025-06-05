require "sinatra"
require "sinatra/reloader"

get("/") do
 erb :index
end

get("/square/new") do
    @sq_new_number = params[:sq_new_number].to_f
    @squared = @sq_new_number * @sq_new_number
  erb :square
end

get("/square/results") do
    @sq_new_number = params[:sq_new_number].to_f
    @squared = @sq_new_number * @sq_new_number
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
