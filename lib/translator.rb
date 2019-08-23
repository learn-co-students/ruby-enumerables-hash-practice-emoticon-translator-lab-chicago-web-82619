# require modules here
require "yaml"

def load_library(filepath)
  emoticons = YAML.load_file(filepath)
  translator = {"get_meaning": {}, "get_emoticon": {}}
  emoticons.reduce(translator) { |translator, (meaning, emotes)|
    emote = emotes[0]
    j_emote = emotes[1]
    translator[:get_meaning][j_emote] = meaning
    translator[:get_emoticon][emote] = j_emote
    translator
  }
end

def get_japanese_emoticon(filepath, emoticon)
  translator = load_library(filepath)
  result = translator[:get_emoticon][emoticon] 
  result ? result : "Sorry, that emoticon was not found" 
end

def get_english_meaning(filepath, emoticon)
  translator = load_library(filepath)
  result = translator[:get_meaning][emoticon]
  result ? result : "Sorry, that emoticon was not found"
end