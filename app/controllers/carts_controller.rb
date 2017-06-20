class CartsController < ApplicationController
    def clean
        @cart = current_cart
        @cart.clean!
        redirect_to carts_path
    end

    def checkout
        @order = Order.new
    end
end
