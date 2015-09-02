require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require_relative './models/pig_latin'

get '/' do
  @title = "Oink Oink Translator"
  erb :home
end

get '/:word' do          #get the word and call the trasnlate funciton on it

  "#{PigLatin.latin params[:word]}"
end


post '/translate' do
  @translation = PigLatin.latin params[:word]
  erb :home
  # case params[:destination].downcase
  # when 'sports' then redirect to '/sports'
  # else
  #   @error = 'Invalid page selected you moron!'
  #   erb :home
  # end
end

get '/sports' do
  @title = 'Sports'
  erb :sports
end



# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.

# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word. 