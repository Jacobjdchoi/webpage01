class ContactsController < ApplicationController
  # GET /contacts/new
  def new
    @contact = Contact.new
  end


  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
        flash.now[:notice] = "Your message was successfully sent!"
    else
        flash.now[:error] = 'Cannot send message'
        render :new
    end
  end
    # respond_to do |format|
    #   if @contact.save
    #     format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
    #     format.json { render :show, status: :created, location: @contact }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @contact.errors, status: :unprocessable_entity }
    #   end
    # end
    
end
