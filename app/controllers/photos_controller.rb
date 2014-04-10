class PhotosController < ApplicationController
  before_filter :authorize, only: [:edit, :update]

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(photo_params)
    if @photo.save
      redirect_to root_url, notice: "Photo added"
    else
      render "new"
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

  private
  def photo_params
   params.require(:photo).permit(:image, :user_id)
  end
end
