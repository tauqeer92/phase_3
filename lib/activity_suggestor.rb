require 'net/http'
require 'json'

class ActivitySuggester
    
  def initialize(requester)
    @requester = requester
  end
  def suggest
    response = make_request_to_api
    return "Why not: #{response["activity"]}"
  end

  private
  def make_request_to_api
    text_response = @requester.get("www.boredapi.com", "/api/activity")
    return JSON.parse(text_response)
  end
end