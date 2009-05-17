require 'model/playstation_3'
require 'spec'

describe PlayStation3 do
    context "setting a color" do
      it "changes the color with attr" do
        source = PlayStation3.new
        source.color = 'black'
        source.color.should eql('black')
        source.color.should_not eql('white')
      end
      
      it "changes the version" do 
        ps3 = PlayStation3.new
        ps3.version = 1.2
        
        ps3.version.should eql(1.2)
        
      end
    end
  end
