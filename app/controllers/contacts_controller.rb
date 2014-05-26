class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Vielen Dank für die Nachricht!'
    else
      flash.now[:error] = 'Es müssen alle Felder ausgefüllt werden!'
      render :new
    end
  end
end