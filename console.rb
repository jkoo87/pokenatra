require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'
require_relative './db/connection'
require_relative './models/pokemon'
require_relative './models/trainer'

binding.pry

puts "this line fixes binding.pry bug"
