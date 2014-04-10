class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new

  def create
    @photo = Photo.create(photo_params)
    if @photo.save
      redirect_to root_url, notice: "Photo added"
    else
      render "new"
    end
  end

  end

  private
  def photo_params
   params.require(:photo).permit(:image)
  end
end
