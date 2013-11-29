require 'bundler'

Bundler.setup(:default)
Bundler.require(:default)

["models", "controllers", "views"].each do |part|
  Dir.entries("app/#{part}/").drop(2).map { |x| require("./app/#{part}/" + x) }
end

require 'yaml'
