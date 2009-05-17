require 'rubygems'
require 'fakeweb'
require 'net/http'

FakeWeb.register_uri(:get, "http://wtf.com/test", :string => "WTF?!?!")

puts Net::HTTP.get(URI.parse("http://wtf.com/test"))  