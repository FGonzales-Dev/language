require "language/version"
require "yaml"

module Language
  
  YML_LANGUAGE = YAML.load_file(File.join(File.dirname(__FILE__),"language", "yml", "language.yml"))

  LANGUAGE = YML_LANGUAGE.map { |_, v| v }.flatten.compact.sort

end
