require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative './db/connection'

require_relative './models/pokemon'
require_relative './models/trainer'

get '/' do
  erb :"home"
end


get '/trainers' do
  @trainers = Trainer.all
  erb :"trainers/index"
end

get '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  erb :"trainers/show"
end





get '/new' do
  @pokemon = Pokemon.all
  erb :"pokemons/new"
end

post '/pokemons' do
  @pokemons = Pokemon.create(name: params[:name], cp: params[:cp], poke_type: params[:poke_type], img_url: params[:img_url])
  redirect "/pokemons/view?id=#{@pokemons.id}"
end

get '/pokemons' do
  @pokemon = Pokemon.all
  erb :"pokemons/index"
end


get '/pokemons/view' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/show"
end
