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
  
  # code goes here
end

def get_english_meaning
  # code goes here
end
