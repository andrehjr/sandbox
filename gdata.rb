require "rubygems"
require "httparty"
require "pp"

class Something
  include HTTParty
  
  format :xml
end


data = Something.get("http://gdata.youtube.com/feeds/api/standardfeeds/top_rated")

data["feed"]["entry"].each do |entry|
  puts entry
  puts "---===---------"
end
