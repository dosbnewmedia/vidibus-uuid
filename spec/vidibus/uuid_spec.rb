require "spec_helper"

describe "Vidibus::UUID" do
  it "should return a compact UUID" do
    uuid = Vidibus::Uuid.generate
    uuid.length.should eql(32)
  end
end
