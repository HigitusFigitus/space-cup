class Apod < ApplicationRecord
  def self.get_apod_info
    apod_url = "https://api.nasa.gov/planetary/apod?api_key=#{ENV["NASA_APOD_API_KEY"]}"
    response = Net::HTTP.get(URI(apod_url))
    JSON.parse(response)
  end

  def self.is_video?
    get_apod_info["media_type"].eql?("video")
  end
end