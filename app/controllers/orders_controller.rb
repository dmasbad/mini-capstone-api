class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    order = Order.new(
    user_id: params[:user_id]
    product_id: params[:product_id]
    quantity: params[:quantity]
    subtotal: params[:subtotal]
    tax: params[:tax]
    total: params[:total]
    )
  end
  
end
