# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'rspec', :cli => "--color --format nested --fail-fast --drb", :keep_failed => true do
  watch(%r{^app/(.+)/(.+)\.rb$}) { |m| "spec/#{m[1]}/#{m[2]}_spec.rb"}
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
  watch('environment.rb')  { "environment" }
end

