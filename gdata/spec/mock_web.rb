require 'fakeweb'
require 'net/http'

FakeWeb.register_uri(:get, "http://gdata.youtube.com/feeds/api/standardfeeds/top_rated", :string => <<-EOF
<?xml version='1.0' encoding='UTF-8'?>
<feed xmlns='http://www.w3.org/2005/Atom' 
  xmlns:media='http://search.yahoo.com/mrss/' 
xmlns:openSearch='http://a9.com/-/spec/opensearchrss/1.0/' 
xmlns:gd='http://schemas.google.com/g/2005' 
xmlns:gml='http://www.opengis.net/gml' 
xmlns:yt='http://gdata.youtube.com/schemas/2007' 
xmlns:georss='http://www.georss.org/georss'>
<id>http://gdata.youtube.com/feeds/api/standardfeeds/top_rated</id>
<updated>2009-05-20T06:20:07.000-07:00</updated>
<category scheme='http://schemas.google.com/g/2005#kind' 
  term='http://gdata.youtube.com/schemas/2007#video'/>
<title type='text'>Top Rated</title>
<logo>http://www.youtube.com/img/pic_youtubelogo_123x63.gif</logo>
<link rel='alternate' type='text/html' href='http://www.youtube.com/browse?s=tr'/>
<link rel='http://schemas.google.com/g/2005#feed' type='application/atom+xml' href='http://gdata.youtube.com/feeds/api/standardfeeds/top_rated'/>
<link rel='http://schemas.google.com/g/2005#batch' type='application/atom+xml' href='http://gdata.youtube.com/feeds/api/standardfeeds/top_rated/batch'/>
<link rel='self' type='application/atom+xml' href='http://gdata.youtube.com/feeds/api/standardfeeds/top_rated?start-index=1&amp;max-results=25'/>
<link rel='next' type='application/atom+xml' href='http://gdata.youtube.com/feeds/api/standardfeeds/top_rated?start-index=26&amp;max-results=25'/>
<author>
  <name>YouTube</name>
  <uri>http://www.youtube.com/</uri>
</author>
<generator version='2.0' uri='http://gdata.youtube.com/'>YouTube data API</generator>
<openSearch:totalResults>99</openSearch:totalResults>
<openSearch:startIndex>1</openSearch:startIndex>
<openSearch:itemsPerPage>25</openSearch:itemsPerPage>
<entry>
  <id>http://gdata.youtube.com/feeds/api/videos/-66hOIXgHDo</id>
  <published>2009-05-08T01:14:19.000Z</published>
  <updated>2009-05-20T15:50:52.000Z</updated>
  <category scheme='http://gdata.youtube.com/schemas/2007/keywords.cat' term='college'/>
  <category scheme='http://gdata.youtube.com/schemas/2007/categories.cat' term='Entertainment' label='Entertainment'/>
  <category scheme='http://gdata.youtube.com/schemas/2007/keywords.cat' term='floormates'/>
  <category scheme='http://schemas.google.com/g/2005#kind' term='http://gdata.youtube.com/schemas/2007#video'/>
  <category scheme='http://gdata.youtube.com/schemas/2007/keywords.cat' term='kevjumba'/>
  <category scheme='http://gdata.youtube.com/schemas/2007/keywords.cat' term='scaring'/>
  <category scheme='http://gdata.youtube.com/schemas/2007/keywords.cat' term='dorm'/>
  
  <category scheme='http://gdata.youtube.com/schemas/2007/keywords.cat' term='jumbafund'/>
  <title type='text'>Scaring Floormates (Ep. 2)</title>
  <content type='text'>Follow me on Twitter: 
  http://www.twitter.com/kevjumba\r\n\r\nI was scared by a floormate which sparked 
  an interest in scaring as many floormates as I can, including our Residential Advisor. \r\nThis distracted me greatly from College schoolwork, but it was way too much fun.\r\n\r\n****\r\nI want to thank everyone that is part of JumbaFund and for those that have subscribed. In just one week after I started JumbaFund, the channel earns just around 30 dollars each day for charity. In the next few weeks I'm hoping to multiply this number by at least five, so let's get the word out to make this happen! I'll keep you guys posted.\r\n\r\n-Kev</content><link rel='alternate' type='text/html' href='http://www.youtube.com/watch?v=-66hOIXgHDo'/><link rel='http://gdata.youtube.com/schemas/2007#video.responses' type='application/atom+xml' href='http://gdata.youtube.com/feeds/api/videos/-66hOIXgHDo/responses'/><link rel='http://gdata.youtube.com/schemas/2007#video.related' type='application/atom+xml' href='http://gdata.youtube.com/feeds/api/videos/-66hOIXgHDo/related'/><link rel='http://gdata.youtube.com/schemas/2007#mobile' type='text/html' href='http://m.youtube.com/details?v=-66hOIXgHDo'/><link rel='self' type='application/atom+xml' href='http://gdata.youtube.com/feeds/api/standardfeeds/top_rated/v/-66hOIXgHDo'/><author><name>JumbaFund</name><uri>http://gdata.youtube.com/feeds/api/users/jumbafund</uri></author><gd:comments><gd:feedLink href='http://gdata.youtube.com/feeds/api/videos/-66hOIXgHDo/comments' countHint='3627'/></gd:comments><media:group><media:category label='Entertainment' scheme='http://gdata.youtube.com/schemas/2007/categories.cat'>Entertainment</media:category><media:content url='http://www.youtube.com/v/-66hOIXgHDo&amp;f=standard&amp;app=youtube_gdata' type='application/x-shockwave-flash' medium='video' isDefault='true' expression='full' duration='339' yt:format='5'/><media:content url='rtsp://rtsp2.youtube.com/CiQLENy73wIaGwk6HOCFOKGu-xMYDSANFEgGUghzdGFuZGFyZAw=/0/0/0/video.3gp' type='video/3gpp' medium='video' expression='full' duration='339' yt:format='1'/><media:content url='rtsp://rtsp2.youtube.com/CiQLENy73wIaGwk6HOCFOKGu-xMYESARFEgGUghzdGFuZGFyZAw=/0/0/0/video.3gp' type='video/3gpp' medium='video' expression='full' duration='339' yt:format='6'/><media:description type='plain'>Follow me on Twitter: http://www.twitter.com/kevjumba\r\n\r\nI was scared by a floormate which sparked an interest in scaring as many floormates as I can, 
  including our Residential Advisor. \r\nThis distracted me greatly from College 
  schoolwork, but it was way too much fun.\r\n\r\n****\r\nI want to thank everyone that is part of JumbaFund and for those that have subscribed. In just one week after I started JumbaFund, the channel earns just around 30 dollars each day for charity. In the next few weeks I'm hoping to multiply this number by at least five, so let's get the word out to make this happen! I'll keep you guys posted.\r\n\r\n-Kev</media:description>
  <media:keywords>kevjumba, jumbafund, scaring, floormates, college, dorm</media:keywords>
  <media:player url='http://www.youtube.com/watch?v=-66hOIXgHDo'/>
  <media:thumbnail url='http://i.ytimg.com/vi/-66hOIXgHDo/2.jpg' height='90' width='120' time='00:02:49.500'/>
  <media:thumbnail url='http://i.ytimg.com/vi/-66hOIXgHDo/1.jpg' height='90' width='120' time='00:01:24.750'/>
  <media:thumbnail url='http://i.ytimg.com/vi/-66hOIXgHDo/3.jpg' height='90' width='120' time='00:04:14.250'/>
  <media:thumbnail url='http://i.ytimg.com/vi/-66hOIXgHDo/0.jpg' height='240' width='320' time='00:02:49.500'/>
  <media:title type='plain'>Scaring Floormates (Ep. 2)</media:title>
  <yt:duration seconds='339'/></media:group>
  <gd:rating average='4.9504585' max='5' min='1' numRaters='8397' rel='http://schemas.google.com/g/2005#overall'/>
  <yt:statistics favoriteCount='5134' viewCount='307602'/>
</entry>
<entry>
  <id>http://gdata.youtube.com/feeds/api/videos/-uwY3sjqYX0</id><published>2009-04-08T18:51:24.000Z</published>
  <updated>2009-05-20T15:36:16.000Z</updated><category scheme='http://gdata.youtube.com/schemas/2007/keywords.cat' term='drive'/>
  <category scheme='http://gdata.youtube.com/schemas/2007/keywords.cat' term='song'/>
  <category scheme='http://gdata.youtube.com/schemas/2007/keywords.cat' term='rap'/>
  <category scheme='http://schemas.google.com/g/2005#kind' term='http://gdata.youtube.com/schemas/2007#video'/>
  <category scheme='http://gdata.youtube.com/schemas/2007/categories.cat' term='Comedy' label='Comedy'/>
  <category scheme='http://gdata.youtube.com/schemas/2007/keywords.cat' term='through'/>
  <category scheme='http://gdata.youtube.com/schemas/2007/keywords.cat' term='fast'/>
  <category scheme='http://gdata.youtube.com/schemas/2007/keywords.cat' term='food'/>
  <category scheme='http://gdata.youtube.com/schemas/2007/keywords.cat' term='rhettandllink'/>
  <category scheme='http://gdata.youtube.com/schemas/2007/keywords.cat' term='bell'/>
  <category scheme='http://gdata.youtube.com/schemas/2007/keywords.cat' term='prank'/>
  <category scheme='http://gdata.youtube.com/schemas/2007/keywords.cat' term='taco'/>
  <category scheme='http://gdata.youtube.com/schemas/2007/keywords.cat' term='freestyle'/>
  <title type='text'>Fast Food Folk Song (at the Taco Bell Drive-Thru)</title>
  <content type='text'>
    Next time you're r cream \r\nIt\312\274s a cylindrically shaped seasoned beef dream. \r\nA taquito. An enchirito. Some cinnamon twists. \r\nA chicken border bowl.  Are you gettin\312\274 all this? \r\n\r\nAnd you know that nothing beats a \r\nhmmm, mmmm...Mexican Pizza... \r\nWe\312\274ll take two of those, but please hold the diced tomatoes. \r\nAnd I admit, I\312\274ve always felt, \r\nlike I\312\274m in love with the meximelt. \r\nMake mine with a little extra love, and think of me... \r\nas the cheese drops from your Taco Bell glove. \r\n and that\312\274s it.  \r\n\r\nNo! I\312\274m not done...I\312\274ll also take a... \r\n\r\nDouble-decker taco cause I\312\274m feeling wild \r\nAnd make my sauce Fire. Uh, he\312\274ll take mild. \r\nand we\312\274ll take two Mt. Dew Baja blasts \r\nfor a chance at 25 dollars cash \r\nI\312\274m told there\312\274s a winner for every 5 minutes \r\nI\312\274m stealing your online code if you win it. \r\nWhy would you do that? You owe me 25 bones \r\nI owe you 5.  Plus interest--it was a loan. \r\nAnd I think we\312\274ll be satis\357\254\201ed, if we get some mexican rice on the side. \r\nAnd that\312\274s it.
  </content>
  <link rel='alternate' type='text/html' href='http://www.youtube.com/watch?v=-uwY3sjqYX0'/>
  <link rel='http://gdata.youtube.com/schemas/2007#video.responses' type='application/atom+xml' href='http://gdata.youtube.com/feeds/api/videos/-uwY3sjqYX0/responses'/>
  <link rel='http://gdata.youtube.com/schemas/2007#video.related' type='application/atom+xml' href='http://gdata.youtube.com/feeds/api/videos/-uwY3sjqYX0/related'/>
  <link rel='http://gdata.youtube.com/schemas/2007#mobile' type='text/html' href='http://m.youtube.com/details?v=-uwY3sjqYX0'/>
  <link rel='self' type='application/atom+xml' href='http://gdata.youtube.com/feeds/api/standardfeeds/top_rated/v/-uwY3sjqYX0'/>
  <author>
    <name>RhettandLink</name>
    <uri>http://gdata.youtube.com/feeds/api/users/rhettandlink</uri>
  </author>
  <gd:comments>
    <gd:feedLink href='http://gdata.youtube.com/feeds/api/videos/-uwY3sjqYX0/comments' countHint='4255'/>
  </gd:comments>
  <yt:location>Wake Forest, NC</yt:location>
  <media:group>
    <media:category label='Comedy' scheme='http://gdata.youtube.com/schemas/2007/categories.cat'>Comedy</media:category>
    <media:content url='http://www.youtube.com/v/-uwY3sjqYX0&amp;f=standard&amp;app=youtube_gdata' type='application/x-shockwave-flash' medium='video' isDefault='true' expression='full' duration='180' yt:format='5'/>
    <media:content url='rtsp://rtsp2.youtube.com/CiQLENy73wIaGwl9YerI3hjs-hMYDSANFEgGUghzdGFuZGFyZAw=/0/0/0/video.3gp' type='video/3gpp' medium='video' expression='full' duration='180' yt:format='1'/>
    <media:content url='rtsp://rtsp2.youtube.com/CiQLENy73wIaGwl9YerI3hjs-hMYESARFEgGUghzdGFuZGFyZAw=/0/0/0/video.3gp' type='video/3gpp' medium='video' expression='full' duration='180' yt:format='6'/>
    <media:description type='plain'>
      Anything media description
    </media:description>
    <media:keywords>
      song, fast, food, freestyle, rap, taco, bell, drive, through, rhettandllink, prank
    </media:keywords>
    <media:player url='http://www.youtube.com/watch?v=-uwY3sjqYX0'/>
    <media:thumbnail url='http://i.ytimg.com/vi/-uwY3sjqYX0/2.jpg' height='90' width='120' time='00:01:30'/>
    <media:thumbnail url='http://i.ytimg.com/vi/-uwY3sjqYX0/1.jpg' height='90' width='120' time='00:00:45'/>
    <media:thumbnail url='http://i.ytimg.com/vi/-uwY3sjqYX0/3.jpg' height='90' width='120' time='00:02:15'/>
    <media:thumbnail url='http://i.ytimg.com/vi/-uwY3sjqYX0/0.jpg' height='240' width='320' time='00:01:30'/>
    <media:title type='plain'>Fast Food Folk Song (at the Taco Bell Drive-Thru)</media:title>
    <yt:duration seconds='180'/>
    </media:group>
    <gd:rating average='4.9497285' max='5' min='1' numRaters='8474' rel='http://schemas.google.com/g/2005#overall'/>
    <yt:statistics favoriteCount='14558' viewCount='652710'/>
  </entry>
  </feed>
EOF
)