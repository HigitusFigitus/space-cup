class Apod < ApplicationRecord
  def get_apod_info
    apod_url = "https://api.nasa.gov/planetary/apod?api_key=#{ENV['NASA_API_KEY']}"
    response = Net::HTTP.get(URI(apod_url))
    JSON.parse(response)
  end
end