class ApodController < ApplicationController
  def index
    @apod_info = Apod.get_apod_info
    @media_is_video = Apod.is_video?
  end
end
