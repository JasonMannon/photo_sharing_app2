class PhotosController < ApplicationController
  before_filter :authorize, only: [:new, :update]

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
    @user = User.find(@photo.user_id)
    @tags = Tag.all
    @tag = Tag.new

  end

  private
  def photo_params
   params.require(:photo).permit(:image, :user_id, :caption)
  end
end
