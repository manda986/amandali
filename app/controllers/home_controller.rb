class HomeController < ApplicationController
  def index
  end

  def contact_submit
    ContactMailer.contact_email(params).deliver
    flash[:notice] = "Thanks for your email!"
    redirect_to action: index
  end
end
