# require modules here
require "pry"
require "yaml"
  # faces = YAML.load_file(YAML.load(File.read("emoticons.yml")))

def load_library(emoticons)
    loaded_emoticons = YAML.load_file(emoticons)
    binding.pry
    sorted_emoticons = {}
    loaded_emoticons.each do |get_meaning, get_emoticon|
          binding.pry

      sorted_emoticons[get_meaning] = {}
    end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end