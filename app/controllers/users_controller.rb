class UsersController < ApplicationController
  
  before_filter :authenticate_user!
  
  def dashboard
    @user = current_user
    @userProducts = @user.products
    @products = Product.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end
  
end