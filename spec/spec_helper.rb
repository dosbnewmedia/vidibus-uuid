$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))
require "simplecov"
SimpleCov.start

require "rubygems"
require "mongoid"
require "rspec"
require "vidibus-uuid"

Mongoid.configure do |config|
  config.connect_to('vidibus-uuid_test')
end

RSpec.configure do |config|
  config.after :suite do
    Mongoid::Sessions.default.collections.select do |c|
      c.name !~ /system/
    end.each(&:drop)
  end
end

I18n.load_path += Dir[File.join('config', 'locales', '**', '*.{rb,yml}')]
