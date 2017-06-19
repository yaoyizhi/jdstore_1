class CartsController < ApplicationController
    def clean
        @cart = current_cart
        @cart.clean!
        redirect_to carts_path
    end
end
