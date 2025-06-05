require "sinatra"
require "sinatra/reloader"

get("/") do
  @sq_new_number = params[:sq_new_number].to_f
    @squared = @sq_new_number * @sq_new_number
 erb :square
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
    @sq_root_new_number = params[:sq_root_new_number].to_f
    @sq_root = Math.sqrt(@sq_root_new_number)
  erb :square_root
end

get("/square_root/results") do
    @sq_root_new_number = params[:sq_root_new_number].to_f
    @sq_root = Math.sqrt(@sq_root_new_number)
  erb :square_root
end

get("/payment/new") do
    @APR_value = params[:APR_value].to_f
    @years_value = params[:years_value].to_i
    @principal_value = params[:principal_value].to_f
    @payment = (@APR_value*(@principal_value))/(1-(1+@APR_value)**-(@years_value*12))
  erb :payment
end

get("/payment/results") do
    @APR_value = params[:APR_value].to_f
    @years_value = params[:years_value].to_i
    @principal_value = params[:principal_value].to_f
    @payment = ((@APR_value/100/12)*(@principal_value))/(1-(1+(@APR_value/100/12))**-(@years_value*12))
  erb :payment
end

get("/random/new") do
  erb :index
end
