class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def create
    @tag = Tag.new(tag_params)
    params[:tag][:user_id].each do |user_id|
      if user_id != ''
        @tag = Tag.create(:user_id => user_id)
      end
    end
    if @tag.save
      redirect_to root_url, notice: "User has been tagged"
    else
      redirect_to root_url
    end
  end

  private
  def tag_params
    params.require(:tag).permit(:user_id)
  end


end
