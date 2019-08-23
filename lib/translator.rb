require "yaml"

def load_library(path)
  emoticons = YAML.load_file(path)
  
  #puts emoticons
  
  result = {}
  
  result["get_meaning"] = {}
  result["get_emoticon"] = {}
  
  emoticons.keys.each do |item|
    result["get_meaning"][emoticons[item][1]] = item
    result["get_emoticon"][emoticons[item][0]] = emoticons[item][1]
  end
  

  
  return result
end

def get_japanese_emoticon(path, english_emoticon)
  emoticon_hash = load_library(path)
  
  japanese_emoticon = emoticon_hash["get_emoticon"][english_emoticon]
  
  if japanese_emoticon == nil
    return "Sorry, that emoticon was not found"
  else
    return japanese_emoticon
  end
  
end

def get_english_meaning(path, japanese_emoticon)
  emoticon_hash = load_library(path)
  
  english_meaning = emoticon_hash["get_meaning"][japanese_emoticon]
  
  if english_meaning == nil
    return "Sorry, that emoticon was not found"
  else
    return english_meaning
  end
end