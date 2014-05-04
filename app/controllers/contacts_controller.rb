class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      @success = 'Thank you for your message. I will contact you soon!'
    else
      @error = "Could not send message. Make sure all fields are filled out :)"
    end
  end
end