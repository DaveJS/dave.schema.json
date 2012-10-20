require 'rubygems'
require 'json'
require 'jsonschema'
schema = File.open(File.join(File.dirname(__FILE__), "hal.json"), "rb"){|f| JSON.parse(f.read)}
data   = File.open(File.join(File.dirname(__FILE__), "test.json"), "rb"){|f| JSON.parse(f.read)}
JSON::Schema.validate(data, schema)
