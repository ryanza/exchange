require 'spec_helper'

describe "Exchange::Cachify" do
  
  describe "cachify" do
    subject { :blu }
    it "should marshal dump" do
      subject.cachify.should == "\x04\b:\bblu"
    end
  end
  
end