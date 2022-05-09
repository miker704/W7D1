class CatRentalRequestsController < ApplicationController
  
  before_action :check_cat, only: [:edit, :update, :approve, :deny]

  def check_cat
    if !current_user.cats.where('id = (?)', current_cat.id).exists?
          redirect_to cats_url
    end
  end
  
  def approve
    current_cat_rental_request.approve!
    redirect_to cat_url(current_cat)
  end

  def create
    @rental_request = CatRentalRequest.new(cat_rental_request_params)
    if @rental_request.save
      redirect_to cat_url(@rental_request.cat)
    else
      flash.now[:errors] = @rental_request.errors.full_messages
      render :new
    end
  end

  def deny
    current_cat_rental_request.deny!
    redirect_to cat_url(current_cat)
  end

  def new
    @rental_request = CatRentalRequest.new
    #render :new
  end

  private

  def current_cat_rental_request
    @rental_request ||= CatRentalRequest.find(params[:id])
  end

  def current_cat
    current_cat_rental_request.cat
  end

  def cat_rental_request_params
    params.require(:cat_rental_request).permit(:cat_id, :end_date, :start_date, :status, :requester_id)
  end
end
