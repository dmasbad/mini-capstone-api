class ProductsController < ApplicationController
  def index
    @products = Product.all
    render template: "products/index"
  end

  def show
    params[:id]
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
  end

  def create
    @product = Product.new(name: "pencil sharpener", price: 6, description: "long-point")
    @product.save
    render template: "products/show"
  end
end
