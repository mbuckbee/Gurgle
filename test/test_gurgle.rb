require 'helper'

class TestGurgle < Test::Unit::TestCase
  
  should "allow valid urls" do

    [
      "http://github.com",
      "http://reddit.com",
      "http://news.ycombinator.com"
      ].each do |url|
        
        assert Gurgle.shorten(url)
        
      end

  end

  # This test is more difficult than it seems because goo.gl will return a 
  # shortened URL for almost anything. "1" and "url" are legitimate
  should "not allow invalid urls" do
    
    [nil, "", " "].each do |url|

      assert_nil Gurgle.shorten(url)
      
    end
    
    
  end
  
  
end
