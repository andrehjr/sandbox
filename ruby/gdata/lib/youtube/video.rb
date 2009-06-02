require "httparty"
require 'parser/parser'

class Video 
  attr_accessor :id, :author, :title, :ways 
  attr_writer :links

  
  def relatives(max = 10)
    @relatives ||= fetch_relatives(max)
  end
  
  def links=(data = [])
    @ways = {}
    types = %w(alternate related mobile)

    data.each do |link|
      types.each do |type|
        @ways[type.to_sym] = link["href"] if link["rel"] =~ /#{type}/
      end
    end
  end

  private
  def fetch_relatives(max)
    parser = Parser.new
    parser.text = Something.get("#{ways[:related]}?max-results=#{max}") 
    @relatives = parser.parse 
  end  
end