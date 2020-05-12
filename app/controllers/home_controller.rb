class HomeController < ApplicationController

  skip_before_action :authenticate_user!, only: [:about_us, :contacts]

  def about_us
  end

  def  contacts
  end


end
