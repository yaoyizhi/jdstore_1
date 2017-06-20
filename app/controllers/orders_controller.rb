class OrdersController < ApplicationController

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    if @order.save
    redirect_to order_path
  end
end
