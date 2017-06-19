class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end

    def add_to_cart
        @product = Product.find(params[:id])
        if !current_cart.products.include?(@product)
            current_cart.add_product_to_cart(@product)
            redirect_to :back
            flash[:notice] = '商品已加入购物车！'
        else
            flash[:warning] = '你的购物车已有此商品'
      end
    end
end
