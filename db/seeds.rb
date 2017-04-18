require 'active_record'
require 'pg'
require_relative 'connection'
require_relative '../models/pokemon'
require_relative '../models/trainer'

Pokemon.destroy_all
Trainer.destroy_all
Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg")
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg")
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg")
Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg")
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg")
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg")
Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg")
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg")


Trainer.create(name: "Spongebob", photo_url: "http://static.tvgcdn.net/mediabin/galleries/shows/s_z/si_sp/spongebob_squarepants/season1/sponge-bob-square-pants11.jpg", sound: "../sounds/coolest-party-eva.mp3")
Trainer.create(name: "Bruce Lee", photo_url: "http://www.pngall.com/wp-content/uploads/2016/05/Bruce-Lee-PNG-Picture.png", sound: "../sounds/fighting-scream.mp3")
Trainer.create(name: "Darth Vador", photo_url: "http://assets2.ignimgs.com/2015/08/06/darth-vader-crossed-arms-1280jpg-88461e1280wjpg-67c0c2_1280w.jpg", sound: "../sounds/i-am-your-father.mp3")
