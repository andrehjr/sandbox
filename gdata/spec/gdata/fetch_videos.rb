require File.join(File.dirname(__FILE__), "/../spec_helper")
require File.join(File.dirname(__FILE__), "/../mock_web")

describe "Youtube Video" do
  it "should have results" do
    parser = Parser.new
    parser.text = Client.get("http://gdata.youtube.com/feeds/api/standardfeeds/top_rated")  
    videos = parser.parse
    
    videos.should_not be_empty
  end
end
