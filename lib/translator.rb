# require modules here
require "pry"
require "yaml"

# emoticons = YAML.load_file('emoticons.yml')

def load_library(emoticons)
  faces = YAML.load_file('emoticons.yml')
  binding.pry
  # code goes here
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end