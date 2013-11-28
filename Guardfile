# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'rspec', :cli => "--color --format nested --fail-fast --drb", :keep_failed => true do
  watch(%r{^models/(.+)\.rb$}) { |m| "spec/models/#{m[1]}_spec.rb"}
  watch(%r{^controllers/(.+)\.rb$}) { |m| "spec/controllers/#{m[1]}_spec.rb"}
  watch(%r{^views/(.+)\.rb$}) { |m| "spec/views/#{m[1]}_spec.rb"}
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
  watch('db/schema.rb')  { "schema" }
  watch('environment.rb')  { "environment" }
end

