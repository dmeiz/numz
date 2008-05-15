require File.join( File.dirname(__FILE__), "..", "spec_helper" )

describe Unit do

  before(:each) do
    @unit = Unit.new
  end

  it "should validate" do
    @unit.valid?.should == false

    @unit.name = "dollars and cents"
    @unit.valid?.should == false

    @unit.name = "dollars"
    @unit.valid?.should == true
  end

end
