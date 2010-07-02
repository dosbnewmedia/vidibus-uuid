$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))
require "vidibus-uuid"
require "spec"
require "mongoid"

Mongoid.configure do |config|
  name = "vidibus_uuid_test"
  host = "localhost"
  config.master = Mongo::Connection.new.db(name)
end

Spec::Runner.configure do |config|  
  config.mock_with :rspec
  config.before(:each) do  
    Mongoid.master.collections.select { |c| c.name != 'system.indexes' }.each(&:drop)  
  end
end