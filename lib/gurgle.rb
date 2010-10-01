require 'net/http'
require 'uri'
require 'json'

module Gurgle

  def self.shorten(url)

    begin
      response = Net::HTTP.post_form(URI.parse('http://goo.gl/api/shorten'),{ 'url' => url })
      result = JSON.parse(response.body)
      return result['short_url']
      
    rescue Exception => e
      return nil
    end

  end

end
