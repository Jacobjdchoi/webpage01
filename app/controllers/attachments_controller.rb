class AttachmentsController < ApplicationController
  before_action :set_attachment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!

  def show
  end
  def index
    @attachments = Attachment.all.order(updated_at: :desc)
  end
  def new
    @attachment = Attachment.new
  end
  def create
    @attachment = Attachment.new(attachment_params)
    if @attachment.save
      redirect_to action: :index
    end
  end
  def edit
  end
  def update
    if @attachment.update(attachment_params)
      redirect_to action: :index
    end
  end
  def destroy
    if @attachment.destroy
      redirect_to action: :index
    end
  end
private
  def attachment_params
    params.require(:attachment).permit(:file_path)
  end
  def set_attachment
    @attachment = Attachment.find(params[:id])
  end
end
