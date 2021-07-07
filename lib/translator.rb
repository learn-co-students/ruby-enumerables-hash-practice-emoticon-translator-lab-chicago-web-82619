# require modules here
require 'yaml'
def load_library(path)
  # code goes here
  emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(path).each do |meaning, emote|
     emoticons["get_meaning"][emote[1]] = meaning
     emoticons["get_emoticon"][emote[0]] = emote[1]
  end
  emoticons
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  file = load_library(path)
  if file["get_emoticon"][emoticon]
    return file["get_emoticon"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  # code goes 
  file = load_library(path)
  if file["get_meaning"][emoticon]
    return file["get_meaning"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end