class ContactsController < ApplicationController
  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    #@contact.request = request
    if @contact.save
      render 'contacts/saved'
      ContactMailer.contact_created(@contact).deliver_now
    else
      flash.now[:notice] = 'Cannot send message'
      render :new
    end
  end

private
  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :company, :body)
  end
end
