require 'pry'
require "yaml"

def load_library(file_path)

emoticons = YAML.load_file(file_path)
new_hash = {}
emoticons.each do |key, value|
   new_hash[key] = {}
   new_hash[key][:english] = value[0]
   new_hash[key][:japanese] = value[1]
 end
 new_hash
end

def get_japanese_emoticon(file_path, emoticon)
 emoticons = YAML.load_file(file_path)
 emoticons.each do |key, value|
   binding.pry
   if emoticons[key][0]
     puts "#{value[1]}"
   else 
     puts "Sorry, that emoticon was not found"
   #binding.pry
  end
 end
end

def get_english_meaning
  # code goes here
end









