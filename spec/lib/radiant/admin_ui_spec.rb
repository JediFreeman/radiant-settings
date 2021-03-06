require 'spec_helper'
require File.dirname(__FILE__) + "/../../../settings_extension"

describe Radiant::AdminUI do
  before :each do
    @admin = Radiant::AdminUI.instance
  end
  
  it "should have a settings Region Set" do
    @admin.should respond_to(:settings)
  end
  
  it "should should have regions for the 'index'" do
    @admin.settings.index.should_not be_nil
  end
  
  it "should have 'list' region in the 'index main' region" do
    @admin.settings.index.main.should == %w{list}
  end
end