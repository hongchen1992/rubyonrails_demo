class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.order(:title)
    if session[:conter].nil?
      @conter = 0
      session[:conter] = @conter
    end
    @conter = session[:conter]
    @conter += 1
    session[:conter] = @conter
  end
end
