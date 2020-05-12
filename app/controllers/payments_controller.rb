class PaymentsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:new]



  def index

    @payments_count = Payment.count

  end


  def new
  end

  def create

    if user_signed_in?

      @p = Payment.new


      @p.user_id = current_user.id
      @p.tax = params[:tax].round
      @p.revenue = params[:revenue]
      @p.taxes_system = params[:taxes_system]

      @p.save

      render "new"

    end



  end


end
