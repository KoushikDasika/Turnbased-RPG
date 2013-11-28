require 'bundler'

Bundler.setup(:default)
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/models/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/controllers/*.rb'].each {|file| require file }
