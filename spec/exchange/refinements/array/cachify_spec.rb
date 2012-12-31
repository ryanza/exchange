require 'spec_helper'

describe "Exchange::Cachify" do
  using Exchange::Cachify
  
  describe "cachify" do
    subject { ["hello", 23, :world ] }
    it "should marshal dump" do
      subject.cachify.should == Marshal.dump(subject)
    end
  end
  
end