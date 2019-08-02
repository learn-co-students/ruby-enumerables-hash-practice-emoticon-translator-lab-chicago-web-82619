# require modules here
require "pry"
require "yaml"
  # faces = YAML.load_file(YAML.load(File.read("emoticons.yml")))

def load_library(emoticons)
    loaded_emoticons = YAML.load_file(emoticons)
    sorted = {}
    loaded_emoticons.each do |word, symbols|
      sorted = {
        get_meaning: word,
        get_emoticon: symbols
      }
binding.pry

    end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end