require 'rubygems'
require 'spec'

class User
  attr_accessor :name, :login
end

Spec::Matchers.create :be_in_zone do |zone|
     match do |player|
  player.in_zone?(zone)
  end
  failure_message_for_should do |player|
  # generate and return the appropriate string.
  end
  failure_message_for_should_not do |player|
  # generate and return the appropriate string.
  end
  description do
  # generate and return the appropriate string.
  end
end

describe "something" do
  it "should" do
    @user = mock("user")
    
    p @user.methods.sort
    @user.should_receive(:login).with(:lol)
    @user.login :lol
  end
  
  it "should do something" do 
    4.should == 4
  end
end

Spec::Runner.run