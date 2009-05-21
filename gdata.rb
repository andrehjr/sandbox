require "rubygems"
require "httparty"
require "pp"

class Something
  include HTTParty
  
  format :html
end

class VideoParser
  attr_writer :text
  
  def parse
    videos = []
    @text["feed"]["entry"].each do |entry|
      video = Video.new
      video.author = entry["author"]["name"]
      video.title = entry["title"]
      video.id = entry["id"]
      video.links = entry["link"]

      videos << video
    end
    videos
  end
end

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
    parser = VideoParser.new
    parser.text = Something.get("#{ways[:related]}?max-results=#{max}") 
    @relatives = parser.parse 
  end  
end

data = Something.get("http://gdata.youtube.com/feeds/api/standardfeeds/top_rated")

puts data.inspect
videos = []
data["feed"]["entry"].each do |entry|
  video = Video.new
  video.author = entry["author"]["name"]
  video.title = entry["title"]
  video.id = entry["id"]
  video.links = entry["link"]
  
  videos << video
end

videos.each do |vids|
  puts vids.ways[:alternate]  
  puts vids.ways[:related]
  
  vids.relatives(2).each do |rel|
    puts "Relacionados --> "
    puts rel.ways[:alternate]  
    puts rel.ways[:related]
  end
end

