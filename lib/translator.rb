# require modules here
require "pry"
require "yaml"

# faces = YAML.load_file('emoticons.yml')

def load_library(emoticons)
  faces_yml = YAML.load(File.read("emoticons.yml"))
  # binding.pry

end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end