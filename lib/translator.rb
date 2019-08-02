# require modules here
require "pry"
require "yaml"
  # faces = YAML.load_file(YAML.load(File.read("emoticons.yml")))

def load_library(emoticons)
    loaded_emoticons = YAML.load_file(emoticons)
    sorted = {
      get_meaning: {},
      get_emoticon: {}
    }
    loaded_emoticons.each do |word, symbols|
         sorted[:get_emoticon][symbols[0]] = symbols[1]
         sorted[:get_meaning][symbols[1]] = word
# binding.pry

    end
    sorted
end

def get_japanese_emoticon(emoticons, emoticon)
    new_lib = load_library(emoticons)
    new_lib.each do |name, props|
      props.each do |emote|
        # binding.pry
        if emote.include?(emoticon)
           trans_emote = emote[1]
        end
      end
    end
    trans_emote
end

def get_english_meaning
  # code goes here
end
