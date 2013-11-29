require 'bundler'

Bundler.setup(:default)
Bundler.require(:default)

Dir[File.dirname(__FILE__) + 'app/models/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + 'app/controllers/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + 'app/views/*.rb'].each {|file| require file }
