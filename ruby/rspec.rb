require 'rubygems'
require 'spec'

class User
  attr_accessor :name, :login

#  def logged?
#    true
#  end
end

#Using Matchers DSL
#create is deprecated, use define instead
Spec::Matchers.define :be_logged do 
  match do |user|
    user.logged?
  end

  failure_message_for_should do |player|
    "Is not logged"
  end
  failure_message_for_should_not do |player|
    "Shouldn't be logged"
  end
  description do
    "Some description"
  end
end

#Describe creates an instance of Spec::Example::ExampleGroup
describe "user" do
  it "should be logged" do
    @user = mock("user")
    
    #p @user.methods.sort
    #@user.should_receive(:login).with(:lol)
    #@user.login :lol
    @user.should_receive(:logged?).and_return(true)
    @user.should be_logged 
  end
end

#Using Custom Matchers
class Zombie
  attr_accessor :name, :type
  
  def undead?
    true
  end
end

module ZombieMatchers
  class MeatEater
     def initialize(expected)
       @expected = expected
     end
     def matches?(target)
       @target = target
       @target.type.eql?(@expected)
     end
     
     def failure_message_for_should
       "expected #{@target.inspect} to be of type #{@expected}"
     end
     def failure_message_for_should_not
       "expected #{@target.inspect} not to be of type #{@expected}"
     end
  end
  
  def be_of_type?(expected)
    MeatEater.new expected
  end
end

describe "Zombies" do 
  #you can include matchers here... or in the Spec::Runner.configure.
  #include ZombieMatchers 
  
  it "should be of type meat eater" do 
    @zombie = mock("zombie")
    @zombie.should_receive(:type).and_return(:meat_eater)
    
    @zombie.should be_of_type?(:meat_eater) 
  end
end

Spec::Runner.configure do |config|
  config.include(ZombieMatchers)
end

#Run the examples
Spec::Runner.run