require 'rubygems'
require 'factory_girl'


class User 
  attr_accessor :first_name, :last_name, :email
  #has_many :posts, :foreign_key => 'author_id'
end


class User2
  attr_accessor :name,:pass

  def save!
    puts "savin' it ;)"
  end
end
Factory.define :user2 do |f|
  f.name "ndr"
  f.pass "aff"
end

Factory.define :user, :class => 'user' do |f|
  f.first_name 'Jimi'
  f.last_name  'Hendrix'
  f.admin       false
  f.email {|a| "#{a.first_name}.#{a.last_name}@example.com".downcase }
end

Factory.sequence :test do |n|
  "test#{n}"
end  

@stub = Factory.stub(:user, :first_name => 'Bill')


#@test = Factory(:l, :mao => "lao")
#10.times { puts Factory.next(:test)}

#p @test
p @stub