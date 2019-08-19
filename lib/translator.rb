# require modules here
require "yaml"
require "pry"

def load_library(file)
  # code goes here
  emoticons = YAML.load_file(file)
  hash = {:get_meaning => {}, :get_emoticon => {}}
  emoticons.each do |meaning, emotes|
    hash[:get_meaning][emotes[1]] = meaning
    hash[:get_emoticon][emotes[0]] = emotes[1]
  end
  hash
end

def get_japanese_emoticon(file, emote)
  # code goes here
  emoticons = load_library(file)
  if !emoticons[:get_emoticon][emote]
    return "Sorry, that emoticon was not found"
  else
    jp_emote = emoticons[:get_emoticon][emote]
  end
  jp_emote
end

def get_english_meaning(file, emote)
  # code goes here
  emoticons = load_library(file)
  if !emoticons[:get_meaning][emote]
    return "Sorry, that emoticon was not found"
  else
    en_emote = emoticons[:get_meaning][emote]
  end
  en_emote
end