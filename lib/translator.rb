# require modules here
require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  lib_hash = {}

  emoticons.each do |key, value|
    lib_hash[key] = {}
    lib_hash[key][:english] = value[0]
    lib_hash[key][:japanese] = value[1]
  end
  lib_hash
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  emoticon = library.keys.find do |key|
    library[key][:english] == emoticon
  end
  emoticon ? library[emoticon][:japanese] : "Sorry, that emoticon was not found"
  # code goes here
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  emoticon = library.keys.find do |key|
    library[key][:japanese] == emoticon
  end
  emoticon ? emoticon : "Sorry, that emoticon was not found"
  # code goes here
end
