# Helper file to setup our tests/specs for this program.
# NO NEED TO EDIT

require 'pry'
require 'rspec'

def safely_require(file)
  require_relative file
rescue LoadError
  # ignore
end

# make sure these files are in sequence of use or it will crash!
safely_require 'contact'
safely_require 'application'


RSpec.configure do |config|
  config.color_enabled = true
  config.formatter = :documentation
end
