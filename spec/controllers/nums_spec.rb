require File.join(File.dirname(__FILE__), "..", 'spec_helper.rb')

describe Nums, "index action" do
  before(:each) do
    dispatch_to(Nums, :index)
  end
end