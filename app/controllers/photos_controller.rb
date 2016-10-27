class PhotosController < ApplicationController
  before_action :set_photo, only: [:update]

  def update
    if @photo.update(photo_params)
      puts "update method in action!!!!"
      respond_to do |format|
        format.js
      end
    end
  end

private
  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:pics, :crop_x, :crop_y, :crop_w, :crop_h)
  end

end
