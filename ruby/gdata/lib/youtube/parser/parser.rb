class Parser
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