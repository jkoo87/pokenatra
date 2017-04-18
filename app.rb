require 'sinatra'
require 'sinatra/reloader'
# require 'pry'
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

get '/trainers/trainer:id/catch_pokemon' do
  @pokemon = Pokemon.all
  @trainer = Trainer.find(params[:id])
  erb :"trainers/catch"
end





get '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  @pokemon = Pokemon.all
    if params[:pokemon]
    @catched_pokemon = Pokemon.find(params[:pokemon])
    @catched_pokemon.trainer = @trainer
    @catched_pokemon.save
    end
    # binding.pry
  erb :"trainers/show"
end





get '/pokemons/new' do
  @pokemon = Pokemon.all
  erb :"pokemons/new"
end


post '/pokemons' do
  @pokemons = Pokemon.create(name: params[:name], cp: params[:cp], poke_type: params[:poke_type], img_url: params[:img_url])
  redirect "/pokemons/view?id=#{@pokemons.id}"
end

put '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update(params[:pokemon])
  redirect("/pokemons/view?id=#{@pokemon.id}")
end

get '/pokemons' do
  @pokemon = Pokemon.all
  erb :"pokemons/index"
end


get '/pokemons/view' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/show"
end

get '/pokemons/:id/edit' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/edit"
end



delete '/pokemons/:id/delete' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect('/pokemons')
end
