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
   if emoticons[key][0] == emoticon
     return emoticons[key][1]
   end
  return "Sorry, that emoticon was not found"
   
  end
 end
 
end

def get_english_meaning
  # code goes here
end









