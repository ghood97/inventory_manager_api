# frozen_string_literal: true

class ProductsController < OpenReadController
  before_action :set_product, only: %i[show update destroy]

  # GET /products
  def index
    @products = Product.all

    if params.key?(:name)
      results = @products.filter { |x| x.name.downcase.include? params[:name].downcase }
      if results.any?
        render json: results
      else
        render json: {}
      end
    else
      render json: @products
    end
  end

  # GET /products/1
  def show
    render json: @product
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def product_params
    params.require(:product).permit(:name, :retail_price)
  end
end
