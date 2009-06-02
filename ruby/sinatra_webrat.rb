require "rubygems"
require 'webrat'
require 'sinatra'
require 'test/unit'

Webrat.configure do |config|
  config.mode = :sinatra
end

class Test::Unit::TestCase
  include Webrat::Methods
  include Webrat::Matchers

  Webrat::Methods.delegate_to_session :response_code, :response_body
end

class MyClassicAppTest < Test::Unit::TestCase
  def test_visits_pages
    get '/' do 
      "<p>Hello world</p>"
    end
    visit("/")
    puts response_body
    assert_contain("Hello world")
  end  
end

