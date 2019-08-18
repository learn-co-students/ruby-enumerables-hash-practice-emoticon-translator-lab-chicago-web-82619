require "yaml"


def load_library(filepath)
  emoticons = YAML.load_file(filepath)

  hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }

  emoticons.each do |key, value|
    hash["get_meaning"][value[1]] = key
    hash["get_emoticon"][value[0]] = emoticons[key][1]
  end

  hash
end

def get_japanese_emoticon(filepath, emoticon)
  japanese_emoticon = load_library(filepath)["get_emoticon"][emoticon]
  japanese_emoticon ? japanese_emoticon : "Sorry, that emoticon was not found"
end

def get_english_meaning(filepath, emoticon)
  meaning = load_library(filepath)["get_meaning"][emoticon]
  meaning ? meaning : "Sorry, that emoticon was not found"
end