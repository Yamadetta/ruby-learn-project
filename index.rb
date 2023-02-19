require "yaml"



data = YAML.safe_load_file('./data/test.yml')

puts data.inspect