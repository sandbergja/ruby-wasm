# frozen_string_literal: true

require 'json'
require 'net/http'

# The best class there ever was!
class MyClass
  def initialize
    fetch_oaks
  end

  def to_s
    items = @data.map { |item| "<li><a href='#{item['uri']}'>#{item['place_guess']}</a></li>" }
    "<ul>#{items.join}</ul>"
  end

  private

  def fetch_oaks
    uri = URI('http://www.inaturalist.org/observations.json?taxon_name=quercus&quality_grade=research')
    Net::HTTP.start(uri.host, uri.port) do |http|
      request = Net::HTTP::Get.new uri
      response = http.request request
      @data = JSON.parse(response.body)
    end
  end
end
