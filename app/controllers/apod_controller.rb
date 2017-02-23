class ApodController < ApplicationController
  def index
    @apod_info = Apod.get_apod_info
    @media_type_is_video = @apod_info["media_type"].eql?("video")
  end
end
